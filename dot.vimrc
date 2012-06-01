
let c_space_errors=1

"set textwidth=80

" For Xorg/mesa coding style
set shiftwidth=8
"set shiftwidth=4

syntax on

colorscheme ron

"set spell

filetype on
filetype indent on
filetype plugin on

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
endif

        " Using 'CTRL-spacebar' then a search type makes the vim window
        " split horizontally, with search result displayed in
        " the new window.

        nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
        nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
        nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

        " Hitting CTRL-space *twice* before the search type does a vertical
        " split instead of a horizontal one

        nmap <C-Space><C-Space>s
                \:vert scs find s <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space><C-Space>g
                \:vert scs find g <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space><C-Space>c
                \:vert scs find c <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space><C-Space>t
                \:vert scs find t <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space><C-Space>e
                \:vert scs find e <C-R>=expand("<cword>")<CR><CR>
        nmap <C-Space><C-Space>i
                \:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
        nmap <C-Space><C-Space>d
                \:vert scs find d <C-R>=expand("<cword>")<CR><CR>

