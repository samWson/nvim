set nomodeline " Disable modeline parsing for security.

" Set runtime path.
set rtp+=~/.config/nvim/bundle/Vundle.vim " Vundle package manager. 
set rtp+=/usr/local/opt/fzf " fzf fuzzy finder.

" '%' jumps between opening and closing sets of '()', '{}', and '[]'.
" The built in matchit plugin improves % command matching.
runtime macros/matchit.vim

" All plugins must be between vundle#begin() and vundle#end()
" The argument here is the directory where Vundle will install packages.
call vundle#begin('~/.local/share/nvim/site/pack')

Plugin 'VundleVim/Vundle.vim'
Plugin 'autozimu/LanguageClient-neovim'
Plugin 'ngmy/vim-rubocop'
Plugin 'vim-airline/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'elixir-editors/vim-elixir'
Plugin 'tpope/vim-commentary'
Plugin 'rhysd/vim-crystal'
Plugin 'tpope/surround'

call vundle#end()

set nocp
filetype plugin on
filetype plugin indent on

" LanguageClient config.
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'lua': ['lua-lsp'],
    \ }

let g:LanguageClient_autoStart = 1

" Rust language support.
let g:rustfmt_autosave = 1

let ruby_spellcheck_strings = 1

set tabstop=2
set shiftwidth=2
set expandtab

" Mappings.
let mapleader = "\<Space>"
nnoremap ; :
nnoremap <leader>t :tabnew"\<Enter>"
nnoremap <leader>f :FZF
" Move line at cursor down to the next line.
nnoremap <leader>- ddp 
" Move line at cursor up to the previous line.
nnoremap <leader>_ ddkP
" Convert word under cursor to uppercase while in insert mode.
inoremap <c-u> <esc>viwUe
" Convert word under cursor to uppercase while in normal mode.
nnoremap <leader><c-u> viwUe
" Open Vim configuration file in a vsplit.
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
" Evaluate Vim configuration file.
nnoremap <leader>sv :source $MYVIMRC<cr>
" Surround word with double quotes.
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" Surround word with single quotes.
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" Open netrw
nnoremap <leader>d :Vexplore<Enter>
" Turn off search highlighting.
nnoremap <leader>h :noh<Enter>

" Show line numbers in all buffers.
set number

"" Netrw config
let g:netrw_browse_split = 3
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20

echom 'Neo cat says hi! >^.^<'
