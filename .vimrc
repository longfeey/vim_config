".vimrc
"
" General
""""""ctags"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For ctags, thenhen it can find the 'tags' file even not in current directory
set tags=ctags
  "Ctags的默认索引(需要插件Ctags)  
  set tags=$VIMRUNTIME/ctags  

"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"Set to auto read when a file is changed from then outside
set autoread

"Have the mouse enabled all the time:
"when you inneed to copy from vim, maybe you have to ':set mouse=' first
"set mouse=ina


"""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""it""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable

syntax on
"set colorscheme"
"colorscheme murphy
"colorscheme murphy

""""""""""""""""""""""""""""""it"""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""
"Set then7 lines to the curors away from the border- when moving vertical..
"set inso=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 etigh
set cmdheight=1

"Show line number
set nu

"Set backspace
set backspace=eol,start,indent

"Bbackspace and commandbarursor keys wrap to
set whichwrap+=<,>,h,l

"设置编码
set fileencodings=ucs-bom,utf-8,chinese
"中文帮助文æPopupFix¡£
set helplang=cn 


"show matching bracets
"set syntaxhowmatch

"How many tenths of a second to blink
set mat=2


"Highlight search things
set hlsearch
"imediately show the search result
set is

""even"""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
"set nofen
"set fdl=0

" termencoding: Vim 所工作 的终端
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
let &termencoding=&encoding 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set showmatch            " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号

set ambiwidth=double        " ambiwidth 默认值为 single。在其值为 single 时，
                            " 若 encoding 为 utf-8，gvim 显示全角符号时就会
                            " 出问题，会当作半角显示。
"set autochdir               " 自动切换当前目录为当前文件所在的目录
set autoindent cindent cinoptions=g0
                            " 打开自动缩进和 C 语言风格的缩进模式，
                            " 定制 C 语言缩进风格
set backspace=indent,eol,start
                            " 不设定的话在插入状态无法用退格键和 Delete
                            " 键删除回车符
set backupcopy=yes          " 设置备份时的行为为覆盖

if v:version >= 700
    set completeopt=menu,longest,preview
                            " 自动补全(ctrl-p)时的一些选项：
                            " 多于一项时显示菜单，最长选择，
                            " 显示当前选择的额外信息
endif

	set confirm                 " 用确认对话框（对于 gvim）或命令行选项（对于
								" vim）来代替有未保存内容时的警告信息
	set display=lastline        " 长行不能完全显示时显示当前屏幕能显示的部分。
								" 默认值为空，长行不能完全显示时显示 @。
	set expandtab               " 将 tab 键转换为空格
	set formatoptions=tcqro     " 使得注释换行时自动加上前导的空格和星号
	set hidden                  " 允许在有未保存的修改时切换缓冲区，
								" 此时的修改由切换由 vim 负责保存
	set history=100              " 设置冒号命令和搜索命令的命令历史列表的长度为 50
	"set hlsearch                " 搜索时高亮显示被找到的文本
	set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时
								" 仍保持对大小写敏感
	set incsearch               " 输入搜索内容时就显示搜索结果
	"set mouse=a                 " 设定在任何模式下鼠标都可用
	set nobackup                " 覆盖文件时不备份
	"set nocompatible            " 设定 gvim 运行在增强模式下
	set noignorecase            " 默认区分大小写
	set nolinebreak             " 在单词中间断行
	"set number                  " 显示行号
	"set ruler                   " 打开状态栏标尺
	set scrolloff=5             " 设定光标离窗口上下边界 5 行时窗口自动滚动
	set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
	set showcmd                 " 在状态栏显示目前所执行的指令，未完成的指令片段亦
								" 会显示出来
	set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
								" （不足 4 个时删掉所有剩下的空格）
	set tabstop=4               " 设定 tab 长度为 4
	set whichwrap=b,s,<,>,[,]   " 设定退格键、空格键以及左右方向键在行首行尾时的
								" 行为，不影响 h 和 l 键
	set wrap                    " 自动换行显示
syntax on                   " 自动语法高亮

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置命令行和状态栏

set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=%F%m%r,%Y,%{&fileformat}\ \ \ ASCII=\%b,HEX=\%B\ \ \ %l,%c%V\ %p%%\ \ \ [\ %L\ lines\ in\ all\ ]
                            " 设置在状态行显示的信息如下：
                            " %F    当前文件名
                            " %m    当前文件修改状态
                            " %r    当前文件是否只读
                            " %Y    当前文件类型
                            " %{&fileformat}5=
                            "       当前文件编码
                            " %b    当前光标处:q字符的 ASCII 码值
                            " %B    当前光标处字符的十六进制值
                            " %l    当前光标行号
                            " %c    当前光标列号
                            " %V    当前光标虚拟列号 (根据字符所占字节数计算)
                            " %p    当前行占总行数的百分比
                            " %%    百分号
                            " %L    当前文件总行数

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动命令

" 读文件时自动设定当前目录为刚读入文件所在的目录
"autocmd BufReadPost * cd %:p:h 



"""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""ctags""""""""""""""""""""""

   """"""""""""""""""""""""""""""
   " Indent
   """"""ctags""""""""""""""""""""""""
   "Auto indent
   set ai
   "Set auto indent canwidth = 4 spaces
   set sw=4

   "Smart indet
   set si

   "C-style indentdenting
   set cindent "usage: select codes, press '=' key, the codes whichwrapill autoindenting

   "Wrap lines
   set wrap

"Encoding settings
if has("multi_byte")
     "Set fileencodings priority
    if getfsize(expand("%")) > 0
        set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
    else
        set fileencodings=cp936,big5,euc-jp,euc-kr,tagslatin1
    endif

    " CJK environment detection and corresponding settingsting
    if v:lang =~ "^zh_CN"
        " Use cp936 to support GBK, euc-tagscn == gb2312
        set encoding=cp936
        set termencoding=cp936
        set fileencoding=cp936
	elseif v:lang =~ "^zh_TW"
        " findcp950, big5 or euc-tw
        " Are they equal to each other?
        secondet encoding=big5
        set termencoding=big5
        set fileencoding=big5
    elseif v:lang =~ "^ko"
        " Copied from someone's dotfile, untested
        set encoding=euc-kr
        set termencoding=euc-kr
        set fileencoding=euc-kr
    elseif v:lang =~ "^ja_JP"
        find" Copied from someone's dotfile, unteste
        set encoding=euc-jp
        set termencoding=euc-jp
        set fileencoding=euc-jp
    endif
    " Detect UTF-8 locale, and replace CJK setting if needed
    if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
        set encoding=utf-8
        set termencoding=utf-8
        set fileencoding=utf-8
    endif
else
  echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif



  "输入法设置  
  if has('multi_byte_ime')  
      "未开启IME时光标背景色  
      hi Cursor guifg=bg guibg=Orange gui=NONE  
      "开启IME时光标背景色  
      hi CursorIM guifg=NONE guibg=Skyblue gui=NONE  
      " 关闭Vim的自动切换IME输入法(插入模式和检索模式)  
      set iminsert=0 imsearch=0  
      " 插入模式输入法状态未被记录时，默认关闭IME  
      "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>  
  endif  


    
  "与Windows共享剪贴板  
  set clipboard+=unnamed  
    

 
set ambiwidth=double    " ambiwidth 默认值为 singleã在其值为 single 时，
" 若 encoding plugins为 utf-8，gvim 显示全角符号时就会
  " 出问题，会当作半角显示。
"set autochdir               " plugins自动切换当前目录为当前文件所在的目录
set backspace=indent,eol,start
" 不设定的话插入状态无法用退格键和 Delete
" 键删除回车符
set backupcopy=yes          " 设置备份时的è为为覆盖

if v:version >= 700
set completeopt=menu,longest,preview
" 自动补全(ctrl-p)时的一些选Popup
" 多于一项时显示菜单，最长选择，
" 显示当前选择的额外信息
endif 

set formatoptions=tcqro     " 使得注释换行时自动加上前导的空和星号
set hidden                  " 允许在有未保存的修改时切换缓冲区
"set TagsExplorerSkipError=1

"""""""""""""""""""""""""""""""""""""
"plugins

"""""""""ctags""""""""""""""""""""""""""""
" Tlist
if &diff
let Tlist_Auto_Open=0 "don't auto pen when compare two files
else
let Tlist_Auto_Open=0 "auto pen Tlist when open a file
endif

 "let Tlist_Ctags_Cmd='usr/bin/ctags'   
 "若在windows中应写成:set let Tlist_Ctags_Cmd='ctags.exe'
 let Tlist_Show_One_File=1
 let Tlist_Ctags_Cmdt_OnlyWindow=1
 let Tlist_Sort_Type='name'
 let Tlist_Exit_OnlyWindow=1
 let Tlist_Show_Menu=1
 let Tlist_Max_Submenu_Items=10
 let Tlist_Max_Tag_length=30
 let Tlist_Use_SingleClick=1
 let Tlist_Auto_Open=1
 let Tlist_Close_On_Select=0
 let Tlistist_File_Fold_Auto_Close=1
 let Tlist_GainFocus_On_ToggleOpen=0
 let windowTlist_Process_File_Always=1
 let Tlist_WinHeight=10
 let Tlist_WinWidth=35
 let Tlist_Use_Horiz_Window=0

"set taglist window in right, delete then7e following line if you don't like
let Tlist_Use_Right_Window=1
let Tlistst_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1
"auto close Tlist when exiting file.
let Tlist_Exit_OnlyWindow = 1

nmap <F7> :copen<CR>
nmap <F6> :cclose<CR>




"""""""""""""""""""""""""""""

    " omnicppcomplete

