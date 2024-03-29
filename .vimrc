call pathogen#infect()

" Disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" enable syntax highlighting
syntax on
filetype plugin indent on

" disable syntax highlighting for vim-gitgutter
highlight clear SignColumn

"I give up - sometimes I need NERDTree
nmap <C-n> <Esc>:NERDTreeToggle<CR>

" Solarized dark color scheme
let hour = strftime("%H")
" if 6 <= hour && hour <= 18
"   set background=dark
" else
set background=light
" endif
colorscheme solarized
set t_Co=256
set term=screen-256color-bce
let g:solarized_termcolors=256
set t_ut=

set hidden
set backspace=indent,eol,start
set nu
set ignorecase
set smartcase
set wildmenu
set scrolloff=3
set autoindent
set expandtab
" set cursorline

let mapleader = ","
let g:session_autoload = 'no'
let g:go_disable_autoinstall = 1

" Always keep 3 lines in view
set scrolloff=2

" Always show the tab line
set showtabline=2

" Ruby tab stop
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Don't use backup or swap files. I save frequently.
set nobackup
set nowb
set noswapfile

set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set winwidth=79
set winheight=25

" Set ignore for wildmenu and ctrlq
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/cache/*,*/node_modules/*   " for Linux/MacOSX
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$|cache'
let g:ctrlp_max_files=0

" Use system clipboard
set clipboard=unnamedplus

" Easier switching between windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

function! RunTests(filename)
        :w
        if match(a:filename, '\.feature$') != -1
                exec ":!script/features " . a:filename
        else
                if filereadable("script/test")
                        exec ":!script/test " . a:filename
                elseif filereadable("Gemfile")
                        exec ":!bundle exec rspec --color " . a:filename
                else
                        exec ":!rspec --color " . a:filename
                end
        end
endfunction

function SetTestFile()
        let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
        if a:0
                let command_suffix = a:1
        else
                let command_suffix = ""
        endif

        "Run test in previously marked test file
        let in_test_file = match(expand("%"), '\(.feature\|._spec.rb\)$') != -1
        if in_test_file
                call SetTestFile()
        elseif !exists("t:grb_test_file")
                return
        end
        call RunTests(t:grb_test_file . command_suffix)
endfunction

map <leader>t :call RunTestFile()<cr>

au FileType go nmap <leader>t <Plug>(go-test)

" map <C-t> :CommandT<cr>

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Really annoying things that should work but don't due to capitalization
command W w
command Q q
command Tabnew tabnew
command TAbnew tabnew
command Tabn tabn
command TAbn tabn
command Tabp tabp
command TAbp tabp
command Tablas tablast
command TAblas tablast
command Tabfir tabfirst
command TAbfir tabfirst

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

autocmd BufEnter * :syntax sync fromstart
let g:ackprg = 'ag --vimgrep'
