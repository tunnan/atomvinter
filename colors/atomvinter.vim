" Atomvinter
" Author: Tunnan <https://github.com/tunnan>
" Maintainer: Tunnan <https://github.com/tunnan>
" Notes: To check the meaning of the highlight groups, :help 'highlight'

set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="atomvinter"
let s:dark0="#2A2426"
let s:dark1="#242021"
let s:light0="#ebdbb2"
let s:light1="#a89984"
let s:gray="#837568"
let s:red="#E68183"
let s:green="#ADBE5F"
let s:yellow="#D9BB80"
let s:blue="#A5C7A3"
let s:purple="#D7A9C2"
let s:orange="#E39B7B"
let s:not_implemented="#FF00FF"

fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, gui)
	if a:guifg != ""
		exec "hi " . a:group . " guifg=" . a:guifg
	endif
	if a:guibg != ""
		exec "hi " . a:group . " guibg=" . a:guibg
	endif
	if a:ctermfg != ""
		exec "hi " . a:group . " ctermfg=" . a:ctermfg
	endif
	if a:ctermbg != ""
		exec "hi " . a:group . " ctermbg=" . a:ctermbg
	endif
	if a:gui != ""
		exec "hi " . a:group . " gui=" . a:gui
	else
		exec "hi " . a:group . " gui=none"
	endif
	exec "hi " . a:group . " cterm=none"
endfun

" ================================
" Editor settings
" ================================
call <sid>hi("Normal", 			  s:light0, 	s:dark0,  	"", "", "")
call <sid>hi("Cursor", 			  s:dark0, 	  s:light0,	  "", "", "")
call <sid>hi("CursorLine",		"", 		    s:dark1, 	  "", "", "")
call <sid>hi("LineNr",			  s:gray,		  s:dark0, 	  "", "", "")
call <sid>hi("CursorLineNr",	s:yellow,	  s:dark1, 	  "", "", "")
call <sid>hi("VertSplit",		  s:dark1,	  s:dark0, 	  "", "", "")
call <sid>hi("StatusLine",		s:light1,	  s:dark1, 	  "", "", "")
call <sid>hi("StatusLineNC",	s:light0,	  s:dark0,	  "", "", "")
call <sid>hi("WildMenu",		  s:dark1,	  s:light0,	  "", "", "")
call <sid>hi("Pmenu",			    s:light1, 	s:dark1,  	"", "", "")
call <sid>hi("PmenuSel",		  s:dark1, 	  s:blue,   	"", "", "")
call <sid>hi("PmenuSbar",		  s:light0, 	s:dark1,  	"", "", "")
call <sid>hi("PmenuThumb",		s:dark1, 	  s:light0, 	"", "", "")
call <sid>hi("NonText", 		  s:dark0, 	  s:dark0, 	  "", "", "")
call <sid>hi("Todo", 			    s:light0, 	s:dark0, 	  "", "", "")
call <sid>hi("Bold", 			    "", 		    "", 		    "", "", "")
call <sid>hi("Error", 			  s:red, 		  s:dark0, 	  "", "", "")
call <sid>hi("ErrorMsg", 		  s:red, 		  s:dark0, 	  "", "", "")
call <sid>hi("WarningMsg", 		s:orange, 	s:dark0, 	  "", "", "")
call <sid>hi("CursorColumn", 	s:dark0, 	  s:light1, 	"", "", "")
call <sid>hi("FoldColumn", 		s:yellow, 	s:dark0, 	  "", "", "")
call <sid>hi("Folded", 			  s:gray, 	  s:dark0, 	  "", "", "")
call <sid>hi("SignColumn", 		"none",     s:dark0, 	  "", "", "")
call <sid>hi("Directory", 		s:light1, 	"", 	      "", "", "")
call <sid>hi("Search", 		    s:dark0, 	  s:gray, 	  "", "", "")
call <sid>hi("IncSearch", 		s:dark0, 	  s:light0, 	"", "", "")
call <sid>hi("ModeMsg", 		  s:light0, 	"", 	      "", "", "")
call <sid>hi("MatchParen", 	  s:dark0, 	  s:gray, 	  "", "", "")
call <sid>hi("Visual", 		    s:dark0,    s:light0, 	"", "", "")
call <sid>hi("VisualNOS", 		s:dark0, 	  s:light1, 	"", "", "")
call <sid>hi("ColorColumn", 	s:dark0, 		s:light0, 	"", "","")
call <sid>hi("TabLine", 		  s:light1, 	s:dark1, 	"", "", "")
call <sid>hi("TabLineFill", 	s:dark0, 		"", 	"", "", "")
call <sid>hi("TabLineSel", 		s:light0, 	s:dark0, 	"", "", "")
call <sid>hi("Question", 		  s:yellow, 	"", 	"", "", "")
call <sid>hi("Title", 			  s:blue, 	  "", 	"", "", "")
call <sid>hi("MoreMsg", 		  s:blue, 	  "", 	"", "", "")
"call <sid>hi("Ignore", 		  s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("SpecialKey", 	s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("DiffAdd", 		  s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("DiffChange", 	s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("DiffDelete", 	s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("DiffText", 		s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("SpellBad", 		s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("SpellCap", 		s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("SpellLocal", 	s:not_implemented, 	"", 	"", "", "")
"call <sid>hi("SpellRare", 		s:not_implemented, 	"", 	"", "", "")

