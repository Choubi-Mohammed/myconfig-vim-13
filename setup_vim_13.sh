#!/usr/bin/env bash

VIMRC="$HOME/.vimrc"

echo "Configuring Vim for 1337"

# Backup if the file already exists
if [ -f "$VIMRC" ]; then
    BACKUP="$HOME/.vimrc.backup.$(date +%Y%m%d_%H%M%S)"
    echo "Backup of the old .vimrc -> $BACKUP"
    cp "$VIMRC" "$BACKUP"
fi

# Creating the .vimrc
cat > "$VIMRC" << 'EOF'

" Interface
set number              " line numbers
set nohlsearch          " no highlighting after search
syntax on               " syntax highlighting
set background=dark     " dark background

" Indentation (1337 norm)
set tabstop=4
set shiftwidth=4
set expandtab           " tabs -> spaces
set autoindent
set smartindent

" Display of invisible characters
set list
set listchars=tab:|\ ,trail:.,precedes:<,extends:>

" Limit column (1337 norm)
set colorcolumn=80

" Theme (modifiable)
colorscheme lunaperche

" Useful shortcuts
" Compile + execute a C file
nnoremap <F5> :w<CR>:!cc % -Wall -Wextra -Werror && ./a.out<CR>
nnoremap <F6> :!norminette %<CR>

" Quick save
nnoremap <C-s> :w<CR>

" Quick quit
nnoremap <C-q> :q<CR>

set mouse=a             " enable mouse
set clipboard=unnamedplus " system clipboard

" No swap (avoids annoying .swp files)
set noswapfile
EOF

echo ".vimrc created successfully !"
