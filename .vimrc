filetype plugin indent on
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number

call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

syntax on
colorscheme onedark
