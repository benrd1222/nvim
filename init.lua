vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Scrolloff
local scrolloff = math.floor(vim.o.lines / 2) - 3
vim.opt.scrolloff = scrolloff

require("plugins.init")
require("config.autocmd")
require("config.binds")

-- Colorcheme
vim.cmd.colorscheme("nordic")

-- Line numbers
vim.opt.cursorline = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.api.nvim_set_hl(0, "LineNr", { fg = "#6c7086" }) -- overlay0
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#97B67C", bold = true }) -- green

-- Windows
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.o.winborder = "rounded"

-- Sane tab management
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

-- Undo management
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Better Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

-- Nowrap
vim.opt.wrap = false

-- Indent
vim.o.autoindent = true

-- Undotree
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<leader>u", require("undotree").open)

-- Local project config
vim.o.exrc = true

-- Ignore case and some flash nvim stuff
-- may need to tweak the nordic palette options here to my liking
vim.o.ignorecase = true
vim.o.smartcase = true
vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#cb775d", bold = true }) -- overlay0 replaced with an orange from nordic
vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#60728a", bg = "#d79784", bold = false }) -- overlay0 replaced with a grey foreground and a bright orange background from nordic
vim.api.nvim_set_hl(0, "FlashCurrent", { bg = "#cb775d", fg = "#60728a", bold = true }) -- overlay0
