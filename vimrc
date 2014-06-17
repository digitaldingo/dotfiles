" NeoBundle Scripts-----------------------------

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/resources/vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/resources/vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles with no configuration:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "kshenoy/vim-signature"
NeoBundle "dockyard/vim-easydir"
NeoBundle "cocopon/iceberg.vim"
NeoBundle "scrooloose/nerdtree"

" Bundles with configuration
" Airline
NeoBundle "bling/vim-airline"
let g:airline_theme="jellybeans"
let g:airline_left_sep = ""
let g:airline_right_sep = ""
let g:airline_section_b = ""
let g:airline_section_x = ""
let g:airline_section_y = ""

" Syntastic
NeoBundle "scrooloose/syntastic"
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_javascript_jshint_conf = "$HOME/.jshintrc"
let g:syntastic_html_jshint_conf = "$HOME/.jshintrc"
let g:syntastic_cpp_compiler = "g++"
" let g:syntastic_cpp_compiler_options = " -std=c++11"
let g:syntastic_java_checkers = []
if has("unix")
  let g:syntastic_error_symbol = "█"
  let g:syntastic_style_error_symbol = ">"
  let g:syntastic_warning_symbol = "█"
  let g:syntastic_style_warning_symbol = ">"
else
  let g:syntastic_error_symbol = "X"
  let g:syntastic_style_error_symbol = ">"
  let g:syntastic_warning_symbol = "!"
  let g:syntastic_style_warning_symbol = ">"
endif

" autocomplete
NeoBundle "Shougo/neocomplcache"
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_max_list = 12
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" End NeoBundle Scripts-------------------------


" reasonable defaults
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*
if has("cryptmethod")
  set cryptmethod=blowfish
endif
set ttymouse=xterm2
set mouse=a

" search
set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault

" display stuff
set number
set title
set noerrorbells
set visualbell
set t_Co=256
if has("syntax")
  syntax on
  colorscheme iceberg
  set synmaxcol=1000
endif
set nolist
"set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·
if has("gui_running")
  set guifont=Source\ Code\ Pro:h14
  set antialias
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  highlight Cursor guifg=black guibg=grey
  set guicursor=n-c-v:block-Cursor-blinkon0
  set guicursor+=i:ver10-Cursor
endif

" splits
set splitbelow
set splitright

" Git commit messages with spelling and automatic insert mode
if has("spell")
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
endif
au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys("ggi", "t")

" better vertical movement
vmap j gj
vmap k gk
nmap j gj
nmap k gk

" buffers
set hidden

" ~/.vimrc_local if you have it
if filereadable(expand("~/.vimrc_local"))
source ~/.vimrc_local
endif

