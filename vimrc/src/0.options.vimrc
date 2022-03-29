" OPTIONS -------------------------------------------- {{{
	set number
	set relativenumber
	
	" Smart searching
	set ignorecase
	set smartcase
	
	" Enable type file detection. Vim will be able to try to detect the type of file in use.
	filetype on
	
	" Enable plugins and load plugin for the detected file type.
	filetype plugin on
	
	" Load an indent file for the detected file type.
	filetype indent on
	
	" Turn syntax highlighting on.
	syntax on
	
	" Enable cursorline
	" set cursorline
	
	" Enable search highlights
	set hls
	
	" Enable incsearch
	set incsearch
	
	" Customization
	colorscheme elflord
	
	" Enable Copilot on all Filetypes - NEOVIM
	let g:copilot_filetypes = { '*': v:true}







 	" NEOVIM {{{ --------------------
	if has('nvim')

        	" Enable Copilot on all Filetypes - NVIM
		let g:copilot_filetypes = { '*': v:true}

	endif
	" }}} END NEOVIM ----------------

" }}}
