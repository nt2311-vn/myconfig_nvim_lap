return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
  local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = {
            -- low level
            "c",
            "cpp",

            -- respective lang
            "go",
            "rust",
            "c_sharp",

            --high level
            "python",
            "lua",
            "javascript",
            "typescript",

            --web dev
            "html",
            "css",
            "vue",
            "svelte",


            --utility
            "jq",
            "dockerfile",
            "json",
            "yaml",
            "gitignore",
            "jsdoc",
            "vim",
            "vimdoc",

          },
          sync_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
        })
  end
}
