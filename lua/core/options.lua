vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


vim.o.encoding = "utf-8"



-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = "a"



-- Make line numbers default
vim.o.number = true



-- You can also add relative line numbers, to help with jumping.
vim.o.relativenumber = true


-- ignore swap file
vim.o.swapfile = false



-- Show which line your cursor is on
vim.o.cursorline = true



-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10



vim.o.wrap = false



vim.o.winborder = "rounded"



-- Keep signcolumn on by default
vim.o.signcolumn = "yes"



--  Remove this option if you want your OS clipboard to remain independent.
vim.o.clipboard = "unnamedplus"



-- Save undo history
vim.o.undofile = true



--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }



-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.smartcase = true
vim.o.ignorecase = true



-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'


vim.o.incsearch = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.completeopt = "menu,menuone,preview"
vim.o.showtabline = 10
vim.o.termguicolors = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

vim.o.laststatus = 3

-- Enable break indent
vim.o.breakindent = true-- Enable break indent



-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true
