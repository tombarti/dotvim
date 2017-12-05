" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" generate pdf from dvi
"let g:tex_flavor='latex'  
let g:Tex_FormatDependency_pdf = 'pdf'

let g:Tex_CompileRule_dvi = 'pdflatex --interaction=nonstopmode $*'
"let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex $*'

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,bibtex,dvi'
let g:Tex_ViewRule_pdf =  'evince $*'
