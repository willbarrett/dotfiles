" ~/github/willbarrett/dotfiles/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.5 on 11 July 2014 at 15:19:55.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/github/rentalutions/rentalutions
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +9 /media/will/788eadcd-d9a7-4149-9f11-af2d9d8bf16e/Dropbox/vimwiki/index.wiki
badd +1 /media/will/788eadcd-d9a7-4149-9f11-af2d9d8bf16e/Dropbox/vimwiki/Scratchpad.wiki
badd +0 /media/will/788eadcd-d9a7-4149-9f11-af2d9d8bf16e/Dropbox/vimwiki/Sqwiggle\ Tasks.wiki
args ./
set lines=56 columns=212
edit /media/will/788eadcd-d9a7-4149-9f11-af2d9d8bf16e/Dropbox/vimwiki/Sqwiggle\ Tasks.wiki
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 037|
lcd ~/github/rentalutions/rentalutions
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=25 winwidth=79 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
