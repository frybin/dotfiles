set tabstop=4 
set softtabstop=4 
set expandtab 
set shiftwidth=4 
set smarttab
" Wayland Clipboard Support
xnoremap "+y y:call system("wl-copy", @")<cr>  
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p  
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p  
