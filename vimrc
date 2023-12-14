" VIMRC DEAR FUCK Windows Version
" by Lilli Long
" maybe she won't lose this one....

" SETUP {{{
" Set up Vundle by cloning the repo
 " git clone https://github.com/VundleVim/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim
 " then run:
 " :VundleInstall 
 " in the vim command line
set nocompatible              " be iMproved, required{{{
filetype off                  " required
set number
syntax on
set cursorline
" set the runtime path to include Vundle and initialize
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
" PLUGINS LIST{{{
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'preservim/nerdcommenter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'Taverius/vim-colorscheme-manager'
Plugin 'biskark/vim-ultimate-colorscheme-utility'
Plugin 'tpope/vim-fugitive'
Plugin 'NLKNguyen/papercolor-theme.git'
" All of your Plugins must be added before the following line}}}
call vundle#end()            " required{{{
filetype plugin indent on    " required}}}
" /*}}}*/
" WHITESPACE{{{

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set tw=80 "}}}
" FOLDS{{{
set foldmethod=marker

"}}}
" AUTOCOMPLETE IN CL{{{
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.xlsx

"}}}
" KEY MAPPING {{{
let mapleader=";"
inoremap jj <esc>
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <leader><Space> zf
vnoremap <Space> zf
noremap ww <esc>:w<CR>
noremap qq <esc>:wq!<CR>
inoremap <Tab><Tab> <C-n>

"/*}}}*/
" NO SOUNDS {{{ 

set noerrorbells
set belloff=all
" set visualbell
"/ *}}}*/
"  NERD COMMENTER{{{  

" Create default mappings
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
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"}}}
" COLORSCHEME{{{
set background=dark

colorscheme PaperColor

" F9 adds to blacklist
" F8/<shift>F8 navigates global list 

" let g:ulti_color_always_random = 1 " colorscheme is randomly chosen from favs
let g:ulti_color_Add_Fav = '<F7>'
let g:ulti_color_Remove_Fav = '<F6>'
let g:ulti_color_Next_Global_Fav = '<F5>'
let g:ulti_color_Prev_Global_Fav = '<F4>'
" }}}

