colorscheme evening

set background=dark

set shiftwidth=4
set tabstop=8
set expandtab
set smarttab

" TODO-if the path contains the string SuperMario then take decision
if filereadable('start.py')
    au FileType python imap <F5> <Esc>:w<CR>:!python start.py<CR>
    au FileType python map <F5> <Esc>:w<CR>:!python start.py<CR>
else
    " remove the white spaces at the end before saving and then execute with
    " python.
    " TODO-while saving any file the white spaces at the end of line should be
    " removed
    au FileType python map <silent> <F7> <ESC>:%s/\s\+$//ge<CR><Esc>:w<CR>:!python %<CR>
    au FileType python imap <silent> <F7> <ESC>:%s/\s\+$//ge<CR><Esc>:w<CR>:!python %<CR>

    "bash file
    au FileType sh map <silent> <F7> <ESC>:%s/\s\+$//ge<CR><Esc>:w<CR>:!/bin/bash % 000*<CR>
    au FileType sh imap <silent> <F7> <ESC>:%s/\s\+$//ge<CR><Esc>:w<CR>:!/bin/bash % 000*<CR>
endif

if filereadable('play.py')
    au FileType python imap <F5> <Esc>:w<CR>:!python play.py<CR>
    au FileType python map <F5> <Esc>:w<CR>:!python play.py<CR>
endif

if filereadable('map_constructor.py')
    au FileType python imap <F6> <Esc>:w<CR>:!python map_constructor.py<CR>
    au FileType python map <F6> <Esc>:w<CR>:!python map_constructor.py<CR>
endif

