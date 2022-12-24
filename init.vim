set relativenumber
set nu
set autoindent
set tabstop=2
set softtabstop=2
set mouse=a
set incsearch
set signcolumn=yes
set noerrorbells

" noh - no highlight
map <esc> :noh <CR>

call plug#begin('~/.nvim/plugged')
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-commentary'
	Plug 'neoclide/coc.nvim', {'branch' : 'release'}
	Plug 'tpope/vim-commentary'
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
	Plug 'tc50cal/vim-terminal'
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'cocopon/iceberg.vim'
	Plug 'hachy/eva01.vim'
call plug#end()

colorscheme nightfox

" nerdtree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <F2> :TagbarToggle<CR>

" importing coc.vim
source $HOME/.config/nvim/plug-config/coc.vim

" neovide configurations
let g:neovide_cursor_vfx_mode = "sonicboom"
let g:neovide_scale_factor=0.8