" ================================
" Default language syntax
" ================================
call <sid>hi("Constant", 		    s:green, 	"", "", "", "")
call <sid>hi("String", 			    s:green, 	"", "", "", "")
call <sid>hi("StringDelimiter", s:green, 	"", "", "", "")
call <sid>hi("Character", 		  s:green, 	"", "", "", "")
call <sid>hi("Boolean", 		    s:purple, "", "", "", "")
call <sid>hi("Number", 			    s:purple, "", "", "", "")
call <sid>hi("Float", 			    s:purple, "", "", "", "")
call <sid>hi("Function", 		    s:green, 	"", "", "", "")
call <sid>hi("Identifier", 		  s:blue, 	"", "", "", "")
call <sid>hi("Statement", 		  s:red, 		"", "", "", "")
call <sid>hi("Comment", 		    s:gray, 	"", "", "", "")
call <sid>hi("Conditional", 	  s:red, 		"", "", "", "")
call <sid>hi("Repeat", 			    s:red, 		"", "", "", "")
call <sid>hi("Label", 			    s:blue, 	"", "", "", "")
call <sid>hi("Operator", 		    s:light0, "", "", "", "")
call <sid>hi("Keyword", 		    s:blue, 	"", "", "", "")
call <sid>hi("Special", 		    s:red, 	  "", "", "", "")
call <sid>hi("SpecialChar", 	  s:yellow, "", "", "", "")
call <sid>hi("Delimiter", 		  s:light0, "", "", "", "")
call <sid>hi("PreProc", 		    s:blue, 	"", "", "", "")
call <sid>hi("Structure", 		  s:blue, 	"", "", "", "")
call <sid>hi("Type", 			      s:yellow, "", "", "", "")
call <sid>hi("Exception", 		  s:red, 	  "", "", "", "")
call <sid>hi("SpecialComment",	s:blue, 	"", "", "", "")
call <sid>hi("Include", 		    s:blue, 	"", "", "", "")
call <sid>hi("Define", 		      s:blue, 	"", "", "", "")
call <sid>hi("Macro", 			    s:blue, 	"", "", "", "")
call <sid>hi("PreCondit", 		  s:red, 	  "", "", "", "")
call <sid>hi("StorageClass",	  s:blue, 	"", "", "", "")
"call <sid>hi("Tag", 			      s:not_implemented, 	"", "", "", "")
"call <sid>hi("Typedef", 		    s:not_implemented, 	"", "", "", "")
"call <sid>hi("Debug", 			    s:not_implemented, 	"", "", "", "")

" ================================
" CoC
" ================================
call <sid>hi("CocWarningSign",  		s:orange, "", "", "", "")
call <sid>hi("CocErrorSign",    		s:red,    "", "", "", "")
call <sid>hi("CocInfoSign",     		s:blue,   "", "", "", "")
call <sid>hi("CocHintSign",     		s:yellow, "", "", "", "")
call <sid>hi("CocUnusedHighlight",	s:yellow, "", "", "", "underline")

" ================================
" JavaScript / TypeScript
" ================================
call <sid>hi("typeScriptBraces", 			      s:light0, "", "", "", "")
call <sid>hi("typescriptTemplateSB", 		    s:red, 	  "", "", "", "")
call <sid>hi("typescriptBOMLocationMethod", s:red, 	  "", "", "", "")
call <sid>hi("typescriptDOMDocMethod",      s:red,    "", "", "", "")
call <sid>hi("jsFunction",                  s:blue,   "", "", "", "")

" ================================
" C / C++
" ================================
call <sid>hi("cType",           s:blue,   "", "", "", "")
call <sid>hi("cPreCondit",      s:blue,   "", "", "", "")

" ================================
" Rust
" ================================
call <sid>hi("rustKeyword",     s:red,   "", "", "", "")
call <sid>hi("rustAttribute",   s:red,   "", "", "", "")
call <sid>hi("rustDerive",      s:red,   "", "", "", "")
call <sid>hi("rustDeriveTrait", s:red,   "", "", "", "")

" ================================
" Makefile
" ================================
call <sid>hi("makeCommands",		s:light0, "", "", "", "")
