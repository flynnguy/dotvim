" https://github.com/sontek/dotfiles/
" ==========================================================
" Dependencies - Libraries/Applications outside of vim
" ==========================================================
" Pep8 - http://pypi.python.org/pypi/pep8
" Ack
"
" ==========================================================
" Non-Pathogen plugins
" ==========================================================
" bike.vim - Bicycle Repair Man (python refactoring) integration with vim

set nocompatible
" filetype off
filetype plugin indent off

call plug#begin('~/.vim/plugged')         " https://github.com/junegunn/vim-plug

Plug 'mileszs/ack.vim'                    " Like grep but better
Plug 'mattn/webapi-vim'                   " interface to Web API (XML, HTML, JSON, HTTP)
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'} " Go development plugin for Vim
Plug 'rizzatti/dash.vim'
" Plug 'lifepillar/vim-mucomplete'
Plug 'davidhalter/jedi-vim'
" Plug 'wellle/tmux-complete.vim'
Plug 'honza/vim-snippets'                 " Install the snippets
Plug 'SirVer/ultisnips'                   " UltiSnips - The ultimate snippet solution for Vim.
Plug 'tpope/vim-commentary'               " commentary.vim: comment stuff out http://www.vim.org/scripts/script.php?script_id=3695
Plug 'tpope/vim-fugitive'                 " Interface with git from vim (required for gitv)
Plug 'tpope/vim-unimpaired'               " pairs of handy bracket mappings
Plug 'tpope/vim-surround'                 " add/remove/change [](){}<>/tags around text
Plug 'tpope/vim-git'                      " Syntax highlighting for git config files
Plug 'vim-scripts/indentpython.vim'
Plug 'kannokanno/previm'
Plug 'sjl/gundo.vim'                      " Visual Undo in vim with diff's to check the differences
Plug 'bling/vim-bufferline'               " super simple vim plugin to show the list of buffers in the command bar
" Plug 'dense-analysis/ale'
Plug 'janko-m/vim-test'
Plug 'neomake/neomake'
Plug 'milkypostman/vim-togglelist'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/jQuery'                 " jQuery syntax
Plug 'vim-scripts/python_match.vim'       " extends % to work better with python
Plug 'vim-scripts/repeat.vim'             " Enables . to repeat more things
Plug 'vim-scripts/Gist.vim'               " Automating uploading a Gist to Github.com
Plug 'vim-scripts/gnupg.vim'              " Allows editing of gpg encrypted files
Plug 'altercation/vim-colors-solarized'   " precision colorscheme for the vim text editor http://ethanschoonover.com/solarized
Plug 'nvie/vim-flake8'                    " Underlines and displays errors with Python on-the-fly
Plug 'vim-scripts/closetag.vim'           " Functions and mappings to close open HTML/XML tags
Plug 'airblade/vim-gitgutter'             " Shows a git diff in the gutter (sign column) and stages/reverts hunks
Plug 'jmcantrell/vim-virtualenv'          " Work with python virtualenvs in vim http://www.vim.org/scripts/script.php?script_id=3486
Plug 'AndrewRadev/linediff.vim'           " A vim plugin to perform diffs on blocks of code http://www.vim.org/scripts/script.php?script_id=3745
Plug 'vim-scripts/YankRing.vim'           " Maintains a history of previous yanks, changes and deletes http://www.vim.org/scripts/script.php?script_id=1234
Plug 'flynnguy/ctpaste-vim'               " Paste to CodeTrunk (http://code.google.com/p/codetrunk/)
Plug 'psf/black', {'tag': '19.10b0'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'               " Auto add trailing quotes
Plug 'majutsushi/tagbar'                  " Add tagbar plugin
Plug 'urthbound/hound.vim'
Plug 'mileszs/ack.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'szw/vim-tags'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'neovim/nvim-lsp'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/deoplete-lsp'

" color themes...
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'jnurmine/Zenburn'
Plug 'jacoborus/tender.vim'

call plug#end()

set completeopt+=preview
set completeopt+=menu,menuone,noinsert,noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:deoplete#enable_at_startup = 1

" let g:jedi#show_call_signatures#popup_on_dot = 0
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 500
let g:mucomplete#chains = {}
let g:mucomplete#chains.default = ['file', 'omni', 'keyn', 'dict', 'ulti']
let g:mucomplete#chains.unite = []
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_insert_paren = 1
let g:rustfmt_autosave = 1

let g:gitgutter_set_sign_backgrounds=0

let g:python3_host_prog = "~/.pyenv/versions/neovim3/bin/python"

let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" inoremap <expr<tab> pumvisible() ? "\<c-n>" : "\<tab>"

let $PATH = "~/src/go/bin/gorename:".$PATH
"let $GOPATH = "/usr/local/Cellar/go/1.4.2/libexec"

au BufRead,BufNewFile *.go set foldmethod=syntax
au BufRead,BufNewFile *.go set foldnestmax=10
au BufRead,BufNewFile *.go set nofoldenable
au BufRead,BufNewFile *.go set foldlevel=0

" autocmd! BufWritePost,BufEnter * Neomake
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FocusLost * :set number
au FocusGained * :set relativenumber
cmap w!! %!sudo tee > /dev/null %

map <leader>p :PrevimOpen<cr>
map <leader>td <Plug>TaskList
let g:flake8_ignore="E501,E701,E401,W806"
autocmd FileType python map <buffer> <leader>8 :call Flake8()<CR>
let g:syntastic_python_exec = "~/.pyenv/versions/neovim3/bin/python"
let g:syntastic_python_checkers=['flake8', 'python']
" let g:syntastic_python_flake8_args='--ignore=E501,E701,E401'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:neomake_python_enabled_makers = ['flake8', 'pylint']
let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']
let g:neomake_docker_enabled_markers = ['hadolint']
let g:neomake_yaml_enabled_markers = ['yamllint']
let g:neomake_rust_enabled_markers = ['rustc', 'cargo']
" Blow needs:
" $ brew tap ValeLint/vale
" $ brew install vale
let g:neomake_markdown_enabled_markers = ['vale', 'proselint', 'writegood']
" let g:neomake_ruby_enabled_markers = ['flog', 'mri', 'rubocop', 'reek', 'rubylint']
" gem install flog reek
let g:neomake_ruby_enabled_markers = ['flog', 'rubocop', 'reek']
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

let g:neomake_open_list = 2
" Neomake
" Gross hack to stop Neomake running when exitting because it creates a zombie cargo check process
" which holds the lock and never exits. But then, if you only have QuitPre, closing one pane will
" disable neomake, so BufEnter reenables when you enter another buffer.
let s:quitting = 0
au QuitPre *.rs let s:quitting = 1
au BufEnter *.rs let s:quitting = 0
au BufWritePost *.rs if ! s:quitting | Neomake | else | echom "Neomake disabled"| endif
let g:neomake_warning_sign = {'text': '?'}


map <F5> <Plug>(go-metalinter)

" let g:ycm_key_list_select_completion=['<Down>', '<C-j>']
" let g:ycm_key_list_previous_completion=['<Up>', '<C-k>']

nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

" NERDTree Git Plugin
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsListSnippets='<c-CR>'
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=["~/.vim/plugged/vim-snippets/UltiSnips" ]
let g:UltiSnipsSnippetsDir="~/.vim/snippets"

"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

map <leader>v :e ~/.vimrc<CR><C-W>_
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <leader>s :setlocal spell! spelllang=en_us<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>
map <C-n> :cnext<cr>
map <C-m> :cprevious<cr>

" autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)

" Custom commentstrings
autocmd FileType sql setlocal commentstring=--\ %s

function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#cmd#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<cr>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

" ctrl-jklm  changes to that split
" map <c-t>j <c-w>j
" map <c-t>k <c-w>k
" map <c-t>l <c-w>l
" map <c-t>h <c-w>h
" nmap <tab><tab> <C-w>w
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
map <leader><tab> :FZF<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)


