"use vundle to manage plugin, required turn file type off and nocompatible
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"Let vundle manage bundle, required
Bundle 'gmarik/vundle'
"My bundles here:
Bundle 'altercation/vim-colors-solarized'
Bundle 'taglist.vim'
Bundle 'THe-NERD-tree'
Bundle 'a.vim'
Bundle 'wincent/command-t'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'Mizuchi/STL-Syntax'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kshenoy/vim-signature'
Bundle 'majutsushi/tagbar'
Bundle 'rking/ag.vim'
Bundle 'dyng/ctrlsf.vim'
Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/nerdcommenter'

"Brief help of vundle
	"BundleList
	"BundleInstall
	"BundleSearch
	"BundleClean
	"help vundle
"End brief help

"设置leader
let mapleader=';'
let nmapleader=';'
"快速加载.vimrc
map<silent><leader>s :source ~/.vimrc<cr>
"快速编辑.vimrc
map<silent><leader>e :tabnew ~/.vimrc<cr>
"when .cimrc is edited ,reloadit
autocmd! bufwritepost _vimrc source $VIM/_vimrc

"SHow line number, command, status line and so on
set nu
set tabstop=4
set nobackup
set ruler
set autoindent

set history=1000
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3


"Fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\

"Turn off annoying error sound
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
"colorscheme desert
set background=dark 
set cursorline
set cursorcolumn

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent

"Files, backups and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on



"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

" 文本格式和排版
set formatoptions=tcrqn 	" 自动格式化

" 搜索和匹配
set showmatch 			" 高亮显示匹配的括号

set scrolloff=10  		" 光标移动到buffer的顶部和底部时保持10行距离
set hlsearch 			" 高亮搜索
set incsearch 			" 边输入边查找
set ignorecase 			" 在搜索的时候忽略大小写

" 一般设置
set viminfo+=! 			" 保存全局变量
set history=300 		" history文件中需要记录的行数
set nocompatible 		" 不要使用vi的键盘模式，而是vim自己的
set foldmethod=syntax
set foldlevel=100  		" 启动vim时不要自动折叠代码
filetype on 			" 侦测文件类型 
syntax on 			" 语法高亮
filetype plugin on  "根据侦测到不同的文件类型，加载不同插件
set magic 			" 设置正表达式

set nocompatible    "关闭兼容模式
set wildmenu        "vim对自身命令模式智能补全

"set nowrap          "禁止折行

filetype plugin on  "根据侦测到不同的文件类型，加载不同插件
" taglist 
let Tlist_Use_Right_Window = 1 		" 在左侧显示窗口
let Tlist_Compart_Format = 1 		" 压缩方式
let Tlist_Exist_OnlyWindow = 1 		" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0 	" 不要关闭其他文件的tags
let Tlist_Enable_Fold_Column = 0 	" 不要显示折叠树 (鼠标可以点开)
let Tlist_WinWidth = 25                 " taglist窗口宽度
"标签列表窗口显示或隐藏不影响整个gvim窗口大小
let Tlist_Inc_Winwidth = 0
"设置tablist插件只显示当前编辑文件的tag内容，而非当前所有打开文件的tag内容
let Tlist_Show_One_File=1
map <silent> <F9> :TlistToggle<CR>


" netrw
let NERDTreeWinPos = 'left'
let g:netrw_winsize = 35


" winmanager
let g:winManagerWindowLayout='NERDTree|BufExplorer'
let g:winManagerWidth = 25
let g:defaultExplorer = 0
nmap wm :WMToggle<cr>
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
autocmd BufWinEnter \[Buf\ List\] setl nonumber



"Gvim config
if has("gui_running")
	colorscheme solarized
endif
set guifont=DejaVu\ Sans\ Mono\ 15
set guioptions=aegic

"PowerLine{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'


"YouCompleteMe
let g:syntastic_ignore_files=[".*\.py$"]
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_cpp_include_dirs = ['usr/include/']
let g:syntastic_remove_include_errors = 1
let g:syntastic_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 1

let g:ycm_collect_identifiers_from_tags_files = 1  
let g:ycm_collect_identifiers_from_comments_and_strings = 1  
let g:ycm_seed_identifiers_with_syntax = 1  
let g:ycm_complete_in_comments = 1  
let g:ycm_confirm_extra_conf = 0  
let g:ycm_global_ycm_extra_conf='/usr/lib/ycmd/ycm_extra_conf.py'
let g:ycm_server_log_level = 'info'

nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>je :YcmCompleter GoToDefinition<CR>
set completeopt=longest


