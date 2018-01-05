nnoremap <Space> <Nop>
let mapleader = "\<Space>"

call plug#begin('~/.nvim/plugged')

"
" tpope essentials
"
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
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rhubarb'

"
" completions & snippets
"
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim'

"
" javascript stuff
"
Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'janko-m/vim-test'
Plug 'flowtype/vim-flow'
Plug 'steelsojka/deoplete-flow'
"
" text objects & movements
"
Plug 'vim-scripts/textobj-user'
Plug 'vim-scripts/textobj-entire'
Plug 'vim-scripts/textobj-line'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-diff'
Plug 'kana/vim-textobj-syntax'
Plug 'thinca/vim-textobj-comment'
Plug 'gilligan/textobj-lastpaste'
Plug 'bkad/CamelCaseMotion'
Plug 'mbriggs/mark.vim'
Plug 'justinmk/vim-sneak'
Plug 'wellle/targets.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'

"
" haskell
"
"Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
"Plug 'ujihisa/neco-ghc', { 'for': 'haskell' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }
Plug 'ujihisa/unite-haskellimport', { 'for': 'haskell' }
Plug 'eagletmt/unite-haddock', { 'for': 'haskell' }
"Plug 'parsonsmatt/intero-neovim', { 'for': 'haskell' }
"Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }

"
" git / scm
"
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'

"
" themes & looks
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iCyMind/NeoSolarized'

"
" terminal / integration
"
Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell.vim'
Plug 'gilligan/vim-tmux-navigator'
Plug 'kassio/neoterm'

"
" navigation / buffers
"
Plug 'Valloric/ListToggle'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Majutsushi/tagbar'
Plug 'wellle/visual-split.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kmnk/vim-unite-giti'
"
" misc
"
Plug 'vim-scripts/UnconditionalPaste'
Plug 'KabbAmine/zeavim.vim'
Plug 'airblade/vim-rooter'
Plug 'itchyny/calendar.vim'
Plug 'LnL7/vim-nix'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'rizzatti/dash.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'krisajenkins/vim-projectlocal'
Plug 'terryma/vim-multiple-cursors'
Plug 'jceb/vim-orgmode'
Plug 'reedes/vim-wordy'
Plug 'elmcast/elm-vim'
Plug 'tyru/open-browser.vim'
Plug 'shime/vim-livedown'


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
set nohlsearch       " no search higlight
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
set clipboard=unnamedplus " clipboard = unnamed reg for easy interaction
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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:neosolarized_contrast = "high"
let g:neosolarized_visibility = "high"
"colo solarized
colo NeoSolarized

"
" deoplete tern settings
"
let g:deoplete#sources#ternjs#types = 1

"
" deoplete flow settings
"
let g:deoplete#sources#flow#flow_bin = 'flow' 

"
" vim-flow settings
"
let g:flow#enable = 0
let g:flow#omnifunc = 0

" airline settings
"
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline#extensions#ale#enabled = 1

"
" ale/flow config: use globally installed executable
"
let g:ale_javascript_flow_use_global = 1

"
" vim-flow
"
let g:flow#enable = 0

"
" auto commands
"

" Show trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
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
let g:github_enterprise_urls = ['https://github.hc.ag']
autocmd QuickFixCmdPost *grep* cwindow

let $PATH = $PATH . ':' . expand("~/.cabal/bin")

"
" haskell-vim settings
"

set tags=tags;/,codex.tags;/

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_case_alternative = 1



call unite#custom_default_action('haddock', 'browse_remote')

"
" configuration for necoghc
"
let g:necoghc_enable_detailed_browse = 1
let g:necoghc_debug = 1
"
" configuration for ghcimportedfrom-vim
"
let g:ghcimportedfrom_browser = '/usr/bin/chromium-browser'


" fix highlightning of functions
set iskeyword+='

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
nnoremap <leader>hg :execute "GhcModSigCodegen"<CR>
nnoremap <leader>hI :execute "Unite -start-insert haskellimport"<CR>
nnoremap <leader>hr :call GhciReload()<CR>
nnoremap <leader>hs :execute "Unite hoogle"<CR>
nnoremap <leader>hb k0yiWjpA
nnoremap <leader>tn :execute "Tnew"<CR>
nnoremap <leader>tt :execute "Ttoggle"<CR>
nnoremap <leader>tc :execute "Tclose"<CR>

" general mappings {{{

" go to start/end of line
imap <C-E> <C-O>$
imap <C-A> <C-O>^


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
" nnoremap <leader>s <Plug>SlimeParagraphSend()
" nnoremap <leader>d YCM           <-- get rid of this
"nnoremap <leader>f :Unite -start-insert file_rec/async<CR>
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

" visual select last paste (textobj-lastpate)
nnoremap <leader>p vip

nnoremap <C-p> :FZF<cr>
nnoremap <C-g> :GFiles<cr>
" general mappings }}}


"
" seek plugin
"
let g:seek_enable_jumps = 1


let g:signify_disable_by_default = 0
let g:signify_vcs_list = ['git']
nmap ]h <plug>(signify-next-hunk)
nmap [h <plug>(signify-prev-hunk)


"
" sneak settings
"
let g:sneak#streak = 1


"
" tabular plugin {{{
"
vmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t> :Tabularize /-><CR>

let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-K>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:dash_map = {
    \ 'javascript': [ 'javascript', 'nodejs', 'ramda' ]
    \}

"
" vim test settings
"
nnoremap <leader>mr :TestFile<CR>
nnoremap <leader>mi :TestNearest<CR>
nnoremap <leader>ml :TestLast<CR>
nnoremap <leader>mc :Tclose<CR>
"let test#strategy = 'neoterm'
let test#strategy = 'neovim'

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        exec t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-w>z :ZoomToggle<CR>



" Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
if has('nvim')
    tnoremap <F2> <C-\><C-n>
    tnoremap <C-h> <C-\><C-n><C-w>h
    tnoremap <C-j> <C-\><C-n><C-w>j
    tnoremap <C-k> <C-\><C-n><C-w>k
    tnoremap <C-l> <C-\><C-n><C-w>l
    "tnoremap ,<ESC> <C-\><C-n>
endif

"
" ale linters
"
let g:ale_linters = {'haskell': ['hlint', 'intero', 'ghc']}


" ctrlsf settings
nmap     <leader>f <Plug>CtrlSFPrompt

" Sideways mapping
nnoremap <leader>[ :SidewaysLeft<CR>
nnoremap <leader>] :SidewaysRight<CR>

" vim-operator-flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" use fzf
set rtp+=~/.fzf

" deoplete
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#sources = {}
let g:deoplete#sources.markdown = ['buffer', 'look']

let g:javascript_conceal_function       = "λ"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_arrow_function = "⇒"

" neoterm
let g:neoterm_size = 10

" tab navigation
"
nnoremap <C-f>1 1gt
nnoremap <C-f>2 2gt
nnoremap <C-f>3 3gt
nnoremap <C-f>4 4gt
nnoremap <C-f>5 5gt
nnoremap <C-f>c :tabnew<CR>
nnoremap <C-f>q :tabclose<CR>

" openbrowser settings
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


" tmux color hacking stuff
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
