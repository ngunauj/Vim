set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ʾ���  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shortmess=atI   " ������ʱ����ʾ�Ǹ�Ԯ���ڸɴ��ͯ����ʾ  
winpos 100 0          " �趨����λ��  
set lines=40 columns=155    " �趨���ڴ�С  
set nu              " ��ʾ�к�  
set go=             " ��Ҫͼ�ΰ�ť  
"color asmanian2     " ���ñ�������  
set guifont=Courier_New:h10:cANSI   " ��������  
syntax on           " �﷨����  
autocmd InsertLeave * se nocul  " ��ǳɫ������ǰ��  
autocmd InsertEnter * se cul    " ��ǳɫ������ǰ��  
"set ruler           " ��ʾ���  
set showcmd         " �����������ʾ�������������Щ  
"set cmdheight=1     " �����У���״̬���£��ĸ߶ȣ�����Ϊ1  
"set whichwrap+=<,>,h,l   " ����backspace�͹�����Խ�б߽�(������)  
set scrolloff=3     " ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���  
set novisualbell    " ��Ҫ��˸(������)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "״̬����ʾ������  
set laststatus=1    " ������ʾ״̬��(1),������ʾ״̬��(2)  
set foldenable      " �����۵�  
set foldmethod=manual   " �ֶ��۵�  
set background=dark "����ʹ�ú�ɫ 
set nocompatible  "ȥ��������й�viһ����ģʽ��������ǰ�汾��һЩbug�;���  
" ��ʾ���İ���
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
" ������ɫ����
"" colorscheme darkblue
colorscheme molokai
"����
"12gei 20
if (has("gui_running")) 
 set guifont=Bitstream\ Vera\ Sans\ Mono\ 12 
endif

set encoding=utf-8  
set termencoding=utf-8



set guifontset=  
set guifont=Consolas:h12 ""12 
""set guifontwide=Microsoft\YaHei:h10
 set gfw=��Բ:h12:cGB2312
 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""���ļ�����""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�½�.c,.h,.sh,.java�ļ����Զ������ļ�ͷ 
"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""���庯��SetTitle���Զ������ļ�ͷ
"����ģ��������ֶ����
map <F9> :call SetTitle()<CR>
func SetTitle() 
 		let l = 0
		let l = l + 1 | call setline(l,'/* ***********************************************')
		let l = l + 1 | call setline(l,'Author        :guanjun')
		let l = l + 1 | call setline(l,'Created Time  :'.strftime('%c'))
		let l = l + 1 | call setline(l,'File Name     :'.expand('%'))
		let l = l + 1 | call setline(l,'************************************************ */')
        let l = l + 1 | call setline(l,'#include <iostream>')
		let l = l + 1 | call setline(l,'#include <cstring>')
		let l = l + 1 | call setline(l,'#include <cstdlib>')
		let l = l + 1 | call setline(l,'#include <stdio.h>')
		let l = l + 1 | call setline(l,'#include <algorithm>')
		let l = l + 1 | call setline(l,'#include <vector>')
		let l = l + 1 | call setline(l,'#include <queue>')
		let l = l + 1 | call setline(l,'#include <set>')
		let l = l + 1 | call setline(l,'#include <map>')
		let l = l + 1 | call setline(l,'#include <string>')
		let l = l + 1 | call setline(l,'#include <math.h>')
		let l = l + 1 | call setline(l,'#include <stdlib.h>')
		let l = l + 1 | call setline(l,'#include <iomanip>')
		let l = l + 1 | call setline(l,'#include <list>')
		let l = l + 1 | call setline(l,'#include <deque>')
		let l = l + 1 | call setline(l,'#include <stack>')
		let l = l + 1 | call setline(l,'#define ull unsigned long long')
		let l = l + 1 | call setline(l,'#define ll long long')
		let l = l + 1 | call setline(l,'#define mod 90001')
		let l = l + 1 | call setline(l,'#define INF 0x3f3f3f3f')
		let l = l + 1 | call setline(l,'#define maxn 10000+10')
		let l = l + 1 | call setline(l,'#define cle(a) memset(a,0,sizeof(a))')
		let l = l + 1 | call setline(l,'const ull inf = 1LL << 61;')
		let l = l + 1 | call setline(l,'const double eps=1e-5;')
		let l = l + 1 | call setline(l,'using namespace std;')
		let l = l + 1 | call setline(l,'priority_queue<int,vector<int>,greater<int> >pq;')
		let l = l + 1 | call setline(l,'struct Node{')
		let l = l + 1 | call setline(l,'int x,y;')
		let l = l + 1 | call setline(l,'};')
		let l = l + 1 | call setline(l,'struct cmp{')
		let l = l + 1 | call setline(l,'    bool operator()(Node a,Node b){')
		let l = l + 1 | call setline(l,'        if(a.x==b.x) return a.y> b.y;')
		let l = l + 1 | call setline(l,'        return a.x>b.x;'); 
		let l = l + 1 | call setline(l,'	}')
		let l = l + 1 | call setline(l,'};')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'bool cmp(int a,int b){')
		let l = l + 1 | call setline(l,'    return a>b;')
		let l = l + 1 | call setline(l,'}')
		let l = l + 1 | call setline(l,'int main()')
		let l = l + 1 | call setline(l,'{')
		let l = l + 1 | call setline(l,'    #ifndef ONLINE_JUDGE')
		let l = l + 1 | call setline(l,'    //freopen("in.txt","r",stdin);')
		let l = l + 1 | call setline(l,'    #endif')
		let l = l + 1 | call setline(l,'    //freopen("out.txt","w",stdout);')
		let l = l + 1 | call setline(l,'    ')
		let l = l + 1 | call setline(l,'    return 0;')
		let l = l + 1 | call setline(l,'}')
