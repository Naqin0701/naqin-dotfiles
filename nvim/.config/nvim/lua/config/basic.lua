local opt = vim.opt

-- Line numbers
opt.number = true             -- show absolute line number on current line
opt.relativenumber = true     -- show relative line numbers

-- Indentation
opt.tabstop = 4              -- number of spaces tabs count for
opt.shiftwidth = 4           -- size of an indent
opt.expandtab = true         -- use spaces instead of tabs
opt.smartindent = true       -- insert indents automatically

-- Search
opt.ignorecase = true        -- ignore case in search
opt.smartcase = true         -- don't ignore case with capitals in search
opt.hlsearch = false         -- don't highlight all search matches
opt.incsearch = true         -- show search matches as you type

-- Appearance
opt.termguicolors = true     -- enable 24-bit RGB colors
opt.cursorline = true        -- highlight the current line
opt.signcolumn = "yes"       -- always show sign column to prevent text shift
opt.wrap = false             -- disable line wrapping

-- Behavior
opt.mouse = "a"              -- enable mouse support in all modes
opt.undofile = true          -- save undo history to file
opt.swapfile = false         -- disable swap file creation

-- Splits
opt.splitright = true        -- vertical split goes to the right
opt.splitbelow = true        -- horizontal split goes below

-- Performance
opt.updatetime = 250         -- faster completion and diagnostics (default 4000ms)
opt.timeoutlen = 300         -- time to wait for key sequence completion (default 1000ms)
