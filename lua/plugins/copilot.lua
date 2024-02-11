return {
  "github/copilot.vim",
  config = false,
  init = function()
    vim.g.copilot_filetypes = {
      "javascript",
      "lua",
      "python",
      "go",
      "typescript",
      "yaml",
      "rust",
      "c",
      "cpp",
      "csharp",
      "java",
    }
    vim.keymap.set("i", "<leader>cs", 'copilot#Accept("<CR>")', {
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
    })

    vim.keymap.set("i", "<leader>cn", "copilot#Next()", {
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
    })
    vim.keymap.set("i", "<leader>cp", "copilot#Previous()", {
      noremap = true,
      silent = true,
      expr = true,
      replace_keycodes = false,
    })

    -- Write keymap for copilot panel
    vim.keymap.set("n", "<leader>cp", ":Copilot panel<CR>", {
      noremap = true,
      silent = true,
      expr = false,
      replace_keycodes = false,
    })

    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,
}
