" =================begin vim plugin=================

call plug#begin('~/Appdata/Local/nvim/plugged')
" theme plugin
Plug 'vis'
Plug 'mhartington/oceanic-next'

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

" nerd tree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p

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


