vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.clipboard = "unnamedplus"
vim.wo.relativenumber = true
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n','<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- neotree
require("neo-tree").setup({
    window = {
          position = "left",
          width = 25,
          },
})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})


require("tokyonight").setup({
  style = "moon",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = {italic = true},
    keywords = {italic = false},
  },
  lualine_bold = true,
})

vim.cmd.colorscheme "tokyonight-moon"

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
