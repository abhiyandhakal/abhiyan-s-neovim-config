set relativenumber
set nu
set autoindent
set tabstop=4
set softtabstop=4
set mouse=a
set incsearch
set signcolumn=yes
set noerrorbells

call plug#begin()

Plug 'git@github.com:nvim-telescope/telescope.nvim.git'
Plug 'git@github.com:EdenEast/nightfox.nvim.git'
Plug 'git@github.com:Abstract-IDE/Abstract-cs.git'
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:preservim/nerdtree.git'
Plug 'git@github.com:tpope/vim-commentary.git'
Plug 'git@github.com:tc50cal/vim-terminal.git'
Plug 'git@github.com:neoclide/coc.nvim.git', {'branch': 'release'}
Plug 'git@github.com:preservim/tagbar.git'
Plug 'git@github.com:tpope/vim-commentary.git'
Plug 'git@github.com:akinsho/toggleterm.nvim.git', {'tag': '*'}
call plug#end()

colorscheme abscs 

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <F2> :TagbarToggle<CR>

" noh - no highlight
map <esc> :noh <CR>

source $HOME/.config/nvim/plug-config/coc.vim

let g:neovide_cursor_vfx_mode = "sonicboom"

let g:neovide_scale_factor=0.8
function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
endfunction
nnoremap <expr><C-=> ChangeScaleFactor(1.25)
nnoremap <expr><C--> ChangeScaleFactor(1/1.25)

