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
 	
function! s:hifg(group, guifg, ctermfg)
    exe "highlight ".a:group." guifg=".a:guifg." ctermfg=".a:ctermfg
endfunction

function! s:hibg(group, guibg, ctermbg)
    exe "highlight ".a:group." guibg=".a:guibg." ctermbg=".a:ctermbg
endfunction

call s:hifg("Normal", "#d6d3c9", 188)
call s:hibg("Normal", "#242424", 235)

hi link railsMethod             PreProc
hi link rubyDefine              Keyword
hi link rubySymbol              Constant
hi link rubyAccess              rubyMethod
hi link rubyAttribute           rubyMethod
hi link rubyEval                rubyMethod
hi link rubyException           rubyMethod
hi link rubyInclude             rubyMethod
hi link rubyStringDelimiter     rubyString
hi link rubyRegexp              Regexp
hi link rubyRegexpDelimiter     rubyRegexp
"hi link rubyConstant        Variable
"hi link rubyGlobalVariable  Variable
"hi link rubyClassVariable   Variable
"hi link rubyInstanceVariable Variable
hi link javascriptRegexpString  Regexp
hi link javascriptNumber        Number
hi link javascriptNull          Constant
hi link diffAdded               String
hi link diffRemoved             Statement
hi link diffLine                PreProc
hi link diffSubname             Comment

call s:hifg("StatusLine", "Black", "Black")
call s:hibg("StatusLine", "#aabbee", "White")
hi StatusLine gui=bold cterm=bold

call s:hifg("StatusLineNC", "#e4e6e1", "Black")
call s:hibg("StatusLineNC", "#163b10", "Grey")

hi NonText		guifg=Blue          guibg=NONE          ctermfg=9       ctermbg=NONE    gui=bold            cterm=bold
hi Cursor       guifg=NONE          guibg=#656565       ctermfg=NONE    ctermbg=241     gui=bold            cterm=bold
hi LineNr		guifg=#999934       guibg=NONE          ctermfg=14      ctermbg=NONE    gui=NONE            cterm=NONE
hi SignColumn   guibg=#242424

hi VertSplit	guifg=slategrey     guibg=grey30        ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=NONE
hi StatusLine	guifg=#e4e6e1       guibg=#1c4a15       ctermfg=NONE    ctermbg=NONE    gui=NONE            cterm=bold,reverse      term=reverse 
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
call s:hifg("Comment", "#808080", "244")
call s:hibg("Comment", "NONE", "NONE")
hi Comment cterm=bold

call s:hifg("Number", "#d787ff", "177")
call s:hibg("Number", "NONE", "NONE")

hi Exception    guifg=#6ca33c       guibg=NONE

hi Special	    guifg=Orange        guibg=NONE          ctermfg=6       ctermbg=NONE    gui=NONE            cterm=bold
hi Constant	    guifg=#d64f4f       guibg=NONE          ctermfg=13      ctermbg=NONE    gui=NONE
hi Identifier	guifg=#4d8f4d       guibg=NONE          ctermfg=113     ctermbg=NONE    gui=NONE
call s:hifg("PreProc", "#afaf5f", "143")
hi Underlined	guifg=NONE          guibg=NONE          ctermfg=NONE    ctermbg=NONE    gui=underline       cterm=underline

call s:hifg("Function", "#88bd5a", "34")
call s:hibg("Function", "NONE", "NONE")

call s:hifg("Error", "#ff0000", "9")
call s:hibg("Error", "NONE", "NONE")

call s:hifg("Todo", "#00ffff", "51")
call s:hibg("Todo", "NONE", "NONE")

call s:hifg("Statement", "#5f87ff", "69")

call s:hifg("Type", "#89c455", "38")
call s:hibg("Type", "NONE", "NONE")

hi Ignore        ctermfg=Black

hi pythonDecoratorName  guifg=#f6f3e8
call s:hifg("pythonString", "#db7777", "203")

hi pythonBuiltin guifg=#1f7817 gui=NONE
"hi pythonException guifg=Red
call s:hifg("Operator", "#00af5f", "35")
call s:hifg("Keyword", "#008700", "28")

hi Pmenu        guifg=#c7d7e3       guibg=#1c5973
hi PmenuSel     guifg=#1c5973       guibg=#c7d7e3
hi PmenuSbar    guifg=NONE          guibg=#76abab
hi PmenuThumb   guifg=#123947       guibg=#76abab
hi SpellBad     guifg=#b33750       guibg=NONE
hi MatchParen   guifg=#2ed5ff       guibg=NONE
call s:hifg("Folded","#bdbdbd", 249)
call s:hibg("Folded","#4e4e4e", 239)
hi FoldColumn   guifg=#bdbdbd       guibg=#524a52

call s:hibg("ColorColumn", "#585858", "240")

" hi Type gui=none
" hi Statement gui=none
" if !has("gui_mac")
"     " Mac GUI degrades italics to ugly underlining.
"     hi Comment gui=italic
"     hi railsUserClass  gui=italic
"     hi railsUserMethod gui=italic
" endif

call s:hifg("String", "#ff5f5f", "203")
