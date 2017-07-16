syntax on  
set cindent  
set nu  
set tabstop=4   
set shiftwidth=4  
set background=dark      
map <C-A> ggVG+"y
map <C-c> "+y
map <F9> :call SetTitle()<CR>
func SetTitle()
	let l = 0
	let l = l + 1 | call setline(l,'/* ***********************************************')
	let l = l + 1 | call setline(l,'Author        :guanjunace@foxmail.com')
	let l = l + 1 | call setline(l,'Created Time  :'.strftime('%c'))
	let l = l + 1 | call setline(l,'File Name     :'.expand('%'))
	let l = l + 1 | call setline(l,'************************************************ */')
endfunc
map <F10> :NERDTreeToggle<CR>
map <F5> :call Run()<CR>
func! Run()  
    exec "w"
    exec "!g++ % -o %< && ./%<"	
endfunc  
