#!/usr/bin/env bash

function route_info {
    route get "$1" | awk '/(route to:|gateway:|interface:)/{print}'
}
set -euo pipefail
if (( EUID != 0 )); then
    echo "Please, run this command with sudo" 1>&2
    exit 1
fi

wireless_interface=en0
vpn_interface=gpd0
wireless_gateway=$(netstat -nrf inet | grep default | grep $wireless_interface | awk '{print $2}')


echo "Removing default route for wireless interface $wireless_interface"
route -n delete default -ifscope "${wireless_interface}"
echo "Removing default route for vpn interface $vpn_interface"
route -n delete -net default -interface "${vpn_interface}"

echo "Restoring default wireless gateway"
route -n add -net default "${wireless_gateway}"
echo "Adding gateway for 10.0.0.0/8 addresses"
route -n add -net 10.0.0.0/8 -interface "${vpn_interface}"

echo "Confirming routes:"
echo "Route to shopcart:"
route_info db104.sj2.cj.com


echo "Route to stackoverflow.com:"
route_info stackoverflow.com

###
# based much on this blog post: https://www.shadabahmed.com/blog/2013/08/11/split-tunneling-vpn-routing-table
# subnets and interfaces changed for CJ's address space and the Global Protect VPN interface