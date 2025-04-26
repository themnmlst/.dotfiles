return {
	{
		-- "folke/tokyonight.nvim",
		-- priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- local bg = "#011628"
		-- local bg_dark = "#011423"
		-- local bg_highlight = "#143652"
		-- local bg_search = "#0A64AC"
		-- local bg_visual = "#275378"
		-- local fg = "#CBE0F0"
		-- local fg_dark = "#B4D0E9"
		-- local fg_gutter = "#627E97"
		-- local border = "#547998"

		-- require("tokyonight").setup({
		-- 	style = "day",
		-- })
		-- load the colorscheme here
		-- 	vim.cmd([[colorscheme tokyonight]])
		-- end,
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({
				-- ...
			})

			-- vim.cmd("colorscheme github_dark")
			vim.cmd("colorscheme github_light_default")
		end,
	},
}
