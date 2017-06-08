syntax enable

colorscheme darkblue

set number

let mapleader = '\' "default"


"___Searching___"

"Highlight search results."
set hlsearch
set incsearch


"___Mappings___"

"Shortcut to edit vimrc file."
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Unhighlight search results."
nmap <Leader><space> :nohlsearch<cr>


"___Auto-Commands___"

"Auto source vimrc on write."
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
augroup END
