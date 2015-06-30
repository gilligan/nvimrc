set nocompatible
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-vinegar'

Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'othree/html5.vim'
Plug 'juvenn/mustache.vim'
Plug 'pangloss/vim-javascript'
"Plug 'heavenshell/vim-jsdoc'
Plug 'mattn/emmet-vim'
"Plug 'marijnh/tern_for_vim'
Plug 'kchmck/vim-coffee-script'
Plug 'geekjuice/vim-mocha'
Plug 'mxw/vim-jsx'

Plug 'vim-scripts/textobj-user'
Plug 'vim-scripts/textobj-entire'
Plug 'vim-scripts/textobj-line'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-diff'
Plug 'kana/vim-textobj-syntax'
Plug 'thinca/vim-textobj-comment'
Plug 'gilligan/textobj-lastpaste'
Plug 'bkad/CamelCaseMotion'

Plug 'vim-scripts/matchit.zip'
Plug 'mbriggs/mark.vim'
Plug 'justinmk/vim-sneak'
Plug 'wellle/targets.vim'

Plug 'dag/vim2hs'
Plug 'raichoo/haskell-vim'
Plug 'eagletmt/ghcmod-vim'
Plug 'ujihisa/neco-ghc'
Plug 'Twinside/vim-hoogle'
Plug 'ujihisa/unite-haskellimport'
Plug 'eagletmt/unite-haddock'

Plug 'bling/vim-airline'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'vim-scripts/EditPlus'
Plug 'helino/vim-json'
Plug 'Lucius'
Plug 'jaromero/vim-monokai-refined'
Plug 'andrwb/vim-lapis256'
Plug 'altercation/vim-colors-solarized'
Plug 'crusoexia/vim-javascript-lib'
Plug 'NLKNguyen/papercolor-theme'
Plug 'badwolf'

Plug 'Shougo/vimproc'
Plug 'christoomey/vim-tmux-navigator'

Plug 'gregsexton/gitv'
Plug 'mhinz/vim-signify'

Plug 'kien/ctrlp.vim'
Plug 'Valloric/ListToggle'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Majutsushi/tagbar'

Plug 'vim-scripts/UnconditionalPaste'
Plug 'current-func-info.vim'
Plug 'scrooloose/syntastic'
Plug 'KabbAmine/zeavim.vim'
Plug 'airblade/vim-rooter'
Plug 'itchyny/calendar.vim'
Plug 'derekwyatt/vim-scala'
Plug 'calebsmith/vim-lambdify'
Plug 'LnL7/vim-nix'
Plug 'benekastah/neomake'
"Plug 'fmoralesc/vim-pad'

call plug#end()

"
" global settings
"
syntax on            " enable syntax highlightning
set nocp             " no compatible mode
set ambiwidth=single " display icons correctly
set gdefault         " always enable greedy mode
set ignorecase       " ignore case in searches
set smartcase        " smarter ignorecase
set ruler            " show ruler
set cursorline       " higlight cursor line
set tags=tags;/,codex.tags;/ " look for tags in current dir and up and
set nu               " show line numbers
set cmdheight=1      " cmd line is 1 lines high
set wmh=0            " minimal window height is 0
set expandtab        " expand tab with spaces
set tabstop=4        " tab = 4 spaces
set shiftwidth=4     " shift by 4 spaces
set softtabstop=4    " tab equals 4 spaces
set laststatus=2     " always show status
set background=light " light background color
set incsearch        " search incrementally
set grepprg=grep\ -nH\ $* " print filename for match
set backspace=indent,eol,start " make backspace behave
set showmatch        " quickly jump to matching bracket
set cindent          " enable automatic C indenting
set autoindent       " copy indentation to next line
set viminfo=%,!,'50,\"100,:100,n~/.viminfo
set noerrorbells     " don't annoy me
set t_vb=            " really, don't do it
set guioptions-=r    " disable gui stuff
set guioptions-=T    " disable gui stuff
set guioptions-=m    " disable gui stuff
set guioptions-=l    " disable gui stuff
set guioptions-=L    " disable gui stuff
set nobackup         " no useless backup files
set noswapfile       " no useless swap files
set wildignore+=*.so,*.swp,*.zip " ignore patterns for completion
set nohidden
let g:rct_completion_use_fri = 1
"set clipboard=unnamed " clipboard = unnamed reg for easy interaction
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
let &shellpipe='&>'
set synmaxcol=800      " do not highlight huge files
set mouse=
augroup cline          " show cursorline only in active view/normal mode
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END
set completeopt=menuone
set noshowmode
filetype plugin indent on
set timeoutlen=1000 ttimeoutlen=0
syntax on
set t_Co=256
set t_ut=
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colo solarized

