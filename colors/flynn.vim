" Vim color file
" Maintainer:   Christopher Flynn <flynnguy@gmail.com>
" Last Change:  
" URL:		

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark	" or light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="flynn"


" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	

"hi Normal guifg=grey80 guibg=black
hi Normal guifg=#f6f3e8 guibg=#242424
hi NonText		term=bold ctermfg=9 gui=bold guifg=Blue

hi Cursor         cterm=bold ctermfg=5 ctermbg=6 gui=bold guifg=NONE guibg=#656565
hi LineNr		term=underline ctermfg=14 guifg=Yellow

hi VertSplit	guibg=grey30 guifg=slategrey gui=none
hi StatusLine	term=reverse cterm=bold,reverse guifg=DarkSlateGray guibg=Grey80
hi StatusLineNC	term=reverse cterm=reverse guifg=DarkSlateGray guibg=Gray90

hi Folded		term=standout ctermfg=11 ctermbg=8 guifg=DarkBlue guibg=DarkGrey
hi Title	term=bold ctermfg=13 gui=bold guifg=Magenta
hi Visual		term=reverse cterm=reverse gui=bold guifg=DarkBlue guibg=DarkGrey
hi VisualNOS	term=bold,underline cterm=bold,underline gui=bold,underline

hi SpecialKey	term=bold ctermfg=9 guifg=Cyan

hi WildMenu     term=standout ctermfg=0 ctermbg=14 guifg=Black guibg=Khaki	



"hi CursorIM	
hi CursorLine   guibg=#2d2d2d
hi CursorColumn   guibg=#2d2d2d
hi Directory   ctermfg=11 guifg=Cyan
hi DiffAdd     term=bold ctermbg=1 guibg=DarkGreen
hi DiffChange	term=bold ctermbg=5 guibg=DarkBlue
hi DiffLine	term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete   term=bold ctermfg=9 ctermbg=3 gui=bold guifg=Black guibg=DarkRed
hi DiffText	term=reverse cterm=bold ctermbg=12 gui=bold guibg=Red
hi ErrorMsg	    cterm=bold ctermfg=white ctermbg=red guibg=#592929
hi FoldColumn	term=standout ctermfg=11 ctermbg=8 guifg=DarkBlue guibg=DarkGrey
hi IncSearch	term=reverse cterm=reverse gui=reverse
hi ModeMsg		term=bold cterm=bold gui=bold
hi MoreMsg		term=bold ctermfg=10 gui=bold guifg=SeaGreen
hi Question	term=standout ctermfg=10 gui=bold guifg=Green
"hi Search		term=reverse ctermfg=0 ctermbg=12 gui=bold guifg=Black guibg=Red
hi WarningMsg   ctermfg=1	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment     term=bold ctermfg=11 guifg=#99968b
hi String   ctermfg=14 guifg=#e5786d
hi Number   guifg=#FF73FD     guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Special	    term=bold ctermfg=6 guifg=Orange
hi Constant	term=underline ctermfg=13 guifg=#ffa0a0
hi Identifier	term=underline cterm=bold ctermfg=11 guifg=#cae682
hi PreProc	    term=underline ctermfg=9 guifg=#ff80ff
"hi Underlined	
"hi Ignore		
hi Function     guifg=#95e454
hi Error		term=reverse ctermfg=14 ctermbg=12 guifg=White guibg=Red
hi Todo		term=standout ctermfg=0 ctermbg=14 guifg=Blue guibg=Yellow

hi Statement	guifg=#8ac6f2
hi Type		term=underline ctermfg=10 guifg=#95e454

hi pythonDecoratorName  guifg=#f6f3e8
hi pythonString guifg=#e5786d
"hi pythonRawString guifg=Red
"hi pythonBuiltin guifg=Red
"hi pythonException guifg=Red