imap <c-a> <Home>
imap <c-e> <End>

" So linux behaves similarly to mac
" you could also use c- instead of a- here
nmap <a-v> "+gP
imap <a-v> <esc>l<a-v>i
vmap <a-c> "+y

" and lets make these all work in insert mode too ( <C-O> makes next cmd
"  happen as if in command mode )
" imap <C-W> <C-O><C-W>

map <leader>n :NERDTreeToggle<CR>
nmap <leader>a <Esc>:Ack!
map <leader>g :GundoToggle<CR>

" Jump to the definition of whatever the cursor is on
map <leader>j :RopeGotoDefinition<CR>
" Rename whatever the cursor is on (including references to it)
" map <leader>r :RopeRename<CR>

nmap <F3> :TagbarToggle<CR>

" Allow jk keys to go up/down after Ctrl-P
"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype plugin indent on     " enable loading indent file for filetype
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set viewdir=$HOME/.vim/views
set colorcolumn=80

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc,*.log,*.svn,tags
set grepprg=ack-grep          " replace the default grep program with ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
"set grepformat=%f:%l:%m

""" Insert completion
" set completeopt=menuone,longest,preview   " don't select first item, follow typing in autocomplete
set pumheight=6             " Keep a small completion window

""" Moving Around/Editing
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
"set matchtime=2             " (for only .2 seconds).
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldlevel=99            " don't fold by default

