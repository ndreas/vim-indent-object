"--------------------------------------------------------------------------------
"
"  Copyright (c) 2010 Michael Smith <msmith@msmith.id.au>
"  Modified work Copyright (c) 2020 Andreas Johansson
"
"  http://github.com/michaeljsmith/vim-indent-object
"
"  Permission is hereby granted, free of charge, to any person obtaining a copy
"  of this software and associated documentation files (the "Software"), to
"  deal in the Software without restriction, including without limitation the
"  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
"  sell copies of the Software, and to permit persons to whom the Software is
"  furnished to do so, subject to the following conditions:
"
"  The above copyright notice and this permission notice shall be included in
"  all copies or substantial portions of the Software.
"
"  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
"  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
"  IN THE SOFTWARE.
"
"--------------------------------------------------------------------------------

" Mappings excluding line below.
onoremap <silent>ai :<C-u>call indentobject#HandleMapping(0, 0, 0, [line("."), line("."), col("."), col(".")])<CR>
onoremap <silent>ii :<C-u>call indentobject#HandleMapping(1, 0, 0, [line("."), line("."), col("."), col(".")])<CR>
vnoremap <silent>ai :<C-u>cal indentobject#HandleMapping(0, 0, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
vnoremap <silent>ii :<C-u>call indentobject#HandleMapping(1, 0, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv

" Mappings including line below.
onoremap <silent>aI :<C-u>call indentobject#HandleMapping(0, 1, 0, [line("."), line("."), col("."), col(".")])<CR>
onoremap <silent>iI :<C-u>call indentobject#HandleMapping(1, 1, 0, [line("."), line("."), col("."), col(".")])<CR>
vnoremap <silent>aI :<C-u>call indentobject#HandleMapping(0, 1, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
vnoremap <silent>iI :<C-u>call indentobject#HandleMapping(1, 1, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