"
" tern settings
"
set updatetime=2000
let g:tern_show_argument_hints="on_hold"

"
" airline settings
"
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

"
" arpeggio settings
"
"call arpeggio#load()
"Arpeggio inoremap <Space>i if<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
"Arpeggio inoremap <Space>c case<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
"Arpeggio inoremap <Space>; ::<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
"Arpeggio inoremap <Space>d def<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
"Arpeggio inoremap <Space>f f<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
"Arpeggio inoremap <Space>g \|<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
"Arpeggio inoremap <Space>l \<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>

"
" auto commands
"

" Show trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter javascript match ExtraWhitespace /\s\+$/
autocmd InsertEnter javascript match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave javascript match ExtraWhitespace /\s\+$/
autocmd BufWinLeave javascript call clearmatches()
autocmd FileType javascript setlocal nofoldenable
autocmd FileType coffee let &makeprg='product-build'
" Remove Trailing Whitespace
func! s:StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    normal `Z
endf
au FileType * au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()`
" Resize splits when window is resized
au VimResized * exe "normal! \<c-w>="
" Go to last editing position
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction
nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

"
" ctrlp setings
"
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git','.project_root']
let g:ctrlp_user_command =
\ ['.git', 'cd %s && git ls-files . -co --exclude-standard | grep -v "^target"']
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  'target.*|\.project$\|\.metadata$\|\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$|\.dylib$',
  \ }
let g:ctrlp_buftag_types = {
\ 'coffee' : {
  \ 'bin': 'coffeetags',
  \ 'args': '-f -'
  \ },
\ }

"
" fugitive plugin
"
autocmd QuickFixCmdPost *grep* cwindow

let $PATH = $PATH . ':' . expand("~/.cabal/bin")

"
" vim2hs settings
"

let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
let g:hpaste_author = 'gilligan'
let g:haskell_conceal = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_quasi         = 0
let g:haskell_interpolation = 0
let g:haskell_regex         = 0
let g:haskell_jmacro        = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 0
let g:haskell_json          = 0
let g:haskell_xml           = 0
let g:haskell_hsp           = 0
let g:haskell_no_indent     = 1

call unite#custom_default_action('haddock', 'browse_remote')

"
" configuration for necoghc
"
let g:necoghc_enable_detailed_browse = 1


"
" configuration for ghcimportedfrom-vim
"
let g:ghcimportedfrom_browser = '/usr/bin/chromium-browser'

"
" configuration for tagbar
"
if executable('lushtags')
    let g:tagbar_type_haskell = {
        \ 'ctagsbin' : 'lushtags',
        \ 'ctagsargs' : '--ignore-parse-error --',
        \ 'kinds' : [
            \ 'm:module:0',
            \ 'e:exports:1',
            \ 'i:imports:1',
            \ 't:declarations:0',
            \ 'd:declarations:1',
            \ 'n:declarations:1',
            \ 'f:functions:0',
            \ 'c:constructors:0'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 'd' : 'data',
            \ 'n' : 'newtype',
            \ 'c' : 'constructor',
            \ 't' : 'type'
        \ },
        \ 'scope2kind' : {
            \ 'data' : 'd',
            \ 'newtype' : 'n',
            \ 'constructor' : 'c',
            \ 'type' : 't'
        \ }
    \ }
endif

"
" configuration for ctrlp
"
let g:ctrlp_buftag_types = {
  \ 'haskell' : {
    \ 'bin': 'lushtags',
    \ 'args': '--ignore-parse-error --',
    \ },
  \ }

"
" arpeggio mappings for ultisnips
"


" fix highlightning of functions
set iskeyword+='


"
" configuration for syntastic
"
let g:syntastic_haskell_checkers = ['ghc_mod', 'hlint']

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType haskell setlocal nofoldenable
autocmd FileType haskell setlocal conceallevel=0
autocmd FileType haskell compiler hlint


function! GhciReload()
    call VimuxSendText(":r")
    call VimuxSendKeys("Enter")
endfunction

nnoremap <leader>h= :execute "Tabularize haskell_bindings"<CR>
nnoremap <leader>ht :execute "GhcModType!"<CR>
nnoremap <leader>hT :execute "GhcModTypeInsert!"<CR>
nnoremap <leader>hc :execute "GhcModTypeClear"<CR>
nnoremap <leader>hi :execute "GhcModInfoPreview!"<CR>
nnoremap <leader>hh :execute "GhcImportedFromOpenHaddock"<CR>
nnoremap <leader>hI :execute "Unite -start-insert haskellimport"<CR>
nnoremap <leader>hr :call GhciReload()<CR>
nnoremap <leader>hs :execute "Unite hoogle"<CR>
nnoremap <leader>hb k0yiWjpA



