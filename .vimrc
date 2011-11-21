syntax on

set showcmd
set nocompatible
set wildmenu
set backupdir=~/.tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/.tmp,/var/tmp/vi.recover,/tmp,.
set backup		" keep a backup file
" set textwidth=78
" set shiftwidth=4
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set cin
set ru
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch
set nowrap
set hls
set tabstop=2
set shiftwidth=2
set expandtab

"set background=dark	" another is 'light'

" VIM 6.0,
if version >= 600
	" set foldcolumn=2
	" set foldmethod=syntax
	set foldmethod=marker
	"    set foldlevel=1
	"    set foldtext=/^/=>
	set encoding=utf-8
	set fileencodings=utf-8,big5
else
	set fileencoding=taiwan
endif

if has("autocmd")
	autocmd BufRead,BufNewFile *.c,*.cpp,*.C,*.cc map Q ma:% s/\/\/\/\//\/\*\*\//g'a
	autocmd BufRead,BufNewFile *.c,*.cpp,*.C,*.cc map q ma:% s/\/\*\*\//\/\/\/\//g'a
	autocmd BufRead,BufNewFile *.c,*.cpp,*.C,*.cc set kp=man\ -S\ 3:2
	autocmd BufRead,BufNewFile *.pl set kp=perldoc\ -f
	autocmd BufRead,BufNewFile *.tex map L :w:mak %<.pdf
	autocmd BufRead,BufNewFile *.tex set fileencodings=big5,ucs-bom,utf-8,sjis,latin1
endif

:map L :w:mak %<
:map U :w
if version >= 700
	:map <C-j> :tabnext
	:map <C-k> :tabprev
	:map <C-n> :tabnew 
	:hi MatchParen     term=reverse cterm=bold ctermfg=3 ctermbg=4
	:hi Pmenu          cterm=bold ctermfg=3 ctermbg=2
	:hi PmenuSel       cterm=bold ctermfg=1 ctermbg=2
endif

:hi SpecialKey     term=bold cterm=bold ctermfg=4 guifg=Cyan
:hi NonText        term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
:hi Directory      term=bold cterm=bold ctermfg=6 guifg=Cyan
:hi ErrorMsg       term=standout cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
:hi IncSearch      term=reverse cterm=reverse gui=reverse
:hi Search         term=reverse ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
:hi MoreMsg        term=bold cterm=bold ctermfg=2 gui=bold guifg=SeaGreen
:hi ModeMsg        term=bold cterm=bold gui=bold
:hi LineNr         term=underline cterm=bold ctermfg=3 guifg=Yellow
:hi Question       term=standout cterm=bold ctermfg=2 gui=bold guifg=Green
:hi StatusLine     term=bold,reverse cterm=bold,reverse gui=bold,reverse
:hi StatusLineNC   term=reverse cterm=reverse gui=reverse
:hi VertSplit      term=reverse cterm=reverse gui=reverse
:hi Title          term=bold cterm=bold ctermfg=5 gui=bold guifg=Magenta
:hi Visual         term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
:hi VisualNOS      term=bold,underline cterm=bold,underline gui=bold,underline
:hi WarningMsg     term=standout cterm=bold ctermfg=1 guifg=Red
:hi WildMenu       term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
:hi Folded         term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=Cyan guibg=DarkGrey
:hi FoldColumn     term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=Cyan guibg=Grey
:hi DiffAdd        term=bold ctermbg=4 guibg=DarkBlue
:hi DiffChange     term=bold ctermbg=5 guibg=DarkMagenta
:hi DiffDelete     term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
:hi DiffText       term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red
:hi Cursor         guifg=bg guibg=fg
:hi lCursor        guifg=bg guibg=fg
:hi Comment        term=bold cterm=bold ctermfg=6 guifg=#80a0ff
:hi Constant       term=underline cterm=bold ctermfg=5 guifg=#ffa0a0
:hi Special        term=bold cterm=bold ctermfg=1 guifg=Orange
:hi Identifier     term=underline cterm=bold ctermfg=6 guifg=#40ffff
:hi Statement      term=bold cterm=bold ctermfg=3 gui=bold guifg=#ffff60
:hi PreProc        term=underline cterm=bold ctermfg=4 guifg=#ff80ff
:hi Type           term=underline cterm=bold ctermfg=2 gui=bold guifg=#60ff60
:hi Underlined     term=underline cterm=bold,underline ctermfg=4 gui=underline guifg=#80a0ff
:hi Ignore         ctermfg=0 guifg=bg
:hi Error          term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
:hi Todo           term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
