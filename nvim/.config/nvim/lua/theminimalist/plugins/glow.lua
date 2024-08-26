return {
    "ellisonleao/glow.nvim",
    config = true,
    vim.keymap.set("n", "<leader>G", vim.cmd.Glow, { desc = "Preview Markdown" })
}
