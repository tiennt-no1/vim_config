# vim_config

setup some useful plugins for vim

-- note 
paste on vim `ctrl-r + `
indent by > or <
multi cursor by ctrl+V then edit one line and press Esc
:Ag to search all files
use ctrlP to search Full path fuzzy file, buffer, mru, tag
use :! command to run the command
setup ctags first and config ctag for vim
fix indent for file `gg=G` or `:!indent %`
use ctrl-w s/v/... to split and navigate

-- ctrl-p
Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
Check :help ctrlp-commands and :help ctrlp-extensions for other commands.

Once CtrlP is open:
Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
Press <c-f> and <c-b> to cycle between modes.
Press <c-d> to switch to filename only search instead of full path.
Press <c-r> to switch to regexp mode.
Use <c-j>, <c-k> or the arrow keys to navigate the result list.
Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
tabedit % ... tab command
Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
Use <c-y> to create a new file and its parent directories.
Use <c-z> to mark/unmark multiple files and <c-o> to open them.
Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help.

Submit two or more dots .. to go up the directory tree by one or multiple levels.
End the input string with a colon : followed by a command to execute it on the opening file(s):
Use :25 to jump to line 25.
Use :diffthis when opening multiple files to run :diffthis on the first 4 files.

-- fzf
Command	List
:Files [PATH]	Files (runs $FZF_DEFAULT_COMMAND if defined)
:GFiles [OPTS]	Git files (git ls-files)
:GFiles?	Git files (git status)
:Buffers	Open buffers
:Colors	Color schemes
:Ag [PATTERN]	ag search result (ALT-A to select all, ALT-D to deselect all)
:Rg [PATTERN]	rg search result (ALT-A to select all, ALT-D to deselect all)
:Lines [QUERY]	Lines in loaded buffers
:BLines [QUERY]	Lines in the current buffer
:Tags [QUERY]	Tags in the project (ctags -R)
:BTags [QUERY]	Tags in the current buffer
:Marks	Marks
:Windows	Windows
:Locate PATTERN	locate command output
:History	v:oldfiles and open buffers
:History:	Command history
:History/	Search history
:Snippets	Snippets (UltiSnips)
:Commits	Git commits (requires fugitive.vim)
:BCommits	Git commits for the current buffer; visual-select lines to track changes in the range
:Commands	Commands
:Maps	Normal mode mappings
:Helptags	Help tags 1
:Filetypes	File types


