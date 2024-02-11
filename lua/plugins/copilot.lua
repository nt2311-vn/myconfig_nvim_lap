return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      filetypes = {
        yaml = true,
        gitignore = true,
        javascript = true,
        typescript = true,
        python = true,
        go = true,
        lua = true,
      },
    })
  end,
}
