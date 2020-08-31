# Spacemacs

[Clojure/Cider](SPACEMACS-CLOJURE.MD)

## Editor
| Keybinding	| Function |
|---|---|
|SPACE q q|Quit|
|SPACE z x|Increase/decrease font size|
|SPC h SPC|Lists all layers |
|SPC ?|Lists all keybindings|
|SPC '| Terminal|

## Projects
| Keybinding	| Function |
|---|---|
|SPC p f|open a file in the current project|
|SPC p b|open buffers for the current project|
|SPC p a|toggles between the test and code files in your project|
|SPC p %|starts projectile-grep search|

## Files
| Keybinding	| Function |
|---|---|
|SPACE f f|Open a file   |
|SPC f r| Opens a buffer to search through recently opened files|
|SPACE f s|Save a file   |
|SPACE f f <file path>| Create a file   |
|SPACE p f|Find a file in your project   |
|SPACE f e d|Edit the .spacemacs config file   |
|SPC h SPC|helm documentation and layer guides|
|SPC h d f|helm functions |
|SPC h d k|helm keybindings |

![.files](https://practicalli.github.io/spacemacs/images/emacs-terminology-structure.png)

|Terminology	|Description|
|---|---|
|File|A file on the file system|
|Buffer|A container to display a file or other information|
|Window|Contains a buffer, allowing you to organise multiple buffers in a frame|
|Frame|Holds one or more windows. Opening another frame gives you another instance of Emacs|
|Status|Information about current window and buffer, e.g. window number, buffer mode & name, location of cursor|
|Minibuffer|A command line for Emacs - shows commands and some results|

### Buffers
| Keybinding	| Function |
|---|---|
|SPC b b <buffer-name>	|Create a buffer named <buffer-name>.
|SPC b b|Search through open buffers and recent files.
|SPC b n|Switch to the next buffer. (See Special buffers)
|SPC b p|Switch to the previous buffer. (See Special buffers)
|SPC b d|Kill current buffer.
|SPC b C-d|Kill buffers using a regular expression.
|SPC b m|Kill all buffers except the current buffer.
|SPC b .|Buffer transient-state.

### Windows

| Keybinding	| Function |
|---|---|
|SPC 1 | Switches to 1st window, works for any number | 
|SPC w v| Opens a vertical split on the right|
|SPC w s| Opens a horizontal split below|
|SPC w h/j/k/l	|Navigate among windows|
|SPC w H/J/K/L	|Move the current window|
|SPC w .|Open Window transient state menu for multiple command|
|SPC w 2|2 window layout - shows current buffer in new window|
|SPC w 3|3 window layout - shows current buffer in new windows|
|SPC w m|maximise the current buffer|
|SPC w d|delete current window|

## Vim

![.files](https://practicalli.github.io/spacemacs/images/spacemacs-states-vim.png)

[Migrating from Vim](https://www.spacemacs.org/doc/VIMUSERS.html)

* normal - for manipulating and navigating existing text
* insert - for writing new text
* visual - for selecting blocks of text
* iedit - edit multiple regions (i.e. multiple cursors)
* lisp - structural editing for Clojure & Lisp style languages (e.g. slurp, barf)

### Find Text
|Function | Keybinding	| 
|---|---|
|Find text in buffer |  /  (type search text, press ENTER, followed by n or N (next/previous))|
|Find next instance of a word that your cursor is over   | * |
|Find previous instance of a word that your cursor is over  |  # |
|Turn off previous search highlighting   |:nohl  (then press ENTER) |
|Find text in project   |SPACE / |
|Find text under cursor in project (or selected with visual-mode)   SPACE *|
|Resume last search   |SPACE s l |
|Find and replace text in buffer, from current line  | :.,$s/<find text>/<replace text>/gc |

[Others](https://simpletutorials.com/c/3036/Spacemacs)

## Themes

| Keybinding	| Function |
|---|---|
|SPC T n	|Next theme in list|
|SPC T p	|Previous theme in list|
|SPC T s	|Select theme from list (all themes from gallery)|

## Ranger
| Keybinding	| Function |
|---|---|
|SPC a r	|Open ranger in current buffer directory|
|q|	Quit ranger|
|j|	Move down the current list / preview screen|
|k|	Move up the current list / preview screen|
|l|	Jump into currently selected child directory / or open previewed file|
|h|	Up to the parent directory|
|r|	revert buffer|
|R|	rename current file or directory|
|D|	delete ...|
|yy|	copy|
|pp|	paste|
|f|	search for file names|
|i|	toggle showing literal / full-text previews|
|zh|	toggle dot files|
|o|	sort options|
|H|	search through history|
|z- or z+|	reduce / increase parents|
|C-SPC|	mark a file or directory|
|v|	toggle mark|
|V|	visually select lines|
|;C|	copy / move directory|
|;+|	create directory|

## Others

| Keybinding	| Function |
|---|---|
|SPC t n	|Toggle line numbers|
|SPC t r	|Toggle relative line numbers|
|SPC m T s |Enable evil safe structural editing for the current buffer|
|SPC g s |opens Magit status for the Spacemacs project|



