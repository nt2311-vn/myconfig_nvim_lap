return {
  -- {
  -- 	"folke/tokyonight.nvim",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- 	opts = {},
  -- 	config = function()
  -- 		require("tokyonight").setup({
  -- 			style = "moon",
  -- 			transparent = false,
  -- 			terminal_colors = true,
  -- 			styles = {
  -- 				comments = { italic = true },
  -- 				keywords = { italic = false },
  -- 			},
  -- 			lualine_bold = true,
  -- 		})
  -- 		vim.cmd("colorscheme tokyonight-night")
  -- 	end,
  -- },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        styles = {
          comment = { italic = true },
          keyword = { italic = false },
          type = { italic = false },
          storageclass = { italic = false },
          structure = { italic = false },
          parameter = { italic = false },
          annotation = { italic = false },
          tag_attribute = { italic = false },
        },
        filter = "spectrum",
      })
      vim.cmd([[colorscheme monokai-pro]])
    end,
  },
}
