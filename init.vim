:lua require('init')

:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt=menu,menuone,noselect

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap gt :BufferLineCycleNext<CR>
nnoremap gT :BufferLineCyclePrev<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>

nnoremap g1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap g2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap g3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap g4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap g5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap g6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap g7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap g8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap g9 <Cmd>BufferLineGoToBuffer 9<CR>

let g:ale_disable_lsp = 1
let g:ale_lint_on_text_changed = 1