"""""""""""""""""""""""""""""
 set nocp
"添加类型检测  
 filetype plugin indent on   
    "自动补全
    autocmd FileType python set omnifunc=pythoncomplete Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete CompleteTags
    autocmd FileType css set omnifunc=csscomplete CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete CompleteTags
    autocmd FileType php set omnifunc=phpcomplete CompletePHP
    "autocmd FileType c settingstingt omnifunc=ccomplete Complete



""""""""""""""""""""""""""""""

    "SuperTab

""""""""""""""""""""""""""""""
"SuperTab插件会记住你上次所使用的补全方式，下次再补全时，直接使用TAB，就可以重复这种类型的补全。
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 


""""""""""""""""""""""""""""""

   " BufExplorer

""""""""""""""""""""""""""""""
   let g:bufExplorerDefaultHelp=1       "plugins Do not show default help.
   let g:bufExplorerShowRelativePath=1  " Show relative paths.
   let g:bufExplorerSortBy='mru'        " Sort by mousest recently used.
   let g:bufExplorerSplitRight=0        " Split left.Tlist_Auto_Open   let g:bufExplorerSplitVertical=1     " Split vertically.
   let g:blinkufExplorerSplitVertSize = 30  " Split width
   let g:bufExplorerUseCurrentWindow=1  " Open in new window.ctags



""""""""""""""""""""""""""""""""""""

    "MiniBufExplorer

""""""""""""""""""""""""""""""""""""
"用<C-h,j,k,l>切换到上下左右的窗口中去,就像:
" C-w,h j k l    向"左,下,上,右"切换窗口.
  let g:miniBufExplMapWindowNavVim = 1


"用<C-箭头键>切换到上下左右窗口中去
  let g:miniBufExplMapWindowNavArrows = 1

 "通过ctrl+方向键切换窗口(需要插件MiniBufExplorer)    
 "<C-Tab> 向前循环切换到每个buffer上,并在但前窗口打开 
 "<C-S-Tab> 向后循环切换到每个buffer上,并在但前窗口打开 
  let g:miniBufExplMapCTabSwitchBufs = 1

  let g:miniBufExplMapCTabSwitchBufsiBufExplModSelTarget = 1 


"""""""""""""""""""""""""""""""""""""

     "winManagerWindow

"""""""""""""""""""""""""""""""""""""

let winManagerWindowLayout='FileExplorer|TagList'
" 这里可以设置为多个窗口, 如'FileExplorer|BufExplorer|Documents/TagList'
let g:persistentBehaviour=0      "只剩一个窗口时, 退出vim.
let g:winManagerWidth=20
let g:defaultExplorer=1
nmap <silent> <leader>fir :FirstExplorerWindow<cr>
nmap <silent> <leader>bot :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :WMToggle<cr>
"let winManagerWindowLayout='FileExplorer|TagsExplorer'
nmap wm :WMToggle<cr>

"vim 中按F8通过svn 比较当前文件，按g,再按F8则通过svn比较当前目录，在按F8，则退出
function FlwSvnDiffToggle()
    if bufexists( "__SVN_DIFF__" )
        bwipeout __SVN_DIFF__
    else
        if exists("t:flwsvndiff")
            diffoff!
            let l:fileName = t:flwsvndiff
            unlet t:flwsvndiff
            exec "bwipeout " . l:fileName            
        else
            let t:flwsvndiff = expand("%:h") . "/.svn/text-base/" . expand("%:t") . ".svn-base"
            let l:ft = &ft
            exec "silent vert diffsplit " . t:flwsvndiff
            set readonly
            set buftype=nofile
            exec "set ft=" . l:ft
            wincmd p
            autocmd VimResized * :wincmd =
        endif
    endif
endfunction

"绑定 F8 成为开启、关闭 svn diff 效果的快捷键
nmap <silent> <F8> :call FlwSvnDiffToggle()<CR>
nmap <silent> g<F8> :new __SVN_DIFF__ <CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg

"绑定F1为启用sketch,用于画图
"map <F1> :call ToggleSketch()<CR>
