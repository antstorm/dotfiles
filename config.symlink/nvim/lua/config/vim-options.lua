-- Disable Vi compatibility (not needed in Neovim but kept for reference)
vim.opt.compatible = false

-- Enable filetype detection, plugins, and indentation
vim.cmd('filetype plugin indent on')

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set true color support
vim.opt.termguicolors = true

-- Set colorscheme
vim.cmd('colorscheme twilight')

-- Display line numbers
vim.opt.number = true

-- Always show status line
vim.opt.laststatus = 2

-- Enable filetype-based indentation
vim.cmd('filetype indent on')

-- Search settings
vim.opt.hlsearch = true      -- Don't highlight search results
vim.opt.incsearch = true     -- Highlight as you type your search
vim.opt.ignorecase = true    -- Case-insensitive searches

-- Show ruler info
vim.opt.ruler = true

-- Highlight cursor line
vim.opt.cursorline = true

-- Indentation settings
vim.opt.autoindent = true    -- Auto-indent
vim.opt.tabstop = 2          -- Tab spacing
vim.opt.softtabstop = 2      -- Unify
vim.opt.shiftwidth = 2       -- Indent/outdent by 2 columns
vim.opt.shiftround = true    -- Always indent/outdent to the nearest tabstop
vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.smarttab = true      -- Use tabs at the start of a line, spaces elsewhere

-- Don't wrap text
vim.opt.wrap = false

-- Add word boundaries, allowing to use ciw to change between _'s and -'s
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")
