# Vim

`{number}{operator}{text objects or motion}`

Various Motions, Editing, Searches. Marks, Tags, Jumplist + Changelist


Reference: http://vimdoc.sourceforge.net/htmldoc/quickref.html#quickref

## Essential Modes

| Mode | Key |
|---|---|
| Normal | Esc |
| Insert | i (insert), a (append), c (change) |
| Visual | v (char), Shift + v (line), Ctrl + v (block)|
| Command | :, / |

## Grammar

|Operator|Action|
|---|---|
|c|change|
|d|delete|
|y|yank into register (does not change the text)|
|~|swap case (only if 'tildeop' is set)|
|g~|swap case|
|gu|make lowercase|
|gU|make uppercase|
|!|filter through an external program|
|=|filter through 'equalprg' or C-indenting if empty|
|gq|text formatting|
|g?|ROT13 encoding|
|>|shift right|
|<|shift left|
|zf|define a fold|
|g@|call function set with the 'operatorfunc' option|

|Text Object|Description|
|---|---|
|aw | Select "a word"|
|iw | Select "inner word"|
|aW | Select "a |WORD|"|
|iW | Select "inner |WORD|"|
|as | Select "a sentence"|
|is | Select "inner sentence"|
|ap | Select "a paragraph"|
|ip | Select "inner paragraph"|
|ab | Select "a block" (from "[(" to "])")|
|ib | Select "inner block" (from "[(" to "])")|
|aB | Select "a Block" (from "[{" to "]}")|
|iB | Select "inner Block" (from "[{" to "]}")|
|a> | Select "a <> block"|
|i> | Select "inner <> block"|
|at | Select "a tag block" (from <aaa> to </aaa>)|
|it | Select "inner tag block" (from <aaa> to </aaa>)|
|a' | Select "a single quoted string"|
|i' | Select "inner single quoted string"|
|a" | Select "a double quoted string"|
|i" | Select "inner double quoted string"|
|a` | Select "a backward quoted string"|
|i` | Select "inner backward quoted string"
|aw | Select "a word"|
|iw | Select "inner word"|
|aW | Select "a |WORD|"|
|iW | Select "inner |WORD|"|
|as | Select "a sentence"|
|is | Select "inner sentence"|
|ap | Select "a paragraph"|
|ip | Select "inner paragraph"|
|ab | Select "a block" (from "[(" to "])")|
|ib | Select "inner block" (from "[(" to "])")|
|aB | Select "a Block" (from "[{" to "]}")|
|iB | Select "inner Block" (from "[{" to "]}")|
|a> | Select "a <> block"|
|i> | Select "inner <> block"|
|at | Select "a tag block" (from <aaa> to </aaa>)|
|it | Select "inner tag block" (from <aaa> to </aaa>)|
|a' | Select "a single quoted string"|
|i' | Select "inner single quoted string"|
|a" | Select "a double quoted string"|
|i" | Select "inner double quoted string"|
|a` | Select "a backward quoted string"|
|i` | Select "inner backward quoted string"|

|Motion|Description|
|---|---|
| h |left (also: CTRL-H, <BS>, or <Left> key)
| l |right (also: <Space> or <Right> key)
| 0 |to first character in the line (also: <Home> key)
| ^ |to first non-blank character in the line
| $ |to the last character in the line (N-1 lines lower)(also: <End> key)
| g0| to first character in screen line (differs from "0" when lines wrap)
| g^| to first non-blank character in screen line (differs from "^" when lines wrap)
| g$| to last character in screen line (differs from "$"when lines wrap)
| gm| to middle of the screen line to column N (default: 1)
| f{char}| to the Nth occurrence of {char} to the right
| F{char}| to the Nth occurrence of {char} to the left
| t{char}| till before the Nth occurrence of {char} to the right
| T{char}| till before the Nth occurrence of {char} to the left
| ; |repeat the last "f", "F", "t", or "T" N times
| , |repeat the last "f", "F", "t", or "T" N times in opposite direction
| k |up N lines (also: CTRL-P and <Up>)|
| j |down N lines (also: CTRL-J, CTRL-N, <NL>, and <Down>)|
| - |up N lines, on the first non-blank character|
| + |down N lines, on the first non-blank character (also: CTRL-M and <CR>)|
| _ |down N-1 lines, on the first non-blank character|
| G |goto line N (default: last line), on the first non-blank character|
| gg |goto line N (default: first line), on the first non-blank character|
| N% |oto line N percentage down in the file; N must be given, otherwise it is the % command|
| gk |up N screen lines (differs from "k" when line wraps)|
| gj |down N screen lines (differs from "j" when line wraps)|
| w |N words forward|
| W |N blank-separated |WORD|s forward|
| e |forward to the end of the Nth word|
| E |forward to the end of the Nth blank-separated |WORD||
| b |N words backward|
| B |N blank-separated |WORD|s backward|
| g e|backward to the end of the Nth word|
| g E|backward to the end of the Nth blank-separated WORD|
| ) |N sentences forward|
| ( |N sentences backward|
| } |N paragraphs forward|
| { |N paragraphs backward|
| ]] | N sections forward, at start of section|
| [[ | N sections backward, at start of section|
| ][ | N sections forward, at end of section|
| [] | N sections backward, at end of section|
| [( | N times back to unclosed '('|
| [{ | N times back to unclosed '{'|
| [m | N times back to start of method (for Java)|
| [M | N times back to end of method (for Java)|
| ]) | N times forward to unclosed ')'|
| ]} | N times forward to unclosed '}'|
| ]m | N times forward to start of method (for Java)|
| ]M | N times forward to end of method (for Java)|
| [# | N times back to unclosed "#if" or "#else"|
| ]# | N times forward to unclosed "#else" or "#endif"|
| [* | N times back to start of comment "/*"|
| ]* | N times forward to end of comment "*/"|