set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

"### Start ###"

syntax enable

set number

let mapleader = '\' "default"

"___Visuals___"

"Use 256 colors."
set t_CO=256

"Scheme"
colorscheme atom-dark-256

"___Searching___"

"Highlight search results."
set hlsearch
set incsearch

"___Split Managment___"
set splitbelow
set splitright

nmap <Alt-H> <C-W><C-H>
nmap <Alt-J> <C-W><C-J>
nmap <Alt-K> <C-W><C-K>
nmap <Alt-L> <C-W><C-L>



"___Mappings___"

"Shortcut to edit vimrc file."
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Unhighlight search results."
nmap <Leader><space> :nohlsearch<cr>

"Toggle Nerdtree
nmap <Leader>t :NERDTreeToggle<cr>

"CrtrlP BuffTag"
nmap <Leader>s :CtrlPBufTag<cr>


"___Auto-Commands___"

"Auto source vimrc on write."
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
augroup END
