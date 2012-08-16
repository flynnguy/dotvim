" https://github.com/sontek/dotfiles/
" ==========================================================
" Dependencies - Libraries/Applications outside of vim
" ==========================================================
" Pep8 - http://pypi.python.org/pypi/pep8
" Pyflakes
" Ack
" Rake & Ruby for command-t

" ==========================================================
" Pathogen Plugins installed
" ==========================================================
" Pathogen -- Better Management of VIM plugins 
" Ack -- Like grep but better
" Commant-T -- Allows easy search and opening of files within a given path 
" Fugitive -- Interface with git from vim (required for gitv)
" Gist -- Automating uploading a Gist to Github.com
" Git -- Syntax highlighting for git config files
" Gitv -- virtualize git changes
" GunDo -- Visual Undo in vim with diff's to check the differences
" jQuery -- jQuery syntax
" MakeGreen -- Generic test runner that works with nose
" MRU -- Most Recently Used file list
" NERDTree -- Filesystem browser
" Pep8 -- checks file for pep8 conformity
" Pydoc -- Opens up pydoc within vim
" PyFlakes -- Underlines and displays errors with Python on-the-fly
" Python Match -- extends % to work better with python
" Repeat -- Enables . to repeat more things
" Ropevim -- Integrates rope with vim
" Snipmate -- Configurable snippets to avoid re-typing common comands
" Supertab -- tab completion
" Surround -- Allows you to surround text with open/close tags
" Yankring -- Reference previously yanked items

" ==========================================================
" Non-Pathogen plugins
" ==========================================================
" bike.vim - Bicycle Repair Man (python refactoring) integration with vim

" ==========================================================
" Pathogen - Allows us to organize our vim plugins
" ==========================================================
" Load pathogen with docs for all plugins
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

map <leader>td <Plug>TaskList
let g:flake8_ignore="E501,E701"
autocmd FileType python map <buffer> <leader>8 :call Flake8()<CR>
let g:syntastic_python_checker_args='--ignore=E501,E701'

map <leader>v :e ~/.vimrc<CR><C-W>_
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <leader>s :setlocal spell! spelllang=en_us<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

" ctrl-jklm  changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

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
map <leader>r :RopeRename<CR>

" Allow jk keys to go up/down after Ctrl-P
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" ==========================================================
" Basic Settings 
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set viewdir=$HOME/.vim/views

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc 
set grepprg=ack-grep          " replace the default grep program with ack
set grepformat=%f:%l:%m

""" Insert completion
set completeopt=menuone,longest,preview   " don't select first item, follow typing in autocomplete
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
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

" close preview window automatically when we move around
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Delete fugitive buffers when we stop looking at them
autocmd BufReadPost fugitive://* set bufhidden=delete

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
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" displays tabs with :set list & displays when a line runs off-screen
"set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
"set list

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
"set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

highlight SpellBad term=underline gui=undercurl guisp=Orange
"""" Display
colorscheme flynn
if has("gui_running")
  "set gfn=Monaco\ 6
  set gfn=DejaVu\ Sans\ mono\ 7
  set guioptions-=T         " Removes lame icon bar
  set lines=78
  set columns=200
  set hidden                " Allow modified buffers to hide in the background
  let NERDTreeShowFiles = 1
  let NERDTreeIgnore=['\.pyc']
  set cursorline              " have a line indicate the cursor location
endif

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
au FileType python set omnifunc=pythoncomplete#Complete
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Don't let pyflakes use the quickfix window
let g:pyflakes_use_quickfix = 0

" turn of hlsearch and update pyflakes on enter
au BufRead,BufNewFile *.py nnoremap <buffer><CR> :nohlsearch\|:call PressedEnter()<cr>
nnoremap <buffer><CR> :nohlsearch\|:call PressedEnter()<cr>

" clear the search buffer when hitting return and update pyflakes checks
function! PressedEnter()
    :nohlsearch
    if &filetype == 'python'
        :PyflakesUpdate
    end
endfunction

" ==========================================================
" Javascript
" ==========================================================
au BufRead *.js set makeprg=jslint\ %
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS

au BufNewFile,BufRead *.sah set filetype=sahi
au BufNewFile,BufRead *.json set filetype=javascript
au! BufNewFile,BufRead *.pde set ft=arduino
" Visual Selection and then \j to prettify json
map <Leader>j !python -m json.tool<CR>

" ==========================================================
" SuperTab - Allows us to get code completion with tab
" ==========================================================
" Try different completion methods depending on its context
let g:SuperTabDefaultCompletionType = "context"

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

" My additions
set diffopt=filler
set diffopt+=iwhite

set dictionary+=/usr/share/dict/words
map <F2> :bd<cr>:syntax on<cr>
map <leader>f :CommandT<CR>
map <leader>b :CommandTBuffer<CR>
map <F4> :NERDTreeToggle<cr>
map <C-n> :tabnew<cr>

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

let g:CommandTCancelMap=['<C-c>', '<ESC>', '<C-[']
let g:CommandTAcceptSelectionMap=['<cr>']
let g:CommandTAcceptSelectionTabMap=['<C-t>']
let g:CommandTMaxHeight=30
let g:CommandTMatchWindowAtTop=1

map <C-tab> gt
map <C-S-tab> gT
let g:pastebin_user='chris'
let g:Powerline_symbols = 'fancy'
