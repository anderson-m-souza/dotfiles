" SETTINGS --------------------------------------------------------------- {{{

    " Disable compatibility with Vi,
    " which can cause unexpected issues.
    set nocompatible

    " Set to no swap files.
    set noswapfile

    " Set to no backup files.
    set nobackup

    " Enable true-color
    set termguicolors

    let g:gruvbox_contrast_dark = "hard"

    " Enable Gruvbox theme
    autocmd vimenter * ++nested colorscheme gruvbox

    " Set Gruvbox dark mode
    set background=dark

    " Scroll before reaching the end of the file.
    set scrolloff=8

    " Highlight the column 90.
    set colorcolumn=90

    " Add relative numbers to each line on the left-hand side.
    set relativenumber

    " Set the number of the current line on the left-hand side.
    set nu

    " Alows switching between tabs without
    " having to save the current one.
    set hidden

    " Turn syntax highlight on.
    syntax on

    " Highlight cursor line underneath the cursor horizontally.
    set cursorline

    " Set shift width to 4 spaces.
    set shiftwidth=4

    " Set tab width to 4 columns.
    set tabstop=4

    " Use space characters instead of tabs.
    set expandtab

    " Backspace erases tab spaces.
    set softtabstop=4

    " While searching through a file incrementally
    " highlight matching characters as you type.
    set incsearch

    " Show matching words during a search.
    set showmatch

    " Use highlighting when doing a search.
    set hlsearch

    " Don't highlight after the search is finished.
    set nohlsearch

    " Ignore capital letters during search.
    set ignorecase

    " When ignorecase is on, this will allow you to
    " search specifically for capital letters.
    set smartcase

    " Show partial command you type in the last line
    " of the last line of the screen.
    set showcmd

    " Show the mode you are on the last line.
    set showmode

    " Enable type file detection. Vim will be able
    " to try to detect the type of file un use.
    filetype on

    " Load an indent file for the detected file type.
    filetype indent on

    " Enable builtin file browsing
    filetype plugin on

    " Search down into subfolders.
    " Provides tab-completion for all file-related tasks
    set path+=**

    " Enable autocompletion menu after pressing TAB.
    set wildmenu

    " Make wildmenu behave similar to Bash completion.
    set wildmode=list,longest

    " Wildmenu will ignore files with these extensions.
    set wildignore=*.jpg,*.png,*.gif,*.pdf

    " Set a popup menu to show possible completions.
    set completeopt=longest,menuone

    " Change delay after hitting <esc> `O` keys
    set timeoutlen=1000
    set ttimeoutlen=50

    " Change the view type of the file explorer netrw to tree.
    let g:netrw_liststyle = 3

    " Remove the top banner of netrw.
    let g:netrw_banner = 0    

    " Open files in vertical split view.
    let g:netrw_browse_split = 2

    " Set size of files to human readable.
    let g:netrw_sizestyle = 'H'

    " Sort files by extension
    let g:netrw_sort_by = 'exten'

    " Set netrw new window size in percentage.
    let g:netrw_winsize = 80

    " Set numbering on in directory listings.
    "let g:netrw_bufsettings='noma nomod nu nobl nowrap ro nornu'

    " Set relative numbering on in directory listings.
    let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

    " Set 'v' to open file at right side of window.
    let g:netrw_altv = 1


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

    " Type jj to exit insert mode instead of ESC. 
    " inoremap jj <esc>

   " Navigate the split view by pressing:
    " CTRL+j, CTRL+k, CTRL+h, CTRL+l.
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-h> <c-w>h
    nnoremap <c-l> <c-w>l

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

    " This will enable code folding.
    " Use the marker method of folding.
    augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
    augroup END

    " If Vim version is equal to or greater than 7.3 enable undofile.
    " This allows you to undo changes to a file even after saving it.
    if version >= 703
        set undodir=~/.vim/backup
        set undofile
        set undoreload=10000
    endif

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

    " Clear status line when vimrc is reloaded.
    set statusline=

    " Status line left side
    set statusline+=\ %F\ %M\ %Y

    " Use a divider to separate the left side from the right side.
    set statusline+=%=

    " Status line right side
    set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

    " Show the status on the second to last line.
    set laststatus=2

" }}}


" PLUGINS ------------------------------------------------------------ {{{

    " Configuration file for Conquer Of Completion
    source $HOME/.vim/pack/coc/start/coc.nvimrc
    
" }}}
