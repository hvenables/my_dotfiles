" Change <Leader>
let mapleader = ","

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" enhances the percent command
runtime macros/matchit.vim

" Escape from insert mode with jj
inoremap jj <esc>:w<CR>

"==============================================================================
" Easy access to start of the line
nmap 0 ^

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>ef :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>sf :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>vf :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

" j and k will move down virtual line even when text is wrapped
nmap j gj
nmap k gk

" Remap arrow keys
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

" search next/previous -- center in page
nmap n nzz
nmap N Nzz

" jump between methods
nmap <Leader>k [m
nmap <Leader>j ]m

" Strip Whitespace
nnoremap <leader>ws :StripWhitespace<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

"auto indent the file
nmap <Leader>i gg=G''

" Easymotion.vim mappings from https://github.com/easymotion/vim-easymotion

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Vim.test mappings
let test#strategy = "tslime"

map <Leader>t :TestFile<CR>
map <Leader>s :TestNearest<CR>
map <Leader>l :TestLast<CR>
map <Leader>a :TestSuite<CR>

" Rails.vim mappings
nmap <Leader>ae :AE<CR>
nmap <Leader>av :AV<CR>
nmap <Leader>re :RE<CR>
nmap <Leader>rv :RV<CR>
nmap <Leader>ec :Econtroller<space>
nmap <Leader>vc :Vcontroller<space>
nmap <Leader>em :Emodel<space>
nmap <Leader>vm :Vmodel<space>
nmap <Leader>ev :Eview<space>
nmap <Leader>vv :Vview<space>

nmap <Leader>sv :Server<CR>
nmap <Leader>ksv :Server!-<CR>
nmap <Leader>co :Console<CR>

command! Q q " bind :Q to :q
command! E e " bind :E to :e

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Vim fugitive maping
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>go :Git checkout<Space>

nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

" Navigating from terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" new tab
nmap <leader>n  :tabnew<CR>

" focus tab
nmap <leader>ff :tab split<CR>

inoremap (; ()<Left>
inoremap {; {}<Left>
inoremap [; []<Left>

" Task warrior config
nmap <leader>tl :! task list<CR>

" delete current file
nnoremap <leader>rm :call delete(expand('%:p')) \| bd!<CR>

" Eval ruby files
map <leader>r :!ruby %<cr>

" Toggle Paste
nnoremap <leader>p :set invpaste paste?<CR>
imap <leader>p <C-O>:set invpaste paste?<CR>
set pastetoggle=<leader>p

" Hash rocket removal command
command! -range=% RemoveHashRocket silent execute <line1>.','.<line2>.'s/:\(\w\+\)\s*=>\s*/\1: /g'
nmap <Leader>hr :RemoveHashRocket<CR>

" Custom commands for navigating with ctags
map <Leader>[ :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>] :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

map <C-]> g<C-]>

" Copy filepath
nmap <Leader>fp :let @+=@%<CR>

nmap <Leader>bd :BD<CR>

cnoreabbrev vb vs \| b
cnoreabbrev vd bp \| bd #

let g:coc_global_extensions = ['coc-solargraph']
let g:coc_global_extensions = ['coc-json']
" let g:coc_global_extensions = ['coc-java']


" if executable('nvm') == 1
"   let g:coc_global_extensions = ['coc-tsserver']
" end
" Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

let g:multi_cursor_exit_from_insert_mode = 0

" Jsx on all js files
let g:jsx_ext_required = 0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-s>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/UltiSnips']
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]

