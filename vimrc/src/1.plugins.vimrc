
" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

	
	Plug 'dense-analysis/ale'
  	Plug 'preservim/nerdtree'



 	" NEOVIM {{{ --------------------
	if has('nvim')

		" Github Copilot - NEOVIM
		Plug 'github/copilot.vim'

	endif
	" }}} END NEOVIM ----------------

call plug#end()
" }}}

