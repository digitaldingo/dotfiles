" my filetype file
" Use this file to set the filetype based on the extension.
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.tex,*.inc		setfiletype tex
"  au! BufRead,BufNewFile *.xyz		setfiletype drawing
augroup END
