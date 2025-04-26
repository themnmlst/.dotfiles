vim.g.mapleader = " "
local keymap = vim.keymap

-- Scroll down half a page and center the cursor vertically
keymap.set("n", "<C-d>", "<C-d>zz")

-- Open a new tmux window and run `tmux-sessionizer` silently
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Go to previous item in the quickfix list and center the cursor
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Go to next item in the quickfix list and center the cursor
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Scroll up half a page and center the cursor vertically
keymap.set("n", "<C-u>", "<C-u>zz")

-- Increment number under the cursor
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })

-- Decrement number under the cursor
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Reload (source) the current file
keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Yank (copy) the current line to the system clipboard
keymap.set("n", "<leader>Y", [["+Y]])

-- Go to previous item in the location list and center the cursor
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Go to next item in the location list and center the cursor
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Trigger the 'make_it_rain' animation from the CellularAutomaton plugin
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Open netrw file explorer (aliased as 'pv' like "project view")
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })

-- Perform a case-insensitive search-and-replace of the word under the cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Stop the collaborative session with Vim With Me plugin
keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- Edit the Packer plugin setup file directly
keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

-- Start the collaborative session with Vim With Me plugin
keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)

-- Make the current file executable (useful for scripts)
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Join the line below to the current one, keeping cursor in place
keymap.set("n", "J", "mzJ`z")

-- Go to previous search match and center cursor vertically
keymap.set("n", "N", "Nzzzv")

-- Disable Q in normal mode (usually enters Ex mode, which is rarely used)
keymap.set("n", "Q", "<nop>")

-- Go to next search match and center cursor vertically
keymap.set("n", "n", "nzzzv")

-- Delete character under cursor without copying it to the clipboard
keymap.set("n", "x", '"_x')

-- Move selected lines down one line and reselect them
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Move selected lines up one line and reselect them
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste over selection without overwriting clipboard
keymap.set("x", "<leader>p", [["_dP]])

-- Delete to the black hole register in normal and visual mode
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Yank (copy) to the system clipboard in normal and visual mode
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
