if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.py-master		setfiletype python
  au! BufRead,BufNewFile *.py-deploy		setfiletype python
augroup END