" close preview window automatically when we move around
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Delete fugitive buffers when we stop looking at them
autocmd BufReadPost fugitive://* set bufhidden=delete
nnoremap <leader>gs :Gstatus<cr><c-w>15+

nnoremap <leader>w :w<cr>

nnoremap <leader>[ :bprev<cr>
nnoremap <leader>] :bnext<cr>

"""" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
"set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

"""" Messages, Info, Status
set ls=2                    " allways show status line
"Commenting out below because there's a similar setting in ubuntu and I can
"make just the title bar flash which doesn't seem to slow down my window
"like the following does
"set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
set laststatus=2            " Always show statusline, even if only 1 window.
set encoding=utf-8
set statusline=%<%f%M\ (%{&ft})%=%-19(%3l,%02c%03V%)%{fugitive#statusline()}
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" displays tabs with :set list & displays when a line runs off-screen
"set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
"set list

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
map // :nohlsearch<cr>; echo 'Search highlight cleared' <cr>
" The following opens up a quickfix window with search results
nnoremap <silent> ,/ :execute 'vimgrep /'.@/.'/g %'<cr>:copen</cr>
set incsearch               " Incrementally search while typing a /regex
set clipboard=unnamed
let g:yankring_clipboard_monitor=0

highlight SpellBad term=underline gui=undercurl guisp=Orange
"""" Display
" colorscheme flynn
" colorscheme gruvbox

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" colorscheme zenburn

" colorscheme tender
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" let g:airline_theme = 'tender'

if (has("termguicolors"))
    set termguicolors
endif
if has("gui_running")
set guioptions-=T         " Removes lame icon bar
set lines=78
set columns=200
set hidden                " Allow modified buffers to hide in the background
let NERDTreeShowFiles = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\.pyc$', '^TEST\-.*\.xml$']
set cursorline              " have a line indicate the cursor location
endif

if has("mac")
    let g:rust_clip_command = 'pbcopy'
endif

" if has("mac") && has("gui_running")
"     set gfn=Sauce\ Code\ Powerline:h9
" endif

" if !has("mac") && has("gui_running")
"     set gfn=Source\ Code\ Pro\ for\ Powerline\ Light\ 6  " Set for Linux, override below for mac
"     vnoremap <c-s-c> "+y
"     imap <c-s-v> <esc>"+gpa
" endif
" if has('nvim') && has("gui_running")
"     " call MacSetFont("Sauce Code Powerline", 9)
"     call MacSetFont("Source Code Pro for Powerline Light", 9)
" endif


" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type <leader>h to toggle highlighting on/off.
nnoremap <leader>h :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
let @/ = ''
if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
else
    augroup auto_highlight
    au!
    au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
endif
endfunction

" ==========================================================
" Python
" ==========================================================
"au BufRead *.py compiler nose
"au FileType python set omnifunc=pythoncomplete#Complete
" au FileType python set omnifunc=jedi#complete
" let g:jedi#show_call_signatures = "u"
au BufNewFile,BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au BufNewFile,BufRead *.py set foldmethod=indent       " allow us to fold on indents
let python_highlight_all=1

" ==========================================================
" Javascript
" ==========================================================
au BufRead *.js set makeprg=jslint\ %
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au BufReadPost *.cps set syntax=javascript

au BufNewFile,BufRead *.sah set filetype=sahi
au! BufNewFile,BufRead *.json set filetype=json
augroup json_autocmd
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=2
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END

autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2

autocmd BufRead,BufNewFile *.py set expandtab

autocmd QuickFixCmdPost *grep* cwindow

au BufNewFile,BufRead *.yaml set foldmethod=marker

au! BufNewFile,BufRead *.pde set ft=arduino
" Visual Selection and then \j to prettify json
map <Leader>j !python -m json.tool<CR>

if !has('nvim')
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if os.environ.has_key('VIRTUAL_ENV') and os.environ['VIRTUAL_ENV']:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif
endif

" My additions
set diffopt=filler
set diffopt+=iwhite

set dictionary+=/usr/share/dict/words
map <F2> :bd<cr>:syntax on<cr>
map <leader>f :Files<cr>
nnoremap <silent> <leader>g :GFiles<cr>
nnoremap <silent> <leader>o :Buffers<cr>
nnoremap <silent> <leader>r :Rg!

map <leader>f :CtrlPMixed<CR>
map <leader>t :CtrlP<CR>
map <leader>m :CtrlPMRUFiles<CR>
map <leader>b :CtrlPBuffer<CR>

map <F4> :NERDTreeToggle<cr>
map <C-n> :tabnew<cr>
vmap <silent> <leader>c "+y
vmap <silent> <leader>p "+p
nmap <silent> <leader>d "_d
vmap <silent> <leader>d "_d

let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_Menu = 1
let Tlist_Show_One_File = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Process_File_Always = 1
let Tlist_Use_Right_Window = 1
let Tlist_Display_Prototype = 1
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Win_Width = 40

let g:vim_tags_ctags_binary = '/usr/local/bin/ctags'
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore', 'node-modules']

map <M-tab> <esc>:tabnext<cr>
map <M-S-tab> <esc>:tabprevious<cr>
let g:pastebin_user='chris'
let g:pastebin='http://paste.advance.net/'
let g:Powerline_symbols = 'fancy'

map <f12> :!ctags -R --exclude='*.js' --python-kinds=-iv .

autocmd FileType html let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_virtualenv = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace() ### XXX BREAKPOINT"

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutFastWrap = 1
let g:AutoPairsShortcutToggle = '<D-p>'
let g:AutoPairsShortcutFastWrap = '<D-e>'
set relativenumber

let g:previm_open_cmd = 'open -a Firefox'

"--ALE--
hi clear ALEErrorSign
hi clear ALEWarningSign
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '‚úò'
let g:ale_sign_warning = '‚óã'
hi Error    ctermfg=204 ctermbg=NONE guifg=#ff5f87 guibg=NONE
hi Warning  ctermfg=178 ctermbg=NONE guifg=#D7AF00 guibg=NONE
hi ALEError ctermfg=204 guifg=#ff5f87 ctermbg=52 guibg=#5f0000 cterm=undercurl gui=undercurl
hi link ALEErrorSign    Error
hi link ALEWarningSign  Warning

let g:ale_linters = {
            \ 'python': ['pylint'],
            \ 'javascript': ['eslint'],
            \ 'go': ['gobuild', 'gofmt'],
            \ 'rust': ['rls']
            \}
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python': ['autopep8'],
            \ 'javascript': ['eslint'],
            \ 'go': ['gofmt', 'goimports'],
            \ 'rust': ['rustfmt']
            \}
let g:ale_fix_on_save = 1

set tags=tags

map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
nmap <C-S-P> :call SynStack()<CR>

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Bits to reload files when things change
augroup AutoSwap
        autocmd!
        autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
augroup END

function! AS_HandleSwapfile (filename, swapname)
        " if swapfile is older than file itself, just get rid of it
        if getftime(v:swapname) < getftime(a:filename)
                call delete(v:swapname)
                let v:swapchoice = 'e'
        endif
endfunction
autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
\ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif

augroup checktime
    au!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI,FocusGained,BufEnter,FocusLost,WinLeave * checktime
    endif
augroup END
" End Bits to reload files when things change
