" set number          " Show absolute line numbers
set relativenumber  " Enable relative line numbers
set autoindent
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus
set shiftwidth=4
    
	    
call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin' " enables 'edited-dot' on nerdtree tab
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'nanotech/jellybeans.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}
Plug 'andymass/vim-matchup'

call plug#end()

" tag matchup
let g:matchup_matchparen_offscreen = {'method': 'popup'}

" coc config
let g:coc_global_extensions = [
	\ 'coc-snippets',
  	\ 'coc-pairs',
  	\ 'coc-tsserver',
  	\ 'coc-eslint',
   	\ 'coc-prettier',
  	\ 'coc-json',
  	\ ]

" coc snippets
" " Use Tab to expand or jump through snippets
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : coc#expandable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand', ''])\<CR>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : coc#jumpable(-1) ? "\<C-r>=coc#rpc#request('snippet-jump', [-1])\<CR>" : "\<Tab>"

" Use Enter to confirm completion or expand snippet
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

" Use Tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use Enter to confirm completion
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"


:colorscheme jellybeans
" BUT keep org. backgroundcolor
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE

" nerdtree/buffer shit
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
" nnoremap <CapsLock> <Esc> " system-lvl config
" switch between splitscreen windows:
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" nnoremap <leader>1 :tabn 1<CR>
nnoremap <A-1> :tabn 1<CR>
nnoremap <A-2> :tabn 2<CR>
nnoremap <A-3> :tabn 3<CR>
nnoremap <A-4> :tabn 4<CR>
nnoremap <A-5> :tabn 5<CR>
nnoremap <A-6> :tabn 6<CR>
nnoremap <A-7> :tabn 7<CR>
nnoremap <A-8> :tabn 8<CR>
nnoremap <A-9> :tabn 9<CR>

" apply changes:
" :source ~/.config/nvim/init.vim
