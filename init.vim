" Set runtime path.
set rtp+=~/.config/nvim/bundle/Vundle.vim " Vundle package manager. 
set rtp+=/usr/local/opt/fzf " fzf fuzzy finder.

" All plugins must be between vundle#begin() and vundle#end()
" The argument here is the directory where Vundle will install packages.
call vundle#begin('~/.local/share/nvim/site/pack')

Plugin 'VundleVim/Vundle.vim'
Plugin 'autozimu/LanguageClient-neovim'
" Color schemes.
Plugin 'hzchirs/vim-material'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()
filetype plugin indent on

" LanguageClient config.
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'lua': ['lua-lsp'],
    \ }

let g:LanguageClient_autoStart = 1

" Rust language support.
let g:rustfmt_autosave = 1
" Colors and fonts.
colorscheme nord
let g:nord_italic = 1
let g:nord_italic_comments = 1

" Show line numbers in all buffers.
set number
