call plug#begin()

"Shows remaning whitespace in the end of each line"
Plug 'ntpeters/vim-better-whitespace'

"Themes"
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'atelierbram/vim-colors_atelier-schemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

"Theme fixer"
Plug 'vim-scripts/CSApprox'

"Theme viewer"
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'

"Fade Inactive Tile"
Plug 'blueyed/vim-diminactive'

"File explorer"
Plug 'ctrlpvim/ctrlp.vim'

"Autocomplete"
"Plug 'shawncplus/phpcomplete.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'mhartington/nvim-typescript'
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/vimproc', {'do' : 'make'}
"Plug 'm2mdas/phpcomplete-extended'
Plug 'ervandew/supertab'
"Plug 'ludovicchabant/vim-gutentags' 
"Plug 'Quramy/tsuquyomi'

"Sintax Highlighter"
Plug 'StanAngeloff/php.vim'
Plug 'pangloss/vim-javascript' 
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

"Syntax Checker"
Plug 'vim-syntastic/syntastic'

"Debugger"
Plug 'joonty/vdebug'

"Git"
Plug 'tpope/vim-fugitive'

call plug#end()
