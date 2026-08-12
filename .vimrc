"Don't try to be vi compatible
set nocompatible

"syntax highlighting on
syntax enable
filetype plugin on
"encoding, line numbers, tab width, auto indentation, etc
set number
set autoindent
set tabstop=7
set encoding=utf-8
set showtabline=2
set showcmd

""""""""""""""FILE TEMPLATES""""""""""""""""""'"
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
nnoremap ,c :-1read $HOME/.vim/.skeleton.c<CR>$A
nnoremap ,asm :-1read $HOME/.vim/.skeleton.asm<CR>
nnoremap ,f95 :-1read $HOME/.vim/.skeleton.f95<CR>A

""""""""""""FUZZY FILE FIND""""""""""""""""""""""
"Fuzzy file find (search into subfolders; provides tab-completion for all
"file-related tasks).
"hit tab to :find by partial match
"Use * to make the search fuzzy
set path+=**
"displays all matching files when we tab-complete
set wildmenu

"Create tags file
"To jump to tags: ^]
"Use g^] for ambiguous tags
"Use ^t to jump back to the previous tag
command! MakeTags !ctags -R

"""""""""""AUTOCOMPLETION""""""""""
"^x^n for JUST this file
"^x^f for filenames
"^x^j for tags only
"^n for anything specified by the 'complete' option
"Use ^n and ^p to go forward/backwards in the list, respectively.

""""""""""""FILE BROWSWING"""""""""""""""""""
":edit a folder to open a file browser
"<CR>/v/t to open in an h-split/v-split/tab
"Check |netrw-browse-maps| for more mappings
let g:netrw_banner=0 "disable annoying banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "Open splits to the right
let g:netrw_liststyle=3 "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"Set leader key
let mapleader = "\\"

"Disable arrow keys in all modes
no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>

"Quick Pairs -- Convenience Functions
"imap <leader>' ''<ESC>i
"imap <leader>" ""<ESC>i
"imap <leader>( ()<ESC>i
"imap <leader>[ []<ESC>i
"imap <leader>{ {}<ESC>i

"Abbreviation
iabbr flase false 
iabbr ture true


""""""""""""""""COLORSCHEMES""""""""""""""""""""""""
"colorscheme onedark
"colorscheme jellybeans
"colorscheme deus
