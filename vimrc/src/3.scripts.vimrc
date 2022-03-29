"{{{-----------------------------------------------------------------

	" Exit Vim if NERDTree is the only window remaining in the only tab.
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
	
	" Start NERDTree and put the cursor back in the other window.
	autocmd VimEnter * NERDTree | wincmd p
	
	" Track local_history of files
	if version >= 703
	    set undodir=~/.vim/.local_history
	    set undofile
	    set undoreload=10000
	endif


"}}}
