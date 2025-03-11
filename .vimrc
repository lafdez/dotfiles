call plug#begin('~/.vim/plugged')

"{{ The Basics }}
    Plug 'gmarik/Vundle.vim'                           " Vundle
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    Plug 'vifm/vifm.vim'                               " Vifm
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Productivity }}
    Plug 'vimwiki/vimwiki'                             " VimWiki 
    Plug 'jreybert/vimagit'                            " Magit-like plugin for vim
"{{ Tim Pope Plugins }}
    Plug 'tpope/vim-surround'                          " Change surrounding marks
"{{ Syntax Highlighting and Colors }}
    Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plug 'vim-python/python-syntax'                    " Python highlighting
    Plug 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
"{{ Los míos }}
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
    Plug 'junegunn/fzf.vim'
    Plug 'stephpy/vim-yaml'
    Plug 'rhysd/vim-notes-cli'
    Plug 'github/copilot.vim', {'branch': 'release'}
    Plug 'rust-lang/rust.vim'
    Plug 'pearofducks/ansible-vim'
    Plug 'hashivim/vim-terraform'
    Plug 'https://github.com/mattn/vim-chatgpt.git'
    "
    " " If you want :UltiSnipsEdit to split your window.
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38


nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

map <C-Right> <C-w><Right>
map <C-Left> <C-w><Left>
map <C-Up> <C-w><Up>
map <C-Down> <C-w><Down>
noremap Zz <c-w>\|<c-w>_
noremap Zo <c-w>=

nnoremap [2;5~ :tabnew<CR>
nnoremap [3;5~ :tabclose<CR>
nnoremap [5;5~ :tabnext<CR>
nnoremap [6;5~ :tabprevious<CR>

set ai
set expandtab
set tabstop=2
set sts=2
set sw=2
set relativenumber
set number
set listchars=tab:→→,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

autocmd BufWritePost *.tf :silent !terraform fmt %
autocmd BufWritePost *.tfvars :silent !terraform fmt %

let g:copilot_filetypes = {'markdown': v:true}
let g:copilot_filetypes = {'yaml': v:true}

" Configuración de ChatGPT (clave de API y modelo)
so ~/.vim/chatgpt.vim

colorscheme jellybeans
