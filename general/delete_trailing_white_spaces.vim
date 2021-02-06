" Delete trailing white spaces
  func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
  endfunc
  noremap <leader>w :call DeleteTrailingWS()<CR>
  autocmd BufWrite *.cpp :call DeleteTrailingWS()

  autocmd BufWritePre * %s/\s\+$//e

