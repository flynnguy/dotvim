" Vim color file
" Maintainer:   Christopher Flynn <flynnguy@gmail.com>
" Last Change:  
" URL:		

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
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
hi Normal       guifg=#d6d3c9       guibg=#242424       ctermfg=188     ctermbg=235     gui=NONE            cterm=NONE
hi NonText		guifg=Blue          guibg=NONE          ctermfg=9       ctermbg=NONE    gui=bold            cterm=bold
hi Cursor       guifg=NONE          guibg=#656565       ctermfg=NONE    ctermbg=241     gui=bold            cterm=bold
hi LineNr		guifg=#999934       guibg=NONE          ctermfg=14      ctermbg=NONE    gui=NONE            cterm=NONE
hi SignColumn   guibg=#242424

hi VertSplit	guifg=slategrey     guibg=grey30        ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=NONE
hi StatusLine	guifg=#e4e6e1       guibg=#1c4a15       ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=bold,reverse      term=reverse 
hi StatusLineNC	guifg=#e4e6e1       guibg=#163b10       ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=reverse           term=reverse 
hi Folded		guifg=DarkBlue      guibg=DarkGrey      ctermfg=249     ctermbg=232     gui=NONE            cterm=standout          term=standout 

hi Title	    guifg=#c23c52       guibg=NONE          ctermfg=13      ctermbg=NONE    gui=bold            cterm=bold              term=bold 
hi Visual		guifg=DarkBlue      guibg=DarkGrey      ctermfg=NONE    ctermbg=NONE    gui=bold            cterm=reverse           term=reverse 
hi VisualNOS	guifg=NONE          guibg=NONE          ctermfg=NONE    ctermbg=NONE    gui=bold,underline  cterm=bold,underline    term=bold,underline 

hi SpecialKey	guifg=Cyan          guibg=NONE          ctermfg=9       ctermbg=NONE    gui=NONE            cterm=bold              term=bold 
hi WildMenu     guifg=Black         guibg=Khaki	        ctermfg=0       ctermbg=6       gui=NONE            cterm=NONE              term=standout 

hi Cursor       guifg=NONE          guibg=#7a7564       ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=NONE
hi CursorLine   guifg=NONE          guibg=#4a473d       ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=NONE
hi CursorColumn guifg=NONE          guibg=#5e5a4c
hi Directory    guifg=#60a4db       guibg=NONE          ctermfg=11 

hi DiffAdd      guifg=NONE          guibg=#203320       ctermfg=NONE    ctermbg=1       gui=NONE            cterm=bold              term=bold
hi DiffChange	guifg=NONE          guibg=#2b3363       ctermfg=NONE    ctermbg=12      gui=NONE            cterm=bold              term=bold
hi DiffLine	    guifg=NONE          guibg=#2b3363       ctermfg=NONE    ctermbg=12      gui=NONE            cterm=bold              term=bold
hi DiffDelete   guifg=#c75454       guibg=#5c1b1b       ctermfg=9       ctermbg=3       gui=bold            cterm=bold              term=bold
hi DiffText	    guifg=#c75454       guibg=#5c1b1b       ctermfg=NONE    ctermbg=12      gui=bold            cterm=bold              term=reverse

hi ErrorMsg	    guifg=NONE          guibg=#592929       ctermfg=white   ctermbg=124     gui=NONE            cterm=bold
hi FoldColumn	guifg=DarkBlue      guibg=DarkGrey      ctermfg=11      ctermbg=8       gui=NONE            cterm=NONE              term=standout 
hi IncSearch	guifg=NONE          guibg=NONE          ctermfg=NONE    ctermbg=NONE    gui=reverse         cterm=reverse           term=reverse 
hi ModeMsg		guifg=NONE          guibg=NONE          ctermfg=NONE    ctermbg=NONE    gui=bold            cterm=bold              term=bold 
hi MoreMsg		guifg=SeaGreen      guibg=NONE          ctermfg=10      ctermbg=NONE    gui=bold            cterm=bold              term=bold
hi Question	    guifg=#57db3d       guibg=NONE          ctermfg=28      ctermbg=NONE    gui=bold            cterm=standout          term=standout
hi WarningMsg   guifg=NONE          guibg=NONE          ctermfg=1
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment      guifg=#99968b       guibg=NONE          ctermfg=247     ctermbg=NONE    gui=NONE            cterm=bold
hi String       guifg=#e5786d       guibg=NONE          ctermfg=203     ctermbg=NONE    gui=NONE
hi Number       guifg=#FF73FD       guibg=NONE          ctermfg=203     ctermbg=NONE    gui=NONE
hi Exception    guifg=#6ca33c       guibg=NONE

hi Special	    guifg=Orange        guibg=NONE          ctermfg=6       ctermbg=NONE    gui=NONE            cterm=bold
hi Constant	    guifg=#d64f4f       guibg=NONE          ctermfg=13      ctermbg=NONE    gui=NONE
hi Identifier	guifg=#4d8f4d       guibg=NONE          ctermfg=113     ctermbg=NONE    gui=NONE
hi PreProc	    guifg=#ff80ff       guibg=NONE          ctermfg=9       ctermbg=NONE    gui=NONE
hi Underlined	guifg=NONE          guibg=NONE          ctermfg=NONE    ctermbg=NONE    gui=underline       cterm=underline
hi Function     guifg=#88bd5a
hi Error		guifg=#d6bcbc       guibg=#801717       ctermfg=14      ctermbg=12      gui=NONE            cterm=reverse
hi Todo		    guifg=#ffff61       guibg=NONE          ctermfg=0       ctermbg=14      gui=NONE            cterm=standout

hi Statement	guifg=#8ac6f2       guibg=NONE          ctermfg=27
hi Type		    guifg=#89c455       guibg=NONE          ctermfg=2       ctermbg=NONE    gui=NONE
"hi Ignore		

hi pythonDecoratorName  guifg=#f6f3e8
hi pythonString         guifg=#db7777 ctermfg=203
"hi pythonRawString guifg=Red
hi pythonBuiltin guifg=#1f7817 gui=NONE
"hi pythonException guifg=Red
hi Operator     guifg=#3bb330
hi Keyword      guifg=#64bd17       guibg=NONE          ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=standout
hi Pmenu        guifg=#c7d7e3       guibg=#1c5973
hi PmenuSel     guifg=#1c5973       guibg=#c7d7e3
hi PmenuSbar    guifg=NONE          guibg=#76abab
hi PmenuThumb   guifg=#123947       guibg=#76abab
hi SpellBad     guifg=#b33750       guibg=NONE
hi MatchParen   guifg=#2ed5ff       guibg=NONE
hi Folded       guifg=#bdbdbd       guibg=#524a52
hi FoldColumn   guifg=#bdbdbd       guibg=#524a52
