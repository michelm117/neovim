"   _              _     _           _ _             
"  | | _____ _   _| |__ (_)_ __   __| (_)_ __   __ _ 
"  | |/ / _ \ | | | '_ \| | '_ \ / _` | | '_ \ / _` |
"  |   <  __/ |_| | |_) | | | | | (_| | | | | | (_| |
"  |_|\_\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |
"            |___/                             |___/ 
"  


" Spell-check set to <leader>o, 'o' for 'orthography':
  noremap <leader>o :setlocal spell! spelllang=en_us<CR>
  noremap <leader>l :setlocal spell! spelllang=de<CR>

" Split screen
  nnoremap <leader>v <C-w>v
  nnoremap <leader>h <C-w>s

" Shortcutting split navigation, saving a keypress:
  noremap <C-h> <C-w>h
  noremap <C-j> <C-w>j
  noremap <C-k> <C-w>k                                                                     
  noremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
  noremap <M-j>    :resize -2<CR>
  noremap <M-k>    :resize +2<CR>
  noremap <M-h>    :vertical resize -2<CR>
  noremap <M-l>    :vertical resize +2<CR>

" Toggle NERDTree
  map <C-n> :NERDTreeToggle<CR>                                                                                                                                                        

" F5 to run the Makefile
  noremap <F5> :make!<cr>

" F9 to run the current file
  autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<C
  autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%
  
  autocmd FileType tex map <buffer> <F9> :w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>
  autocmd FileType tex imap <buffer> <F9> <esc>:w<CR>:exec '!pdflatex' shellescape(@%, 
