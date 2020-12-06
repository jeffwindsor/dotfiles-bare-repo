#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "jeff.windsor@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa