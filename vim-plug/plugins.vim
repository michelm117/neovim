"         _                       _
"  __   _(_)_ __ ___        _ __ | |_   _  __ _
"  \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"   \ V /| | | | | | |_____| |_) | | |_| | (_| |
"    \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                          |_|            |___/
"


" if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
" 	echo "Downloading junegunn/vim-plug to manage plugins..."
" 	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
" 	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
" 	autocmd VimEnter * PlugInstall
" endif

call plug#begin('~/.config/nvim/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Icons for NERDTree
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for braackets
    Plug 'jiangmiao/auto-pairs'
    " True snippet and additional text editing support
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Color name highlighter
    Plug 'ap/vim-css-color'
    " onedark theme
    Plug 'joshdick/onedark.vim'
    " gruvbox theme
    Plug 'morhetz/gruvbox'
    " Airline toolbar
    Plug 'vim-airline/vim-airline'
    " Themes for airline
    Plug 'vim-airline/vim-airline-themes'
    " Personal wiki for vim
    Plug 'vimwiki/vimwiki'
    " Creates a calendar window
    Plug 'mattn/calendar-vim'


call plug#end()
