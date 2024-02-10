return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup {
      style = "moon",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = {italic = true},
        keywords = {italic = false},
      },
      lualine_bold = true
    }
    vim.cmd("colorscheme tokyonight-night")
  end
}
