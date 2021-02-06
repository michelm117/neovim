"   _   _ _____ ____  ____ _____              
"  | \ | | ____|  _ \|  _ \_   _| __ ___  ___ 
"  |  \| |  _| | |_) | | | || || '__/ _ \/ _ \
"  | |\  | |___|  _ <| |_| || || | |  __/  __/
"  |_| \_|_____|_| \_\____/ |_||_|  \___|\___|
"                                             


" close vim if the only window left is nerdtree.
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open nerdtree automatically when vim starts up on opening a directory.
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


" temporarily disable exclusive selection whenever vim-multiple-cursors is active
  augroup MultipleCursorsSelectionFix
      autocmd User MultipleCursorsPre  if &selection ==# 'exclusive' | let g:multi_cursor_save_selection = &selection | set selection=inclusive | endif
      autocmd User MultipleCursorsPost if exists('g:multi_cursor_save_selection') | let &selection = g:multi_cursor_save_selection | unlet g:multi_cursor_save_selection | endif
  augroup END

