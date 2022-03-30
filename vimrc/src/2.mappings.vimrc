
" MAPPINGS --------------------------------------------------------------- {{{

	" Get out of insert mode after adding lines
	nnoremap o o<esc>
	nnoremap O O<esc>
	
	" Turn off highlighting till next search after pressing Escape
	nnoremap <CR> :noh<CR><CR>	

	
	" You can split the window in Vim by typing :split or :vsplit.
	" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
	nnoremap <c-j> <c-w>j
	nnoremap <c-k> <c-w>k
	nnoremap <c-h> <c-w>h
	nnoremap <c-l> <c-w>l
	
	" Resize split windows using arrow keys by pressing:
	" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
	noremap <c-up> <c-w>+
	noremap <c-down> <c-w>-
	noremap <c-left> <c-w>>
	noremap <c-right> <c-w><
	
	" NERDTree specific mappings.
	" Map the F3 key to toggle NERDTree open and close.
	nnoremap <F3> :NERDTree<cr>
	
	" Have nerdtree ignore certain files and directories.
	let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$', '\.idea']

	" Move lines up and down with ALT+J and ALT+K.
	nnoremap <A-j> :m .+1<CR>==
	nnoremap <A-k> :m .-2<CR>==
	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv



	" NEOVIM {{{ --------------------
	if has('nvim')

	



	endif
	" }}} END NEOVIM ----------------
 "}}}