" general mappings {{{

"
" Function keys
"
map <F2> :NERDTreeToggle<CR>
map <S-F2> :NERDTreeFind<CR>
map <F3> :TagbarToggle<CR>
map <F4> :ConqueTermSplit bash<CR>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

" ctrlp mappings
map <C-\> :CtrlPBufTag<cr>
map <C-t> :CtrlPTag<cr>

" go to start/end of line
imap <C-E> <C-O>$
imap <C-A> <C-O>^

" use arrow keys for window navigation
map <C-Up>   <C-W>k<C-W>_
map <C-Down> <C-W>j<C-W>_
map <C-Left> <C-W>h<C-W>_
map <C-Right> <C-W>l<C-W>_

" paste clipboard contents
map ,p "+p
nmap  ,q  :bd<CR>

" list lines containing word under cursor
map ,l [I:let nr = input("select: ")<Bar>exe "normal " . nr ."[\t"<CR>
" list occurences count of word under cursor
map ,L :execute ":%s@\\<" . expand("<cword>") . "\\>\@&@gn"<CR>


" use arrow keys for window manipulation
nnoremap <silent> <Up> <C-w>+<C-w>+
nnoremap <silent> <Down> <C-w>-<C-w>-
nnoremap <silent> <Left> <C-w><<C-w><
nnoremap <silent> <Right> <C-w>><C-w>>

" close quickfix/location list
nnoremap <silent> <C-W>z :wincmd z<Bar>cclose<Bar>lclose<Bar>HoogleClose<CR>
" toggle tabs
nnoremap <C-w><space> gt

" copy selected text to command line
vnoremap ; y:<C-r>"<C-b>

"
" home row leader key mappings
"
nnoremap <leader><CR> :NERDTreeToggle<CR>
nnoremap <leader>a %
" nnoremap <leader>s <Plug>SlimeParagraphSend()
" nnoremap <leader>d YCM           <-- get rid of this
"nnoremap <leader>f :Unite -start-insert file_rec/async<CR>
nnoremap <leader>f :FZF<CR>
" nnoremap <leader>g Signify       <-- get rid of this
" nnoremap <leader>hlt HiLinkTrace <-- get rid of this
" nnoremap <leader>j               <-- SPACE FOR RENT
" nnoremap <leader>k               <-- SPACE FOR RENT
" nnoremap <leader>l  ListToggle
" nnoremap <leader>;               <-- SPACE FOR RENT
" nnoremap <leader>'               <-- SPACE FOR RENT

"
" non-home row leader mappings
"
nnoremap <leader>o :Unite -start-insert outline<CR>
nnoremap <leader>t :CtrlPBufTag<CR>

" visual select last paste (textobj-lastpate)
nnoremap <leader>p vip
" general mappings }}}

map <Leader>mr :call RunCurrentSpecFile()<CR>
map <Leader>ml :call RunLastSpec()<CR>
map <Leader>ma :call RunAllSpecs()<CR>

"
" seek plugin
"
let g:seek_enable_jumps = 1


let g:signify_disable_by_default = 1
let g:signify_mapping_next_hunk = ']h'
let g:signify_mapping_prev_hunk = '[h'
let g:signify_vcs_list = ['git']

"
" sneak settings
"
let g:sneak#streak = 1

"
" syntastic plugin
"
let g:syntastic_javascript_checkers = ['eslint', 'jshint']
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=0
" always fill the location list with the errors
let g:syntastic_always_populate_loc_list=1
"don't care about warnings
"let g:syntastic_quiet_messages = { 'level': 'warnings' }


"
" tabular plugin {{{
"
vmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t> :Tabularize /-><CR>



" you complete me
let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_confirm_extra_conf = 0

" let g:ycm_key_invoke_completion = '<S-Space>'
" since mapping <S-Space> is a bit of a problem
" in the terminal the solution is to use xmodmap
" to remap S-Space to something else and use that
" in vim :
" $ xmodmap -e 'keycode 65 = space <F13> space'
let g:ycm_key_invoke_completion = '<S-F8>'



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsExpandTrigger = "<C-@>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:zv_zeal_directory = "/home/tpflug/.nix-profile/bin/zeal"
let g:zv_docsets_dir = "/home/tpflug/.local/share/Zeal/Zeal/docsets"
let g:zv_added_files_type = {
    \ 'javascript': 'node.js',
    \}
