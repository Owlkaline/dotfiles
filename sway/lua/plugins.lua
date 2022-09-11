--vim.cmd[[packadd packer.nvim]]
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
use { "williamboman/mason.nvim" }

use 'arcticicestudio/nord-vim'
use 'tyrannicaltoucan/vim-deep-space'
use 'altercation/vim-colors-solarized'
use 'jacoborus/tender.vim'
use 'wadackel/vim-dogrun'
use 'gkjgh/cobalt'
--use 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
use 'rakr/vim-two-firewatch'
use 'rakr/vim-one'
use 'dracula/vim'

use 'preservim/nerdcommenter'
use 'itchyny/lightline.vim'
use 'itchyny/vim-gitbranch'
use 'tpope/vim-fugitive'
use 'airblade/vim-gitgutter'
use 'preservim/nerdtree'
use 'tikhomirov/vim-glsl'
use 'rust-lang/rust.vim'
use 'luochen1990/rainbow'

use {'ms-jpq/coq_nvim', branch= 'coq'}
use {'ms-jpq/coq.artifacts',branch= 'artifacts'}
use {'ms-jpq/coq.thirdparty', branch= '3p'}

use 'neovim/nvim-lspconfig'
use 'simrat39/rust-tools.nvim'

use 'hrsh7th/nvim-compe'
use 'onsails/lspkind-nvim'

end)

--require'lspconfig'.rls.setup{}

--nvim_lsp.rls.setup {
--  settings = {
--    rust = {
--      unstable_features = true,
--      build_on_save = false,
--      all_features = true,
--    },
--  },
--}
