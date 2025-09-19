" Name:         sphere
" Description:  Color scheme based dark blue
" Author:       devoc09
" Maintainer:   devoc09
" Website:      https://github.com/devoc09/sphere.vim
" License:      Vim License (see `:help license`)
" Last Change:  2025 Jun 22

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'sphere'

" Configuration options
if !exists('g:transparent_background')
  let g:transparent_background = 0
endif

if has('termguicolors') && &termguicolors
  let g:terminal_ansi_colors = ['#1d1c1e', '#ff7074', '#498791', '#ff9548', '#75ace9', '#827ff5', '#6887ad', '#fefefe', '#4e4e4e', '#fe95a0', '#244c51', '#ffb74d', '#b8e7e1', '#a6ace9', '#344359', '#ccb08f']
  " Nvim uses g:terminal_color_{0-15} instead
  for i in range(g:terminal_ansi_colors->len())
    let g:terminal_color_{i} = g:terminal_ansi_colors[i]
  endfor
  hi! link CursorLineFold FoldColumn
  hi! link CursorLineSign SignColumn
  hi! link MessageWindow Pmenu
  hi! link PopupNotification Todo
  hi! link PopupSelected PmenuSel
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link Terminal Normal
  hi! link Delimiter PreProc
  hi! link Operator PreProc
  hi! link StorageClass PreProc
  hi! link Structure PreProc
  hi! link Define Identifier
  hi! link Label String
  hi! link markdownCode Comment
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownCode

  " Apply colors based on transparent background setting
  if g:transparent_background
    hi Normal guifg=#fefefe guibg=NONE gui=NONE cterm=NONE
    hi CursorLine guifg=NONE guibg=NONE gui=NONE cterm=NONE
    hi CursorColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#fefefe guibg=#1d1c1e gui=NONE cterm=NONE
    hi CursorLine guifg=NONE guibg=#2F2D30 gui=NONE cterm=NONE
    hi CursorColumn guifg=NONE guibg=#3a392f gui=NONE cterm=NONE
  endif

  hi StatusLine guifg=#fefefe guibg=#4e4e4e gui=NONE cterm=NONE
  hi StatusLineNC guifg=#1d1c1e guibg=#74705d gui=NONE cterm=NONE
  hi VertSplit guifg=#74705d guibg=#74705d gui=NONE cterm=NONE
  hi TabLine guifg=#1d1c1e guibg=#4e4e4e gui=NONE cterm=NONE
  hi TabLineFill guifg=#fefefe guibg=#1d1c1e gui=NONE cterm=NONE
  hi TabLineSel guifg=#1d1c1e guibg=#75ace9 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton guifg=#74705d guibg=#fefefe gui=bold,reverse cterm=bold,reverse
  hi QuickFixLine guifg=#1d1c1e guibg=#75ace9 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#fefefe guibg=NONE gui=bold cterm=bold
  hi LineNr guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi LineNrAbove guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi LineNrBelow guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi Visual guifg=#6887ad guibg=#1d1c1e gui=reverse cterm=reverse
  hi VisualNOS guifg=#1d1c1e guibg=#344359 gui=NONE cterm=NONE
  hi Pmenu guifg=NONE guibg=#736350 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#74705d gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel guifg=NONE guibg=#4e4e4e gui=NONE cterm=NONE
  hi PmenuKind guifg=#344359 guibg=#736350 gui=NONE cterm=NONE
  hi PmenuKindSel guifg=#344359 guibg=#4e4e4e gui=NONE cterm=NONE
  hi PmenuExtra guifg=#ccb08f guibg=#736350 gui=NONE cterm=NONE
  hi PmenuExtraSel guifg=#ccb08f guibg=#4e4e4e gui=NONE cterm=NONE
  hi PmenuMatch guifg=#ff9548 guibg=#736350 gui=NONE cterm=NONE
  hi PmenuMatchSel guifg=#ff9548 guibg=#4e4e4e gui=NONE cterm=NONE
  hi SignColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Error guifg=#ff7074 guibg=#000000 gui=reverse cterm=reverse
  hi ErrorMsg guifg=#ff7074 guibg=#000000 gui=reverse cterm=reverse
  hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg guifg=#244c51 guibg=NONE gui=NONE cterm=NONE
  hi Question guifg=#fefefe guibg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#ffb74d guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#ffb74d guibg=NONE gui=bold cterm=bold
  hi MatchParen guifg=#ff9548 guibg=NONE gui=bold cterm=bold
  hi Search guifg=#b8e7e1 guibg=#1d1c1e gui=reverse cterm=reverse
  hi IncSearch guifg=#ff9548 guibg=#1d1c1e gui=reverse cterm=reverse
  hi CurSearch guifg=#ff9548 guibg=#1d1c1e gui=reverse cterm=reverse
  hi WildMenu guifg=#1d1c1e guibg=#ffb74d gui=bold cterm=bold
  hi debugPC guifg=#1d1c1e guibg=#75ace9 gui=NONE cterm=NONE
  hi debugBreakpoint guifg=#1d1c1e guibg=#fe95a0 gui=NONE cterm=NONE
  hi Cursor guifg=#000000 guibg=#dadada gui=NONE cterm=NONE
  hi lCursor guifg=#1d1c1e guibg=#418c72 gui=NONE cterm=NONE
  hi Folded guifg=#ccb08f guibg=#5c4f40 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#736350 gui=NONE cterm=NONE
  hi SpellBad guifg=NONE guibg=NONE guisp=#d75f5f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellCap guifg=NONE guibg=NONE guisp=#ff9548 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellLocal guifg=NONE guibg=NONE guisp=#498791 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellRare guifg=NONE guibg=NONE guisp=#827ff5 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi Constant guifg=#827ff5 guibg=NONE gui=NONE cterm=NONE
  hi Type guifg=#ff9548 guibg=NONE gui=bold cterm=bold
  hi Character guifg=#498791 guibg=NONE gui=NONE cterm=NONE
  hi Comment guifg=#244c51 guibg=NONE gui=NONE cterm=NONE
  hi String guifg=#b8e7e1 guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#75ace9 guibg=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#b8e7e1 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#fefefe guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#ff9548 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#75ace9 guibg=NONE gui=bold cterm=bold
  hi Underlined guifg=#b8e7e1 guibg=NONE gui=underline cterm=underline
  hi Title guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi Debug guifg=#344359 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Directory guifg=#6887ad guibg=NONE gui=bold cterm=bold
  hi Conceal guifg=#4e4e4e guibg=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=#244c51 guibg=NONE gui=reverse cterm=reverse
  hi DiffChange guifg=#6887ad guibg=NONE gui=reverse cterm=reverse
  hi DiffText guifg=#827ff5 guibg=NONE gui=reverse cterm=reverse
  hi DiffDelete guifg=#ff7074 guibg=NONE gui=reverse cterm=reverse
  hi Added guifg=#498791 guibg=NONE gui=NONE cterm=NONE
  hi Changed guifg=#ff9548 guibg=NONE gui=NONE cterm=NONE
  hi Removed guifg=#d75f5f guibg=NONE gui=NONE cterm=NONE
  hi htmlBold guifg=#fefefe guibg=NONE gui=bold cterm=bold
  hi htmlItalic guifg=#fefefe guibg=NONE gui=italic cterm=italic
  hi markdownHeadingDelimiter guifg=#fefefe guibg=NONE gui=NONE cterm=NONE
  hi markdownH1Delimiter guifg=#fe95a0 guibg=NONE gui=NONE cterm=NONE
  hi markdownH2Delimiter guifg=#ffb74d guibg=NONE gui=NONE cterm=NONE
  hi markdownH4Delimiter guifg=#b8e7e1 guibg=NONE gui=NONE cterm=NONE
  hi markdownH6Delimiter guifg=#498791 guibg=NONE gui=NONE cterm=NONE
  hi markdownH3Delimiter guifg=#ff9548 guibg=NONE gui=NONE cterm=NONE
  hi markdownH5Delimiter guifg=#75ace9 guibg=NONE gui=NONE cterm=NONE
  if has('nvim-0.10')
    " Neovim's Floating Window
    hi! link NormalFloat Normal
    hi FloatBorder guifg=#75ace9

    " Treesitter highlight
    hi @variable guifg=#fefefe
    hi @punctuation guifg=#b8e7e1
    hi @parameter guifg=#fefefe
    hi @include guifg=#ff9548
    hi @field guifg=#827ff5
    hi @property guifg=#827ff5
    hi! link @method Function
  endif

