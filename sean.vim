" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:Sean Richards	
" Last Change:Fri Aug 30  8:50 2002 NZST
" 33 104 182
"
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "sean"
hi Normal		  	guifg=#8090a0 guibg=black
hi SpecialKey	  	guifg=#216abe gui=bold
hi NonText		  	guifg=#216abe
hi Directory	  	guifg=#216abe
hi ErrorMsg		  	guifg=White  guibg=Red
hi Search		  	guifg=white  guibg=Red
hi MoreMsg		  	guifg=SeaGreen
hi ModeMsg		  	guifg=White	guibg=Blue
hi LineNr		  	ctermfg=Darkyellow guifg=#0087ac
hi Question		  	guifg=Green
hi StatusLineNC		cterm=none ctermfg=grey ctermbg=darkblue gui=NONE guifg=white guibg=darkblue
hi StatusLine		cterm=none ctermfg=white ctermbg=darkblue guifg=white	guibg=darkblue
hi VertSplit	  	guifg=White	guibg=darkblue
hi Title			guifg=Magenta
hi Visual			cterm=none ctermfg=white ctermbg=darkgreen gui=NONE		guifg=white guibg=darkgreen
hi WarningMsg		guifg=Red
hi FoldColumn		ctermfg=Black ctermbg=Grey guibg=DarkGrey guifg=Black
hi ColorColumn		ctermfg=Black ctermbg=Grey guibg=green guifg=Black
hi Folded			ctermfg=Black ctermbg=Grey guifg=Black
hi Cursor			guifg=bg	guibg=Green
hi CursorLine       cterm=NONE ctermbg=darkred ctermfg=white guibg=#1f1f1f
hi Comment			cterm=none ctermfg=darkgreen guifg=darkgreen
hi Constant			ctermfg=magenta guifg=magenta
hi Special			ctermfg=darkyellow guifg=Orange
hi Identifier		ctermfg=cyan guifg=cyan 
hi Statement		ctermfg=darkyellow guifg=darkyellow gui=NONE
"hi Number			ctermfg=Cyan guifg=Cyan
hi Operator         ctermfg=Blue guifg=Blue gui=bold
hi PreProc			ctermfg=darkmagenta guifg=magenta
hi String			ctermfg=darkred guifg=#C0C0C0 guibg=#505050
hi Type				ctermfg=darkblue  guifg=#216abe gui=NONE
hi Error			ctermfg=red guifg=Red	guibg=Black
hi Todo				ctermfg=blue ctermbg=yellow guifg=Blue  guibg=Yellow
hi Pmenu            ctermfg=black ctermbg=magenta guifg=black guibg=magenta
hi Pmenusel         ctermfg=black ctermbg=yellow guifg=black guibg=yellow
hi link IncSearch		Visual
"hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
"hi link Operator		Statement
hi link Keyword			Operator
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special


"Toggle semicolon matching at the end of lines, author unknown!
nmap <silent> <leader>sc :call ToggleSemicolonHighlighting()<cr>
"{{{
function! ToggleSemicolonHighlighting()
	if exists("b:semicolon")
		unlet b:semicolon
		hi semicolon guifg=NONE gui=NONE ctermfg=NONE
	else
		syn match semicolon #;$#
		hi semicolon guifg=red gui=bold ctermfg=1
		let b:semicolon = 1
	endif
endfunction
"}}}
