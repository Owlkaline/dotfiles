vim.cmd('noremap <C-b> :noh<cr>:call clearmatches()<cr>') 

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nnoremap(shortcut, command)
  map('n', shortcut, command)
end

function inoremap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

vmap('<Tab>', '>gv')
vmap('<S-Tab>', '<gv')

nnoremap('<S-Up>', ':m-2<CR>')
nnoremap('<S-Down>', ':m+<CR>')
inoremap('<S-Up>', '<Esc>:m-2<CR>')
inoremap('<S-Down>', '<Esc>:m+<CR>')

 -- Easy window split; C-w v -> vv, C-w - s -> ss
nnoremap('vv', '<C-w>v')
nnoremap('ss', '<C-w>s')
vim.o.splitbelow = true -- when splitting horizontally, move coursor to lower pane
vim.o.splitright = true -- when splitting vertically, mnove coursor to right pane
