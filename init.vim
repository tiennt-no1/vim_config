" =================begin vim plugin=================

call plug#begin('~/Appdata/Local/nvim/plugged')
" theme plugin
" Plug 'vis'
Plug 'mhartington/oceanic-next'
" commenter
Plug 'preservim/nerdcommenter'

"{{ File browser }}
Plug 'preservim/nerdTree'
" File browser  
Plug 'Xuyuanp/nerdtree-git-plugin'
" Git status
Plug 'ryanoasis/vim-devicons'
" Icon
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"{{ File search }}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Fuzzy finder 
Plug 'junegunn/fzf.vim'

"{{ Status bar }}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"{{ Terminal }}
" Plug 'voldikss/vim-floaterm'
Plug 'gingerhot/conque-term-vim'
"Float terminal
"{{ Code intellisense }}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Language server 
Plug 'jiangmiao/auto-pairs'
" Auto pairs
Plug 'alvan/vim-closetag'

Plug 'mattn/emmet-vim' 				
"{{ Code syntax highlight }}
Plug 'yuezk/vim-js'
" Javascript
Plug 'MaxMEllon/vim-jsx-pretty'
" JSX/React syntax highlight
Plug 'jackguo380/vim-lsp-cxx-highlight'
" C++ syntax highlight

" Vimspector
"{{ Source code version control }}
Plug 'tpope/vim-fugitive'
" Git
" Sync files
Plug 'kenn7/vim-arsync'
" comment
Plug 'tpope/vim-fugitive'
" to use ctags
Plug '/kien/ctrlp.vim'
Plug 'vim-scripts/taglist.vim'

Plug 'preservim/tagbar'


" full screen
Plug 'lambdalisue/vim-fullscreen'
call plug#end()
" =================end vim plugin=================


" plugin config
" theme
syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a 				" Enable mouse
set tabstop=4 				" 
set shiftwidth=4 			" 
set listchars=tab:\|\ 		" Tab charactor 
set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set number 					" Show line number
set ignorecase 				" Enable case-sensitive :
set clipboard=unnamed
let g:python3_host_prog = 'C:\Python39\python'
let g:python_host_prog = 'C:\Python27\python'
set buftype=
tnoremap <Esc> <C-\><C-n>
nnoremap <f2> :let $VIM_DIR=expand('%:p:h')<CR>:cd $VIM_DIR<CR>:terminal<CR>

" nerd tree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" fzf
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

 " [[B]Commits] Customize the options used by 'git log':
 let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


" ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" full screen
" In ginit.vim
let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"

" tagbar -----
nmap <F8> :TagbarToggle<CR>

"--------commentor--------
"" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
" nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>
