"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set nu               " 开启行号显示
set cursorline           " 高亮显示当前行
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darkred guifg=white
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darkred guifg=white

set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=2            " 设置编辑时制表符占用空格数
set shiftwidth=2         " 设置格式化时制表符占用空格数
set softtabstop=2        " 设置4个空格为制表符
set backspace=2          " 使用回车键正常处理indent,eol,start等
autocmd FileType java set tabstop=4
autocmd FileType java set shiftwidth=4
autocmd FileType java set softtabstop=4
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码
set list
set listchars=tab:»■,trail:■      "设置tab和结尾空格可见
set expandtab            "设置tab为空格

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
"set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set autochdir           " 自动切换当前目录为当前文件所在的目录

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pathongen插件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call pathogen#infect()
call pathogen#infect('bundle/{}') 		"修改插件使用的目录为bundle
"call pathogen#infect('bundle/{}', '~/.config/nvim/bundle/{}')		"修改插件使用的目录为~/.vim/bundle
syntax on
filetype plugin indent on

" 编辑vimrc相关配置文件
nnoremap <leader>e :edit $MYVIMRC<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 分屏窗口移动
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" 复制当前选中到系统剪切板
vmap <leader><leader>y "+y

" 将系统剪切板内容粘贴到vim
nnoremap <leader><leader>p "+p

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

"----change-colorscheme---- 主题设置
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

set background=dark
let g:onedark_termcolors=256
colorscheme gruvbox

"-----airline---- 状态栏标签栏
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"----vim-buffer---- buffer管理
nnoremap <silent> <c-p> :PreviousBuffer<cr>
nnoremap <silent> <c-n> :NextBuffer<cr>
nnoremap <silent> <leader>d :CloseBuffer<cr>
nnoremap <silent> <leader>D :BufOnly<cr>

"----nerdtree---- 目录管理
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
let g:NERDChristmasTree=1 "显示增强
let g:NERDTreeAutoCenter=1 "自动调整焦点
let g:NERDTreeShowFiles=1 "显示文件
let g:NERDTreeShowLineNumbers=1 "显示行号
let g:NERDTreeHightCursorline=1 "高亮当前文件
let g:NERDTreeShowHidden=0 "显示隐藏文件
let g:NERDTreeMinimalUI=0 "不显示'Bookmarks' label 'Press ? for help'

"----vim-smooth-scroll---- 平滑滚动
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

noremap <F3> :%s/\s\+$//<cr>
noremap <F7> :set paste!<cr>

 "-----tagbar----- 函数列表
 let g:tagbar_width=30
 nnoremap <silent> <F4> :TagbarToggle<CR> " 将tagbar的开关按键设置为 F4

 " Jedi 配置
 let g:jedi#auto_initialization = 1
 let g:jedi#popup_on_dot = 1
 let g:jedi#popup_select_first = 0
 let g:jedi#show_call_signatures = "1"
 autocmd FileType python setlocal completeopt-=preview

 "----nerdcommenter plugin---- 快捷注释
 "add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
 " python 自动的会多加一个空格
 au FileType python let g:NERDSpaceDelims = 0
 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
 " Align line-wise comment delimiters flush left instead of following code indentation
 let g:NERDDefaultAlign = 'left'
 " Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1
 " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 " Allow commenting and inverting empty lines (useful when commenting a region)
 let g:NERDCommentEmptyLines = 1
 " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1
 " Enable NERDCommenterToggle to check all selected lines is commented or not
 let g:NERDToggleCheckAllLines = 1

"-----indentLine----- 可视化缩进
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

"-----rainbow plugin---- 彩色括号
"let g:rainbow_active = 1
"let g:rainbow_conf = {
"\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
"\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
"\   'operators': '_,_',
"\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"\   'separately': {
"\       '*': {},
"\       'tex': {
"\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
"\       },
"\       'lisp': {
"\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
"\       },
"\       'vim': {
"\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
"\       },
"\       'html': {
"\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
"\       },
"\       'css': 0,
"\   }
"\}

" " -----coc.nvim------ 自动补全
" " if hidden is not set, TextEdit might fail.
" set hidden
" " Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup
"
" " You will have bad experience for diagnostic messages when it's default 4000.
" set updatetime=300
"
" " don't give |ins-completion-menu| messages.
" set shortmess+=c
"
" " always show signcolumns
" set signcolumn=yes
"
" " Use tab for trigger completion with characters ahead and navigate.
" " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()
"
" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" " Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" " Or use `complete_info` if your vim support it, like:
" " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"
" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" " Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
"
" " Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>
"
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction
"
" " Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
" " Remap for rename current word
" nmap <leader>rn <Plug>(coc-rename)
"
" " Remap for format selected region
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
"
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
"
" " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
"
" " Remap for do codeAction of current line
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Fix autofix problem of current line
" nmap <leader>qf  <Plug>(coc-fix-current)
"
" " Create mappings for function text object, requires document symbols feature of languageserver.
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)
"
" " Use `:Format` to format current buffer
" command! -nargs=0 Format :call CocAction('format')
"
" " Use `:Fold` to fold current buffer
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" " use `:OR` for organize import of current buffer
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

""----ycm----  自动补全
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_goto_buffer_command = 'horizontal-split'
"let g:ycm_server_python_interpreter='/usr/bin/python2'
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:airline#extensions#tabline#enabled = 1
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_complete_in_comments = 1
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_cache_omnifunc=0
"let g:ycm_confirm_extra_conf=0

"==============================================================================
"--------------------------------   cscope   ----------------------------------
"==============================================================================
" Usage:
" The following maps all invoke one of the following cscope search types:
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
if has("cscope")
   set splitright
   set cscopequickfix=s-,c-,d-,i-,t-,e-
   nmap <leader>gs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
   nmap <leader>gg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
   nmap <leader>gc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
   nmap <leader>gt :vert scs find t <C-R>=expand("<cword>")<CR><CR>
   nmap <leader>ge :vert scs find e <C-R>=expand("<cword>")<CR><CR>
   nmap <leader>gf :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
   nmap <leader>gi :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
   nmap <leader>gd :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

" Autoload Cscope Database
set nocscopeverbose
"set cscopequickfix=s-,c-,d-,i-,t-,e-
set cst
function LoadCscope(path)
  "防止无限递归
  if a:path == $HOME
    return
  endif
  if (executable("cscope") && has("cscope"))
    let l:outfile=a:path."/cscope.out"
    let l:outpath=a:path
    if filereadable(outfile)
      cs reset
      exe "cs add" outfile outpath
    else
      "递归
      let l:newpath=a:path."/.."
      let newpath=resolve(newpath)
      "echo newpath
      call LoadCscope(newpath)
    endif
  endif
endfunction

if (getcwd() =~ "work")
  call LoadCscope(getcwd())
endif
"au BufEnter /* call LoadCscope(
