if exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword bscriptControl return if else for while on parallel
syntax keyword bscriptOther import new
syntax keyword bscriptStorage let func class
syntax keyword bscriptConstant true false null

" Match single-line and multi-line comments
syntax match bscriptComment "//.*" contains=@Spell
syntax region bscriptComment start="/\*" end="\*/" contains=@Spell

" Match strings and escaped characters
syntax region bscriptString start=/"/ end=/"/ contains=bscriptEscape
syntax match bscriptEscape /\\./ contained

" Numeric constants
syntax match bscriptNumber /\v-?(\d*\.\d+|\d+\.\d*|\d+)/

" Built-in functions and classes
syntax keyword bscriptBuiltin print println len commit_result
syntax keyword bscriptClass Data IntermediateResult

" Variables
syntax keyword bscriptVariable self
syntax match bscriptVariableName /\<[a-zA-Z][a-zA-Z0-9_]*\>/

" Annotations
syntax region bscriptAnnotation start=/#\[/ end=/\]/ contains=bscriptString,bscriptParameter
syntax match bscriptParameter /\<[a-zA-Z_][a-zA-Z0-9_]*\>/ contained

" Highlight groups
highlight link bscriptControl Keyword
highlight link bscriptOther Keyword
highlight link bscriptStorage Type
highlight link bscriptConstant Constant
highlight link bscriptComment Comment
highlight link bscriptString String
highlight link bscriptEscape Special
highlight link bscriptNumber Number
highlight link bscriptBuiltin Function
highlight link bscriptClass Type
highlight link bscriptVariable Identifier
highlight link bscriptVariableName Identifier
highlight link bscriptAnnotation PreProc
highlight link bscriptParameter Identifier


let b:current_syntax = "branescript"

