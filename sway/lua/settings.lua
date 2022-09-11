require('rust-tools.inlay_hints').set_inlay_hints()
require('rust-tools.hover_actions').hover_actions()

HOME = os.getenv("HOME");

vim.opt.completeopt="preview,menuone,longest"

vim.opt.history=500
vim.opt.cc='100'

vim.opt.ignorecase=true
vim.opt.lazyredraw=true

vim.opt.updatetime=100

vim.g.rainbow_active = 1
vim.g.rustfmt_autosave = 1
--let g:rainbow_active = 1
--let g:rustfmt_autosave = 1

NVIM_TUI_ENABLE_TRUE_COLOR=1

--vim.opt.noshowmode=true

vim.opt.termguicolors=true
--let g:two_firewatch_italics=1
vim.opt.background='dark'

vim.opt.showmatch=true           -- Show matching brackets.
vim.opt.number=true              -- Show the line numbers on the left side.
vim.opt.expandtab=true           -- Insert spaces when TAB is pressed.
vim.opt.softtabstop=2
vim.opt.tabstop=2           -- Render TABs using this many spaces.
vim.opt.shiftwidth=2        -- Indentation amount for < and > commands.
vim.opt.splitright=true
vim.opt.splitbelow=true

vim.cmd("colorscheme dracula")

vim.g.coq_settings = { auto_start= true, }

vim.opt.scrolloff = 3

vim.g.rust_recommended_style = 0
--let g:rust_recommended_style = 0
--let g:ycm_rust_toolchain_root = "stable"

--let g:coq_settings = { 'auto_start': 'shut-up', 'display.icons.mode': 'none' }

--if !&scrolloff
--  vim.opt.scrolloff=3       -- Show next 3 lines while scrolling.
--endif
--if !&sidescrolloff
--  vim.opt.sidescrolloff=5   -- Show next 5 columns while side-scrolling.
--endif

-- Tell Vim which characters to show for expanded TABs,
-- trailing whitespace, and end-of-lines. VERY useful!
--if &listchars ==# 'eol:$'
--  vim.opt.listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
--endif
vim.opt.list=true                -- Show problematic characters.

vim.g.lspkind = { symbol_map = {
      Text = '',
      Method = 'ƒ',
      Function = '',
      Constructor = '',
      Variable = '',
      Class = '',
      Interface = 'ﰮ',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '了',
      Keyword = '',
      Snippet = '﬌',
      Color = '',
      File = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = ''
    }}
