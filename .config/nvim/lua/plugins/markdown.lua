return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		main = "render-markdown",
		opts = {},
		name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		config = function()
			require("render-markdown").setup({
				render_modes = true,
				heading = {
					width = "block",
					min_width = 45,
				},
				code = {
					width = "block",
					min_width = 75,
				},
				pipe_table = { preset = "round" },
			})
		end,
	},
	{
		"jannis-baum/vivify.vim",
		vim.keymap.set("n", "<leader>mp", ":Vivify<CR>", { desc = "Markdown Preview" }),
	},
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
		--   -- refer to `:h file-pattern` for more examples
		--   "BufReadPre path/to/my-vault/*.md",
		--   "BufNewFile path/to/my-vault/*.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		opts = {
			ui = { enable = false },
			workspaces = {
				{
					name = "main",
					path = "/Users/cilency/Documents/Obisdian-Vault",
				},
			},

			-- see below for full list of options 👇
		},
	},
}
