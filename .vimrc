set number
syntax on
set completefunc=cheatcode#Complete
imap <silent>  <C-A>  <esc>:call Openfile()<CR>
imap <silent>  <C-Z>  <C-X><C-U>
imap <silent>  <C-Q>  <esc>:call Closefile()<CR>
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
NeoBundle 'unite-colorscheme'
NeoBundle 'Shougo/vimshell'
NeoBundle 'mattn/webapi-vim'

call neobundle#end()

filetype plugin indent on