" if not supported TrueColor & supported xterm-256color
elseif &t_Co == 256
  " TODO: implement highlight for 256 color terminal
  colorscheme default
" Not supported TreuColor & xterm-256color
else
  colorscheme default
endif

" Color: color00               #1d1c1e        234            *black
" Color: color08               #4e4e4e        239            *darkgray
" Color: color01               #ff7074        210            *darkred
" Color: color09               #fe95a0        219            *red
" Color: color02               #498791        37             *darkgreen
" Color: color10               #244c51        23             *green
" Color: color03               #ff9548        208            *darkyellow
" Color: color11               #ffb74d        215            *yellow
" Color: color04               #75ace9        111            *darkblue
" Color: color12               #b8e7e1        159            *blue
" Color: color05               #827ff5        207            *darkmagenta
" Color: color13               #a6ace9        105            *magenta
" Color: color06               #6887ad        67             *darkcyan
" Color: color14               #344359        24             *cyan
" Color: color07               #fefefe        254            *white
" Color: color15               #ccb08f        144            *gray
" Color: colorLine             #b0977b        180            *darkgrey
" Color: colorB                #736350        136            *darkgrey
" Color: colorF                #5C4F40        137            *darkgrey
" Color: colorNonT             #4e4e4e        239            *darkgrey
" Color: colorC                #ff9548        208            *red
" Color: colorlC               #418c72        72             *green
" Color: colorV                #6887ad        67             *cyan
" Color: colorMP               #ff9548        208            *darkyellow
" Color: diffAdd               #244c51        23             *darkgreen
" Color: diffDelete            #ff7074        210            *darkred
" Color: diffChange            #6887ad        67             *darkblue
" Color: diffText              #827ff5        207            *darkmagenta
" Color: black                 #1d1c1e        234            *black
" Color: white                 #fefefe        254            *white
" Color: Added                 #498791        37             *green
" Color: Changed               #ff954b        208            *darkyellow
" Color: Removed               #ff7074        210            *darkred
" Term colors: color00 color01 color02 color03 color04 color05 color06 color07
" Term colors: color08 color09 color10 color11 color12 color13 color14 color15
" vim: et ts=8 sw=2 sts=2