" for ctags  
"set tags=/usr/src/linux-source-4.4.0/tags
set tags=~/.vim/c++5.3.1
"set tags+=~/.vim/systags  
"set tags+=~/.vim/x86_64-linux-gnu-systags
set tags+=~/.vim/cocos2d.cocos.platform.desktop
set tags+=~/.vim/cocos2d.cocos
set tags+=~/.vim/cocos2d.cocos.2d
set tags+=~/.vim/cocos2d.cocos.3d
set tags+=~/.vim/cocos2d.cocos.audio
set tags+=~/.vim/cocos2d.cocos.audio.linux
set tags+=~/.vim/cocos2d.cocos.base
set tags+=~/.vim/cocos2d.cocos.base.allocator.linux
set tags+=~/.vim/cocos2d.cocos.deprecated
set tags+=~/.vim/cocos2d.cocos.editor-support.cocosbuilder
set tags+=~/.vim/cocos2d.cocos.editor-support.cocostudio
set tags+=~/.vim/cocos2d.cocos.editor-support.cocostudio.ActionTimeline
set tags+=~/.vim/cocos2d.cocos.editor-support.cocostudio.WidgetReader
set tags+=~/.vim/cocos2d.cocos.editor-support.spine
set tags+=~/.vim/cocos2d.cocos.math
set tags+=~/.vim/cocos2d.cocos.navmesh
set tags+=~/.vim/cocos2d.cocos.network
set tags+=~/.vim/cocos2d.cocos.physics
set tags+=~/.vim/cocos2d.cocos.physics3d
set tags+=~/.vim/cocos2d.cocos.platform
set tags+=~/.vim/cocos2d.cocos.platform.linux
set tags+=~/.vim/cocos2d.cocos.renderer
set tags+=~/.vim/cocos2d.cocos.storage.local-storage
set tags+=~/.vim/cocos2d.cocos.ui
set tags+=~/.vim/cocos2d.cocos.ui.UIEditBox
set tags+=~/.vim/MyCppGame.Classes


"NERD Tree
"How can I open a NERDTree automatically when vim starts up?
autocmd VimEnter * NERDTree
"How can I open a NERDTree automatically when vim starts up if no files were
"specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"How can I map a specific key or shortcut to open NERDTree?
map <C-l> :NERDTreeToggle<CR>
"How can I close vim if the only window left open is a NERDTree?
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
     exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
      exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  call NERDTreeHighlightFile('cpp', 'green', 'none', 'green', '#151515')
  call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
  call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
  call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


"command-t
map <silent> -8 :CommandT<CR>
map <silent> -9 :CommandTBuffer<CR>
map <silent> -0 :CommandTJump<CR>

"主题配色
colorscheme railscasts
"let g:rehash256 = 1


"vim-indent-guides
let g:indent_gudie_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>

"vim-signature
let g:SignatureMap = {
  \ 'Leader'         :  "m",
  \ 'PlaceNextMark'      :  "m,",
  \ 'ToggleMarkAtLine'   :  "m.",
  \ 'PurgeMarksAtLine'   :  "m-",
  \ 'DeleteMark'     :  "dm",
  \ 'PurgeMarks'     :  "mda",
  \ 'PurgeMarkers'       :  "m<BS>",
  \ 'GotoNextLineAlpha'  :  "']",
  \ 'GotoPrevLineAlpha'  :  "'[",
  \ 'GotoNextSpotAlpha'  :  "`]",
  \ 'GotoPrevSpotAlpha'  :  "`[",
  \ 'GotoNextLineByPos'  :  "]'",
  \ 'GotoPrevLineByPos'  :  "['",
  \ 'GotoNextSpotByPos'  :  "mn",
  \ 'GotoPrevSpotByPos'  :  "mp",
  \ 'GotoNextMarker'     :  "[+",
  \ 'GotoPrevMarker'     :  "[-",
  \ 'GotoNextMarkerAny'  :  "]=",
  \ 'GotoPrevMarkerAny'  :  "[=",
  \ 'ListLocalMarks'     :  "ms",
  \ 'ListLocalMarkers'   :  "m?"
  \ }

"子窗口的位置出现在主编辑区的右边
let tagbar_right=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list
nnoremap <Leader>tl :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
  \ 'kinds' : [
    \ 'd:macros:1',
    \ 'g:enums',
    \ 't:typedefs:0:0',
    \ 'e:enumerators:0:0',
    \ 'n:namespaces',
    \ 'c:classes',
    \ 's:structs',
    \ 'u:unions',
    \ 'f:functions',
    \ 'm:members:0:0',
    \ 'v:global:0:0',
    \ 'x:external:0:0',
    \ 'l:local:0:0'
   \ ],
   \ 'sro'      : '::',
   \ 'kind2scope' : {
     \ 'g' : 'enum',
     \ 'n' : 'namespace',
     \ 'c' : 'class',
     \ 's' : 'struct',
     \ 'u' : 'union'
   \ },
   \ 'scope2kind' : {
     \ 'enum'     : 'g',
     \ 'namespace' : 'n',
     \ 'class'   : 'c',
     \ 'struct' : 's',
     \ 'union'   : 'u'
   \ }
   \ }

"ag
let g:ackprg = 'ag --nogroup --nocolor --column'

"ctrlsf
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_open_left = 1

nnoremap <Leader>sp :CtrlSF<CR>


"关于编译
map <F5> :!rm -rf main<CR>:wa<CR>:make<CR>:cw<CR><CR>:!./main<CR>

"一键退出vim
nnoremap <Leader>q :wqa!<CR>

"永久保留undo
set undofile

"GDB
map <F3> :run macros/gdb_mappings.vim<CR>

"vim-commentary
autocmd FileType c++,c setlocal commentstring=/\/\%s
