vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
vim.g.maplocaleader = ' '

vim.o.hlsearch = false
vim.wo.number = true
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true

vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

vim.o.backup = false -- creates a backup file
vim.o.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.o.colorcolumn = '80' -- fixes indentline for now
-- vim.o.conceallevel = 0 -- so that `` is visible in markdown files
vim.o.fileencoding = 'utf-8' -- the encoding written to a file
-- vim.o.foldmethod = 'manual' -- folding set to 'expr' for treesitter based folding
-- vim.o.foldexpr = '' -- set to 'nvim_treesitter#foldexpr()' for treesitter based folding
-- vim.o.guifont = 'monospace:h17' -- the font used in graphical neovim applications
vim.o.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.o.hlsearch = false -- highlight all matches on previous search pattern
vim.o.ignorecase = true -- ignore case in search patterns
-- vim.o.mouse = 'a' -- allow the mouse to be used in neovim
vim.o.pumheight = 10 -- pop up menu height
vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.o.showtabline = 2 -- always show tabs
vim.o.smartcase = true -- smart case
vim.o.smartindent = true -- make indenting smarter again
vim.o.splitbelow = true -- force all horizontal splits to go below current window
vim.o.splitright = true -- force all vertical splits to go to the right of current window
vim.o.swapfile = false -- creates a swapfile
vim.o.title = true -- set the title of window to the value of the titlestring
vim.o.titlestring = '%<%F%=%l/%L - nvim' -- what the title of the window will be set to
vim.o.undodir = vim.fn.stdpath 'cache' .. '/undo'
vim.o.undofile = true -- enable persistent undo
vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.o.expandtab = true -- convert tabs to spaces
vim.o.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.o.tabstop = 2 -- insert 2 spaces for a tab
vim.o.cursorline = true -- highlight the current line
vim.o.number = true -- set numbered lines
vim.o.relativenumber = true -- set relative numbered lines
vim.o.numberwidth = 4 -- set number column width to 4 {default 4}
vim.o.wrap = false -- display lines as one long line
-- vim.o.spell = false
-- vim.o.spelllang = 'en'
vim.o.scrolloff = 8 -- is one of my fav
vim.o.sidescrolloff = 8
-- vim.o.guicursor = ''
