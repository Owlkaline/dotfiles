require('plugins')
require('mappings')
require('settings')
require('rust_settings')

require("mason").setup()
--require'lspconfig'.rust_analyzer.setup{}
local lsp = require "lspconfig"
local coq = require "coq"

local omisharp_bin = "/home/akuma/.omisharp_bin/run"

lsp.omisharp.setup(coq.lsp_ensure_capabilities{
  cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
  root_dir = lsp.util.root_pattern("*.csproj","*.sln");
  ...
})
--lsp.rls.setup(coq.lsp_ensure_capabilities{})
lsp.rust_tools.setup(coq.lsp_ensure_capabilities{})

--require('lspkind').setup({
--    -- enables text annotations
--    --
--    -- default: true
--    with_text = true,
--
--    -- default symbol map
--    -- can be either 'default' or
--    -- 'codicons' for codicon preset (requires vscode-codicons font installed)
--    --
--    -- default: 'default'
--    preset = 'codicons',
--
--    -- override preset symbols
--    --
--    -- default: {}
--    symbol_map = {
--      Text = '',
--      Method = 'ƒ',
--      Function = '',
--      Constructor = '',
--      Variable = '',
--      Class = '',
--      Interface = 'ﰮ',
--      Module = '',
--      Property = '',
--      Unit = '',
--      Value = '',
--      Enum = '了',
--      Keyword = '',
--      Snippet = '﬌',
--      Color = '',
--      File = '',
--      Folder = '',
--      EnumMember = '',
--      Constant = '',
--      Struct = ''
--    },
--})

--local use = require('packer').use
--require('packer').startup(function()
--  use 'wbthomason/packer.nvim' -- Package manager
--  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
--end)
--
--local lsp = require "lspconfig"
--local coq = require "coq" -- add this
--
--require('mappings')
--require('arcticicestudio/nord-vim')
--require('tyrannicaltoucan/vim-deep-space')
--require('herrbischoff/cobalt2.vim')
--require('altercation/vim-colors-solarized')
--require('jacoborus/tender.vim')
--require('wadackel/vim-dogrun')
--require('nightsense/carbonized')
--require('gkjgh/cobalt')
--require('rakr/vim-two-firewatch')
--require('rakr/vim-one')
--require('dracula/vim')
--require('preservim/nerdcommenter')
--require('itchyny/lightline.vim')
--require('itchyny/vim-gitbranch')
--require('tpope/vim-fugitive')
--require('airblade/vim-gitgutter')
--require('preservim/nerdtree')
--require('tikhomirov/vim-glsl')
--require('rust-lang/rust.vim')
--require('luochen1990/rainbow')
--require('neovim/nvim-lspconfig')
--require('simrat39/rust-tools.nvim')
--
--HOME = os.getenv("HOME");
--
--vim.opt.completeopt="preview,menuone,longest"
----vim.opt.completeopt+=menuone
----vim.opt.completeopt+=longest
--
--vim.opt.history=500
--vim.opt.cc=100
--
--vim.opt.ignorecase=true
--vim.opt.lazyredraw=true
--
----syntax enable
----syntax on
--
--vim.opt.updatetime=100
--
----map <C-o> :NERDTreeToggle <CR>
----vmap <Tab> >gv
----vmap <S-Tab> <gv
--
--nnoremap <S-Up> :m-2<CR>
--nnoremap <S-Down> :m+<CR>
--inoremap <S-Up> <Esc>:m-2<CR>
--inoremap <S-Down> <Esc>:m+<CR>
--
--let g:rainbow_active = 1
--let g:rustfmt_autosave = 1
--
--let $NVIM_TUI_ENABLE_TRUE_COLOR=1
--
--vim.opt.noshowmode
--
--vim.opt.termguicolors
--let g:two_firewatch_italics=1
--colorscheme dracula
--vim.opt.background=dark
--
-- " 'challenger_deep',
--let g:lightline = {
--      \ 'colorscheme': 'dracula',
--      \ 'active': {
--      \   'left': [ [ 'mode', 'paste' ],
--      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
--      \ },
--      \ 'component_function': {
--      \   'gitbranch': 'FugitiveHead'
--      \ },
--      \ }
--
--vim.opt.showmatch           " Show matching brackets.
--vim.opt.number              " Show the line numbers on the left side.
--vim.opt.expandtab           " Insert spaces when TAB is pressed.
--vim.opt.softtabstop=2
--vim.opt.tabstop=2           " Render TABs using this many spaces.
--vim.opt.shiftwidth=2        " Indentation amount for < and > commands.
--vim.opt.splitright
--vim.opt.splitbelow
--
--let g:rust_recommended_style = 0
--let g:ycm_rust_toolchain_root = "stable"
--
--let g:coq_settings = { 'auto_start': 'shut-up', 'display.icons.mode': 'none' }
--
--if !&scrolloff
--  vim.opt.scrolloff=3       " Show next 3 lines while scrolling.
--endif
--if !&sidescrolloff
--  vim.opt.sidescrolloff=5   " Show next 5 columns while side-scrolling.
--endif
--
--" Tell Vim which characters to show for expanded TABs,
--" trailing whitespace, and end-of-lines. VERY useful!
--if &listchars ==# 'eol:$'
--  vim.opt.listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
--endif
--vim.opt.list                " Show problematic characters.
