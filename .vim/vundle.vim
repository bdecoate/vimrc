set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Comment line with gcc
Plugin 'tpope/vim-commentary.git'

" Change enclosures with cs<type><type> e.g. cs'" for ' -> "
Plugin 'tpope/vim-surround.git'

Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'vim-scripts/matchit.zip.git'

" A statusline replacement with some extra features
Plugin 'vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'pgilad/vim-skeletons'
Plugin 'majutsushi/tagbar.git'

" Folding assist
Plugin 'tmhedberg/SimpylFold'

" Python PEP8 indention
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'vim-scripts/indentpython.vim'

" Python visual indentation
Plugin 'nathanaelkane/vim-indent-guides'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Syntax Checking
Plugin 'scrooloose/syntastic'
"	Python
Plugin 'nvie/vim-flake8'
"	JSON
Plugin 'dangerousben/jsonval'

" Docker syntax
Plugin 'ekalinin/Dockerfile.vim'

" Search for anything
Plugin 'ctrlpvim/ctrlp.vim'

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter.git'

" Colorschemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-vividchalk'
Plugin 'ciaranm/inkpot'
Bundle 'noah/vim256-color'

" Code Completion
Bundle 'valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
" Plugin 'davidhalter/jedi-vim'

" VirtualEnv Help
Plugin 'jmcantrell/vim-virtualenv'

" Python Docstring snips and tab completion
Bundle 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Vim Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Markdown Previewer
Plugin 'JamshedVesuna/vim-markdown-preview'

" Javascript syntax
Plugin 'othree/yajs.vim'

" golang syntax
Plugin 'fatih/vim-go'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntastic Config
let g:syntastic_filetype_map = {"htmldjango": "html"}
let g:syntastic_html_tidy_exec = '/usr/bin/tidy'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers=['scss_lint']
let g:syntastic_jinja_checkers=['tidy', 'eslint']
let g:syntastic_htmldjango_checkers=['tidy', 'eslint']
let g:syntastic_python_python_exec = 'python'
let g:syntastic_python_checkers=['pylint', 'flake8', 'pyflakes']
let g:syntastic_python_flake8_args="--ignore=E501,W191,F841,F811"
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_enable_signs=1  " Allow syntastic plugin to add markers
let g:syntastic_check_on_open=0
let g:syntastic_aggregate_errors=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol='§'
let g:syntastic_style_warning_symbol='⸹'
let g:syntastic_always_populate_loc_list=1

" MAP F2 to syntastic_check
map <F2> :SyntasticCheck<CR>


" ---------------------------------- "
" Configure YouCompleteMe
" ---------------------------------- "
" let g:ycm_filetype_blacklist = { 'python': 1}
" let g:ycm_filetype_specific_completion_to_disable ={ 'python': 1}
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
" let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

let g:ycm_python_binary_path = 'python'

" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR>
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ---------------------------------- "
" Configure NERDTree
" ---------------------------------- "
" Open NERDTree when Vim startsup and no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" " Open NERDTree with Ctrl-n 
map <C-n> :NERDTreeToggle<CR>

" " Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ---------------------------------- "
" Configure Markdown-Preview
" ---------------------------------- "
"let vim_markdown_preview_github=1

" Airline
let g:airline_theme='dark'
"let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ---------------------------------- "
" Configure vim-indent-guides
" ---------------------------------- "
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 100
let g:indent_guides_guide_size = 4
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235

" Auto-run indent-guides for python files
autocmd VimEnter * :IndentGuidesEnable


" ---------------------------------- "
" Configure colorscheme
" ---------------------------------- "
colorscheme inkpot

" ---------------------------------- "
" GOLANG STUFF
" ---------------------------------- "
" use goimports for formatting
let g:go_fmt_command = "goimports"

" turn highlighting on
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

let g:syntastic_go_checkers = ['golint', 'go', 'errcheck']


"Simpyfold
let g:SimpylFold_fold_docstring= 1
let g:SimpylFold_fold_import= 1
