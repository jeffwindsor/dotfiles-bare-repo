import System.IO
import System.Exit

import XMonad.Util.SpawnOnce

import Control.Monad (liftM2)
import Graphics.X11.ExtraTypes.XF86
import XMonad
import XMonad.Actions.CycleWS
import XMonad.Actions.SpawnOn
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers(doFullFloat, doCenterFloat, isFullscreen, isDialog)
import XMonad.Hooks.SetWMName
import XMonad.Hooks.UrgencyHook
import XMonad.Layout.CenteredMaster(centerMaster)
import XMonad.Layout.Cross(simpleCross)
import XMonad.Layout.Fullscreen (fullscreenFull)
import XMonad.Layout.Gaps
import XMonad.Layout.IndependentScreens
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.ResizableTile
import XMonad.Layout.Spacing
import XMonad.Layout.Spiral(spiral)
import XMonad.Layout.ThreeColumns
import XMonad.Util.EZConfig (additionalKeys, additionalMouseBindings)
import XMonad.Util.Run(spawnPipe)
import qualified Codec.Binary.UTF8.String as UTF8
import qualified DBus as D
import qualified DBus.Client as D
import qualified Data.ByteString as B
import qualified Data.Map as M
import qualified XMonad.StackSet as W

alt = mod1Mask
super = mod4Mask
control = controlMask
shift = shiftMask

superAlt = super .|. alt
superAltControl = super .|. alt .|. control
superControl = super .|. control
superShift = super .|. shift
controlAlt = control .|. alt
controlShift = control .|. shift

normBord = "#4c566a"
focdBord = "#5e81ac"
fore     = "#DEE3E0"
back     = "#282c34"
winType  = "#c678dd"

encodeCChar = map fromIntegral . B.unpack
myFocusFollowsMouse = True
myBorderWidth = 2
myWorkspaces    = ["1","2","3","4","5","6","7","8","9","10"]
myBaseConfig = desktopConfig

-- window manipulations
myManageHook = composeAll . concat $
    [ [isDialog --> doCenterFloat]
    , [className =? c --> doCenterFloat | c <- myCFloats]
    , [title =? t --> doFloat | t <- myTFloats]
    , [resource =? r --> doFloat | r <- myRFloats]
    , [resource =? i --> doIgnore | i <- myIgnores]
    ]
    where
    myCFloats = ["Arandr", "Arcolinux-calamares-tool.py", "Arcolinux-tweak-tool.py", "Arcolinux-welcome-app.py", "Galculator", "feh", "mpv", "Xfce4-terminal"]
    myTFloats = ["Downloads", "Save As..."]
    myRFloats = []
    myIgnores = ["desktop_window"]

myLayout = spacingRaw True (Border 0 5 5 5) True (Border 5 5 5 5) True 
            $ avoidStruts 
            $ mkToggle (NBFULL ?? NOBORDERS ?? EOT) 
            $ tiled ||| Mirror tiled ||| spiral (6/7)  ||| ThreeColMid 1 (3/100) (1/2) ||| Full
    where
        tiled = Tall nmaster delta tiled_ratio
        nmaster = 1
        delta = 3/100
        tiled_ratio = 1/2

myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
  [ 
  --------------------------------------------------------------------
  --  APPLICATIONS
    ((super, xK_Escape),  spawn $ "xkill")
  , ((super, xK_Return),  spawn $ "alacritty")               --terminal
  , ((superShift, xK_Return), spawn $ "thunar")               --file manager
  , ((super, xK_b),       spawn $ "firefox")                 --browser
  , ((super, xK_q),       kill)
  , ((super, xK_s),       spawn $ "pavucontrol")             --volume control
  , ((super, xK_t),       spawn $ "alacritty -e htop")       --task manager
  , ((super, xK_v),       spawn $ "alacritty -e nvim")       --task manager
  , ((super, xK_x),       spawn $ "arcolinux-logout")        --logout
  --, ((super, xK_y),     spawn $ "polybar-msg cmd toggle")
  , ((superShift , xK_r), spawn $ "xmonad --recompile && xmonad --restart")
  , ((superShift , xK_p), spawn $ "$HOME/.xmonad/polybar/launch.sh")
  --------------------------------------------------------------------
  --  LAUNCHERS
  , ((super, xK_space),       spawn $ "rofi -show run")
  , ((superAlt, xK_space),       spawn $ "rofi -show window")
  --, ((superControl, xK_space),spawn $ "rofi-theme-selectoro)
  --------------------------------------------------------------------
  --  LAYOUT
  , ((super, xK_f),         sendMessage $ Toggle NBFULL)
  , ((super, xK_Up),        sendMessage NextLayout)
  , ((super, xK_Down),      sendMessage NextLayout)
  , ((super, xK_Left),      prevWS)
  , ((super, xK_Right),     nextWS)
  , ((super, xK_j),         windows W.focusDown)
  , ((super, xK_k),         windows W.focusUp)
  , ((super, xK_h),         sendMessage Shrink)
  , ((super, xK_l),         sendMessage Expand)
  , ((superControl, xK_j),  windows W.swapDown)
  , ((superControl, xK_k),  windows W.swapUp)
  , ((superControl, xK_h),  sendMessage (IncMasterN 1))
  , ((superControl, xK_l),  sendMessage (IncMasterN (-1)))
  --------------------------------------------------------------------
  --  WALLPAPERS
  , ((alt, xK_t),           spawn $ "variety -t")
  , ((alt, xK_Left),        spawn $ "variety -p")
  , ((alt, xK_Right),       spawn $ "variety -n")
  --------------------------------------------------------------------
  --MULTIMEDIA KEYS
  -- Mute volume
  , ((0, xF86XK_AudioMute), spawn $ "amixer -q set Master toggle")
  -- Decrease volume
  , ((0, xF86XK_AudioLowerVolume), spawn $ "amixer -q set Master 5%-")
  -- Increase volume
  , ((0, xF86XK_AudioRaiseVolume), spawn $ "amixer -q set Master 5%+")
  -- Increase brightness
  , ((0, xF86XK_MonBrightnessUp),  spawn $ "xbacklight -inc 5")
  -- Decrease brightness
  , ((0, xF86XK_MonBrightnessDown), spawn $ "xbacklight -dec 5")
  , ((0, xF86XK_AudioPlay), spawn $ "playerctl play-pause")
  , ((0, xF86XK_AudioNext), spawn $ "playerctl next")
  , ((0, xF86XK_AudioPrev), spawn $ "playerctl previous")
  , ((0, xF86XK_AudioStop), spawn $ "playerctl stop")
  ]
  ++

  -- mod-[1..9], Switch to workspace N
  -- mod-control-[1..9], Move client to workspace N
  [((m .|. super, k), windows $ f i)
   | (i, k) <- zip (XMonad.workspaces conf) [xK_1,xK_2,xK_3,xK_4,xK_5,xK_6,xK_7,xK_8,xK_9,xK_0]
      , (f, m) <- [(W.greedyView, 0), (W.shift, control)
      , (\i -> W.greedyView i . W.shift i, control)]]

  ++
  -- ctrl-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
  -- ctrl-shift-{w,e,r}, Move client to screen 1, 2, or 3
  [((m .|. super, key), screenWorkspace sc >>= flip whenJust (windows . f))
      | (key, sc) <- zip [xK_w, xK_e] [0..]
      , (f, m) <- [(W.view, 0), (W.shift, shift)]]

myStartupHook :: X()
myStartupHook = do
    spawn "$HOME/.xmonad/scripts/autostart.sh"
    setWMName "LG3D"

main :: IO ()
main = do
    dbus <- D.connectSession

    -- Request access to the DBus name
    D.requestName dbus (D.busName_ "org.xmonad.Log")
        [D.nameAllowReplacement, D.nameReplaceExisting, D.nameDoNotQueue]

    xmonad . ewmh $ myBaseConfig 
        {
              borderWidth        = myBorderWidth
            , focusFollowsMouse  = myFocusFollowsMouse
            , focusedBorderColor = focdBord
            , handleEventHook    = handleEventHook myBaseConfig <+> fullscreenEventHook
            , keys               = myKeys
            , layoutHook         = gaps [(U,35), (D,5), (R,5), (L,5)] $ myLayout ||| layoutHook myBaseConfig
            , manageHook         = manageSpawn <+> myManageHook <+> manageHook myBaseConfig
            , normalBorderColor  = normBord
            , workspaces         = myWorkspaces
            , startupHook        = myStartupHook
        }
