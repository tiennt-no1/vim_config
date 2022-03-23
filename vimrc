  1 syntax on
2   colorscheme darkblue
  1 set tabstop=4
  2 set autoindent
  3 set wildmenu
  4 set wildmode=list:full
  5 set wildignorecase
  6 set ignorecase
  7 set number
  8 set relativenumber
  9 nnoremap / /\c
 10 set wrap linebreak
 11
 12 call plug#begin()
 13 Plug 'preservim/NERDTree'
 14 Plug 'morhetz/gruvbox'
 15 Plug 'kien/ctrlp.vim'
 16 call plug#end()
 17
 18 set runtimepath^=$HOME/vimfiles/bundle/ctrlp.vim
 19 autocmd vimenter * ++nested colorscheme gruvbox
 20 let g:ctrlp_map = '<c-p>'
 21 let g:ctrlp_cmd = 'CtrlP'
 22
 23 let g:ctrlp_working_path_mode = 'ra'
 24 set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
 25 let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
 26 let g:ctrlp_custom_ignore = {
 27           \ 'dir':  '\v[\/]\.?(git|hg|svn|node_modules)$',
 28   \ 'file': '\v\.(exe|so|dll)$',
 29   \ 'link': 'some_bad_symbolic_links',
 30   \ }
 31 let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
 32 silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
 33 autocmd FileType apache setlocal commentstring=#\ %s
~
