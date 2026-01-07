--==========================================================
-- PLUGINS
--==========================================================

vim.pack.add {
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/catppuccin/nvim' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/akinsho/bufferline.nvim' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/mason-org/mason.nvim' },
}




--==========================================================
-- nvim-lspconfig
--==========================================================
vim.lsp.enable({ "lua_ls", "html", "css", "ts_ls", })





vim.lsp.config('css', {
  cmd = { 'vscode-css-language-server', '--stdio' },
  filetypes = { 'css', 'scss', 'less' },
  root_markers = { 'package.json', '.git' },
})


vim.lsp.config('html', {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html' }, -- tanggalin ang 'templ' kung di mo kailangan
  -- ... rest ng config
})

vim.lsp.config('javascript', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'typescript', },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' },
})



vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)








--==========================================================
-- telescoppe.nvim
--==========================================================
require "telescope".setup()
vim.keymap.set('n', '<leader>f', '<cmd>Telescope<CR>', { silent = true })
vim.keymap.set('n', '<leader>h', '<cmd>Telescope help_tags<CR>', { silent = true })




--==========================================================
-- Colorscheme
--==========================================================
require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  background = {         -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = false, -- disables setting the background color.
  float = {
    transparent = false,          -- enable transparent floating windows
    solid = false,                -- use solid styling for floating windows, see |winborder|
  },
  show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
  term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false,              -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15,            -- percentage of the shade to apply to the inactive window
  },
  no_italic = false,              -- Force no italic
  no_bold = false,                -- Force no bold
  no_underline = false,           -- Force no underline
  styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },      -- Change the style of comments
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
    virtual_text = {
      errors = { "italic" },
      hints = { "italic" },
      warnings = { "italic" },
      information = { "italic" },
      ok = { "italic" },
    },
    underlines = {
      errors = { "underline" },
      hints = { "underline" },
      warnings = { "underline" },
      information = { "underline" },
      ok = { "underline" },
    },
    inlay_hints = {
      background = true,
    },
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
  auto_integrations = false,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"



--==========================================================
-- Bufferline
--==========================================================
require "bufferline".setup()




--==========================================================
-- nvim-tree
--==========================================================
require "nvim-tree".setup()
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1



vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { silent = true })




--==========================================================
-- lualine
--==========================================================
require "lualine".setup()


--==========================================================
-- mason-nvim
--==========================================================
require 'mason'.setup()