endfunc 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

" ӳ��ȫѡ+���� ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" ѡ��״̬�� Ctrl+c ����
vmap <C-c> "+y
"ȥ����  
nnoremap <F2> :g/^\s*$/d<CR> 
"�Ƚ��ļ�  
nnoremap <C-F2> :vert diffsplit 
"�½���ǩ  
map <M-F2> :tabnew<CR>  
"�г���ǰĿ¼�ļ�  
map <F3> :tabnew .<CR>  
"����״�ļ�Ŀ¼  
map <C-F3> \be  
"C��C++ ��F5��������
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ -O2 -g % -o %<"
        exec "! %<"
    elseif &filetype == 'cpp'
        exec "!g++ -O2 -g % -o %<"
        exec "! %<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunc
"C,C++�ĵ���
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""ʵ������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���õ��ļ����Ķ�ʱ�Զ�����
set autoread
" quickfixģʽ
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"���벹ȫ 
set completeopt=preview,menu 
"������  
filetype plugin on
"���������  
set clipboard+=unnamed 
"�Ӳ�����  
set nobackup
"make ����
:set makeprg=g++\ -Wall\ \ %
"�Զ�����
set autowrite
set ruler                   " ��״̬�����
set cursorline              " ͻ����ʾ��ǰ��
set magic                   " ����ħ��
set guioptions-=T           " ���ع�����
set guioptions-=m           " ���ز˵���
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" ������״̬����ʾ����Ϣ
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable              " ��ʼ�۵�
" ��Ҫʹ��vi�ļ���ģʽ������vim�Լ���
set nocompatible
" �﷨����
set syntax=on
" ȥ������������ʾ����
set noeb
" �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set confirm
" �Զ�����
set autoindent
set cindent
" Tab���Ŀ��
set tabstop=4
" ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4
" ��Ҫ�ÿո�����Ʊ��
set noexpandtab
" ���кͶο�ʼ��ʹ���Ʊ��
set smarttab
" ��ʾ�к�
set number
" ��ʷ��¼��
set history=1000
"��ֹ������ʱ�ļ�
set nobackup
set noswapfile
"�������Դ�Сд
set ignorecase
"�������ַ�����
set hlsearch
set incsearch
"�����滻
set gdefault
"��������
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"��������
set langmenu=zh_CN.UTF-8
set helplang=cn
" �ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" ������ʾ״̬��
set laststatus=2
" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set cmdheight=2
" ����ļ�����
filetype on
" �����ļ����Ͳ��
filetype plugin on
" Ϊ�ض��ļ�����������������ļ�
filetype indent on
" ����ȫ�ֱ���
set viminfo+=!
" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-
" �ַ���������������Ŀ
set linespace=0
" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu
" ʹ�ظ����backspace����������indent, eol, start��
set backspace=2
" ����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l
" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0
" �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set fillchars=vert:\ ,stl:\ ,stlnc:\
" ������ʾƥ�������
set showmatch
" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=1
" ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���
set scrolloff=3
" ΪC�����ṩ�Զ�����
set smartindent
" ������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���
au BufRead,BufNewFile *  setfiletype txt
"�Զ���ȫ
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on 
"���ļ����ͼ��, �������ſ��������ܲ�ȫ
set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags���趨  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " ������������  
let Tlist_Use_Right_Window = 1  " ���Ҳ���ʾ����  
let Tlist_Compart_Format = 1    " ѹ����ʽ  
let Tlist_Exist_OnlyWindow = 1  " ���ֻ��һ��buffer��kill����Ҳkill��buffer  
let Tlist_File_Fold_Auto_Close = 0  " ��Ҫ�ر������ļ���tags  
let Tlist_Enable_Fold_Column = 0    " ��Ҫ��ʾ�۵���  
autocmd FileType java set tags+=D:\tools\java\tags  
autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  
let Tlist_Show_One_File=1            "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
"����tags  
set tags=tags  
set autochdir 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ĭ�ϴ�Taglist 
let Tlist_Auto_Open=1 
"""""""""""""""""""""""""""""" 
" Tag list (ctags) 
"""""""""""""""""""""""""""""""" 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1 "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ��� 
let Tlist_Exit_OnlyWindow = 1 "���taglist���������һ�����ڣ����˳�vim 
let Tlist_Use_Right_Window = 1 "���Ҳര������ʾtaglist����
" minibufexpl�����һ������
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
