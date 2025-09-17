local opt = vim.opt

-- Netrw settings to make it more "tree-like"
vim.g.netrw_banner = 0       -- Disable the annoying banner
vim.g.netrw_liststyle = 0    -- Tree-style listing
vim.g.netrw_browse_split = 0 -- Open files in the same window
vim.g.netrw_altv = 1         -- Open splits to the right
vim.g.netrw_winsize = 25     -- Set width of netrw window

-- Automatically indent new lines to match the indentation of the previous line
opt.autoindent = true

-- Disable backup files (usually `.filename~`)
opt.backup = false

-- Show a vertical line at column 80 (helps with line length limits)
opt.colorcolumn = "80"

-- Highlight the current line the cursor is on
opt.cursorline = true

-- Convert tabs to spaces
opt.expandtab = true

-- Disable persistent search highlight until a new search is made
opt.hlsearch = false

-- Enable search to show matches as you type
opt.incsearch = true

-- Same as opt.nu; redundant but okay — keeps line numbers on
opt.number = true

-- Show relative line numbers (distance from the current line)
opt.relativenumber = true

-- Keep at least 8 lines visible above and below the cursor when scrolling
opt.scrolloff = 8

-- Number of spaces inserted when indenting with `>>`, `<<`, etc.
opt.shiftwidth = 4

-- Always show the sign column (prevents screen shifting when errors appear)
opt.signcolumn = "yes"

-- Make search smarter: case-insensitive unless you type uppercase
opt.smartcase = true

-- Smart auto-indentation on new lines, particularly for languages like C, Lua, etc.
opt.smartindent = true

-- Number of spaces that a `<Tab>` counts for in insert mode
opt.softtabstop = 4

-- Disable swap file creation (useful if you use git or external versioning)
opt.swapfile = false

-- Number of spaces a `<Tab>` counts for in normal mode
opt.tabstop = 4

-- Enable full RGB color support in the terminal
opt.termguicolors = true

-- Directory to store undo history between sessions
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Enable persistent undo (saves undo history even after closing files)
opt.undofile = true

-- Time (in ms) to wait before triggering events like CursorHold
opt.updatetime = 50

-- Disable line wrapping (long lines go off the screen instead of wrapping)
opt.wrap = false