augroup Ultisnips
autocmd bufenter,bufnewfile */factories/*.rb UltiSnipsAddFiletypes factory_bot
augroup END

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Airline status bar config
" =============================================================================
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#close_symbol = '×'

" Rainbow braces config
let g:rainbow_active = 1
let g:rainbow_conf = {
\  'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'firebrick'],
\  'ctermfgs': ['Grey', 'Red', 'Blue', 'Green', 'Yellow'],
\  'operators': '_,_',
\  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\  'separately': {
\    '*': {},
\    'tex': {
\      'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\    },
\    'ruby': {
\      'ctermfgs': ['Grey', 'Green', 'Yellow', 'Blue', 'Red']
\    },
\    'elixir': {
\      'ctermfgs': ['Red', 'Blue', 'Green', 'Yellow', 'Grey']
\    },
\    'lisp': {
\      'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\    },
\    'vim': {
\      'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\    },
\    'html': {
\      'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\    },
\    'css': 0,
\  }
\}

" Multiple Cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-e>'
let g:multi_cursor_quit_key            = '<Esc>'

" Netrw options
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Addes line numbers to :Explore
let g:netrw_bufsettings = "noma nomod nu nobl nowrap ro rnu"

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
else
  set grepprg=ag\ --nogroup\ --nocolor
endif

" FZF key bindings
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--info=inline', '--preview', 'coderay {}']}, <bang>0)

command! -bang -nargs=? -complete=dir GFiles
    \ call fzf#vim#gitfiles(<q-args>, {'options': ['--info=inline', '--preview', 'coderay {}']}, <bang>0)

command! -bang -nargs=? -complete=dir GStatus
    \ call fzf#vim#gitfiles('?', {'options': ['--info=inline']}, <bang>0)

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

nnoremap <C-p> :GFiles --others --exclude-standard --cached<CR>
nnoremap <C-a> :Files<CR>
nnoremap <C-b> :Buffers<CR>

nnoremap <C-t> :Tags <C-R><C-W><CR>

nnoremap <silent> K :RG <C-R><C-W><CR>
nnoremap <silent> \ :RG<CR>

nnoremap <silent> <Leader>st :GStatus<CR>

autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Path completion with custom source command
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Word completion with custom spec with popup layout option
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})

" Veritcal line config
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

" Neomake Config
autocmd! BufWritePost *.ex Neomake elixir

autocmd! BufWritePost *.kt Neomake ktlint

if executable('rubocop') == 1
  autocmd! BufWritePost *.rb Neomake rubocop
end

if executable('pep8') == 1
  autocmd! BufWritePost *.py Neomake pep8
endif

" npm install -g coffeelint
autocmd! BufWritePost *.coffee Neomake coffeelint
" gem install haml_lint
autocmd BufWritePost *.haml Neomake hamllint

let g:neomake_verbose=0
let g:neomake_warning_sign = {
      \ 'text': '⚠',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': '✘',
      \ 'texthl': 'ErrorMsg',
      \ }
let g:neomake_info_sign = {
      \ 'text': '➤'
      \ }


augroup AutoSwap
        autocmd!
        autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
augroup END

function! AS_HandleSwapfile (filename, swapname)
        " if swapfile is older than file itself, just get rid of it
        if getftime(v:swapname) < getftime(a:filename)
                call delete(v:swapname)
                let v:swapchoice = 'e'
        endif
endfunction
autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
  \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif

" Gem rvm-ctags adds ctags to ruby to jump to ruby definitions
autocmd FileType ruby
  \ let &tags .= "," . $MY_RUBY_HOME . "/lib/tags" |
  \ let &path .= "," . $MY_RUBY_HOME . "/lib"

function! SetNumberDisplay()
  if &buftype == 'terminal'
    setlocal nonumber
    setlocal norelativenumber
  else
    set number
    set relativenumber
  endif
endfunction

" Decode the big blobs of base64 encoded saml that we get in the logs
" Install xmllint on ubuntu with: apt-get install libxml2-utils
nnoremap <leader>sd "+p:SamlDecode<cr>
command! SamlDecode :call s:SamlDecode()
function! s:SamlDecode() abort
    %!base64 -d
    %!xmllint --format -
    setf xml
endfunction

autocmd Filetype gitcommit setlocal spell textwidth=72


function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --bind ctrl-a:select-all+accept'
\ }))

" Folding
" set foldmethod=syntax

" let g:vimsyn_folding='af'
" let ruby_fold = 1
" let g:tex_fold_enabled=1

" set foldenable
" specifies for which commands a fold will be opened
" set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
"
" nnoremap <silent> zr zr:<c-u>setlocal foldlevel?<CR>
" nnoremap <silent> zm zm:<c-u>setlocal foldlevel?<CR>

" nnoremap <silent> zR zR:<c-u>setlocal foldlevel?<CR>
" nnoremap <silent> zM zM:<c-u>setlocal foldlevel?<CR>

" " Change Option Folds
" nnoremap zi  :<c-u>call <SID>ToggleFoldcolumn(1)<CR>
" nnoremap coz :<c-u>call <SID>ToggleFoldcolumn(0)<CR>
" nmap     cof coz

" function! s:ToggleFoldcolumn(fold)
"   if &foldcolumn
"     let w:foldcolumn = &foldcolumn
"     silent setlocal foldcolumn=0
"     if a:fold | silent setlocal nofoldenable | endif
"   else
"       if exists('w:foldcolumn') && (w:foldcolumn!=0)
"         silent let &l:foldcolumn=w:foldcolumn
"       else
"         silent setlocal foldcolumn=4
"       endif
"       if a:fold | silent setlocal foldenable | endif
"   endif
"   setlocal foldcolumn?
" endfunction
