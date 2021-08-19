/* See LICENSE file for copyright and license details. */
/* Archcraft DWM */

/* appearance */
static const unsigned int borderpx  = 4;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int user_bh            = 34;       /* 0 means that dwm will calculate bar height, >= 1 means dwm will user_bh as bar height */
static const char *fonts[]          = { "Iosevka:size=12" };
static const char dmenufont[]       = "Iosevka:size=12";
static const char col_fg_n[]       	= "#A6BCAA";
static const char col_fg_s[]       	= "#FFFFFF";
static const char col_bg_n[]       	= "#0D0E0D";
static const char col_bg_s[]       	= "#3A654D";
static const char col_bd_n[]        = "#0D0E0D";
static const char col_bd_s[]        = "#5A843E";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_fg_n, col_bg_n, col_bd_n },
	[SchemeSel]  = { col_fg_s, col_bg_s, col_bd_s },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 8,       1,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[ TILE ]",      tile },    /* first entry is default */
	{ "[ FLOAT ]",     NULL },    /* no layout function means floating behavior */
	{ "[ MONOCLE ]",   monocle },
};

/* key definitions */
#define MODKEY Mod4Mask				/* Use Super/Windows as Mod key */
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *stcmd[]  = { "st", NULL };
static const char *dmenucmd[] = { "/usr/share/archcraft-dwm/bin/dwm-menu", NULL };
static const char *termcmd[]  = { "/usr/share/archcraft-dwm/bin/dwm-terminal", NULL };
static const char *fmcmd[]    = { "/usr/share/archcraft-dwm/bin/dwm-file-manager", NULL };
static const char *editcmd[]  = { "/usr/share/archcraft-dwm/bin/dwm-text-editor", NULL };
static const char *lockcmd[]  = { "/usr/share/archcraft-dwm/bin/dwm-lock", NULL };
static const char *nmcmd[]    = { "/usr/share/archcraft-dwm/bin/dwm-networks", NULL };
static const char *powrcmd[]  = { "/usr/share/archcraft-dwm/bin/dwm-powermenu", NULL };

/* Hardware keys for volume and brightness */
static const char *mutevol[] = { "/usr/bin/pactl", "set-sink-mute",   "0", "toggle",  NULL };
static const char *upvol[]   = { "/usr/local/bin/volume-up",     NULL };
static const char *downvol[] = { "/usr/local/bin/volume-down",     NULL };
static const char *upbl[] = { "/usr/local/bin/backlight-up",     NULL };
static const char *downbl[] = { "/usr/local/bin/backlight-down",     NULL };

#include "selfrestart.c"
#include <X11/XF86keysym.h>

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY,			            XK_Return, spawn,          {.v = stcmd } },
	{ MODKEY,			            XK_n, 	   spawn,          {.v = nmcmd } },
	{ MODKEY,			            XK_x, 	   spawn,          {.v = powrcmd } },
	{ MODKEY|ShiftMask,			    XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY|ShiftMask,			    XK_f, 	   spawn,          {.v = fmcmd } },
	{ MODKEY|ShiftMask,			    XK_e, 	   spawn,          {.v = editcmd } },
	{ MODKEY|ShiftMask,			    XK_l,      spawn,          {.v = lockcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,             			XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
    { MODKEY|ShiftMask,             XK_r,      self_restart,   {0} },
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
	{ 0,                       		XF86XK_AudioMute, spawn, {.v = mutevol } },
	{ 0,                       		XF86XK_AudioLowerVolume, spawn, {.v = downvol } },
	{ 0,                       		XF86XK_AudioRaiseVolume, spawn, {.v = upvol   } },
	{ 0,                       		XF86XK_MonBrightnessUp, spawn, {.v = upbl   } },
	{ 0,                       		XF86XK_MonBrightnessDown, spawn, {.v = downbl   } },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY|ShiftMask,         Button1,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

