return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>b", "<Cmd>Neotree reveal<CR>", desc = "File explorer" },
    },
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    },
  },
}
