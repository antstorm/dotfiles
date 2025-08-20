" twilight.vim --- Twilight Color Scheme for Vim.

" Copyright (C) 2008 Jonathan Rudenberg <jonathan@titanous.com>
" Copyright (C) 2024 Ramon Asuncion <ramon@b1t.dev>

" Permission is hereby granted, free of charge, to any person
" obtaining a copy of this software and associated documentation
" files (the "Software"), to deal in the Software without
" restriction, including without limitation the rights to use,
" copy, modify, merge, publish, distribute, sublicense, and/or
" sell copies of the Software, and to permit persons to whom the
" Software is furnished to do so, subject to the following
" conditions:
"
" The above copyright notice and this permission notice shall
" be included in all copies or substantial portions of the
" Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
" OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
" HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
" WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
" FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
" OTHER DEALINGS IN THE SOFTWARE.

" Support only 256 or full colors
if !has('gui_running') && &t_Co < 256
  finish
endif

" Set appropriate background
set background=dark

" Reset existing highlights and syntax
hi clear
if exists("syntax_on")
  syntax reset
endif

" Name of the color scheme
let g:colors_name = "twilight"

" General color settings
hi Normal       guifg=#F8F8F8 guibg=#141414
hi Cursor       guifg=NONE    guibg=#CDA869
hi CursorLine   guifg=NONE    guibg=#1B1B1B
hi CursorColumn guifg=NONE    guibg=#1B1B1B
hi LineNr       guifg=#868686 guibg=#141414
hi VertSplit    guifg=#3F3F3F guibg=#3F3F3F
hi MatchParen   guifg=#CDA869 guibg=NONE
hi StatusLine   guifg=#F8F8F8 guibg=#3F3F3F gui=bold
hi StatusLineNC guifg=#F8F8F8 guibg=#3F3F3F
hi TabLine      guifg=#F8F8F8 guibg=#3F3F3F
hi TabLineFill  guifg=#F8F8F8 guibg=#3F3F3F
hi TabLineSel   guifg=#F8F8F8 guibg=#3F3F3F gui=bold
hi Pmenu        guifg=#9B703F guibg=NONE
hi PmenuSel     guifg=NONE    guibg=#3C4043
hi IncSearch    guifg=NONE    guibg=#343A44
hi Search       guifg=NONE    guibg=#343A44
hi Directory    guifg=#CF6A4C guibg=NONE
hi Folded       guifg=#5F5A60 guibg=#141414

" Syntax Highlighting
hi Comment      guifg=#5F5A60
hi Constant     guifg=#CF6A4C
hi Identifier   guifg=#7587A6
hi Statement    guifg=#CDA869 gui=None
hi Type         guifg=#89788a gui=None
hi Special      guifg=#F8F8F8
hi Underlined   guifg=NONE    guibg=NONE gui=underline
hi Ignore       guifg=NONE    guibg=NONE
hi Todo         guifg=#5F5A60 guibg=NONE gui=bold
hi String       guifg=#8F9D6A
hi Character    guifg=#8F9D6A
hi SpecialChar  guifg=#8F9D6A
hi Function     guifg=#9B703F
hi Conditional  guifg=#CDA869
hi Repeat       guifg=#CDA869
hi Operator     guifg=#CDA869
hi Keyword      guifg=#CDA869
hi Exception    guifg=#CDA869
hi Include      guifg=#CF6A4C
hi Title        guifg=#F8F8F8 gui=bold
hi Float        guifg=#CF6A4C
hi Number       guifg=#CF6A4C
hi Boolean      guifg=#CF6A4C
hi Label        guifg=#CDA869
hi NonText      guifg=#4F4F4F guibg=#141414
hi SpecialKey   guifg=#4F4F4F guibg=#1B1B1B
hi StorageClass guifg=#CDA869
hi Tag          guifg=#9B703F
hi Delimiter    guifg=#F8F8F8
hi SpecialComment guifg=#5F5A60 gui=italic
hi Debug        guifg=#CF6A4C
hi Trace        guifg=#CF6A4C

" C
hi PreProc      guifg=#CF6A4C
hi cTypedef     guifg=#CDA869 gui=None
hi cDefine       guifg=#CF6A4C

