# Spacemacs Clojure (Cider)

[Spacemacs](SPACEMACS.MD)

## Docs
| Keybinding	| Function |
|---|---|
|SPC m h h|clojure docs for symbol under cursor|
|SPC m h c|clojure cheatsheet|

## Repl

| Keybinding	| Function |
|---|---|
|, s a| switch to repl|
|, s q r|restart repl|
|, e f|Evaluate the current expression and print the result|
|, e b|Evaluate all the code in the current buffer|
|, e p|Pretty print result of the top-level expression in a new buffer|
|, e r|Evaluate code within the highlighted region|
|, T e|Toggle Enlighten mode, showing intermediate values|

## Code Editing

| Keybinding	| Function |
|---|---|
|SPC j j|Jump to given character(s) in any window of current frame - more characters narrow matches|
|SPC j C|Jump to first unbalanced parens|
|SPC j c|Jump to last change|
|SPC z .|folding transient state|
|SPC k d s|delete symbol|
|SPC k d x|delete s-expression|
|SPC s s|execute helm-swoop|
|SPC s p|search project|

## Tests
| Keybinding	| Function |
|---|---|
|, T t|auto run namepsace tests on buffer load|
|SPC m t g|run tests: at point|
|SPC m t n|run tests: namespace|
|SPC m t p|run tests: project|
|SPC m t a|run tests: all|
|SPC m t r|run tests: rerun failed|
