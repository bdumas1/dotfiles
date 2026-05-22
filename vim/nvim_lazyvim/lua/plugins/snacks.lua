local excludedFiles = {
  "yarn.lock",
  "package-lock.json",
  "node_modules",
  ".git",
}

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          follow = true,
          exclude = excludedFiles,
        },
        grep = {
          hidden = true,
          follow = true,
          exclude = excludedFiles,
        },
      },
    },
  },
  keys = {
    {
      "<C-p>",
      function()
        Snacks.picker.files()
      end,
      desc = "Find file",
    },
    {
      "<F13>", -- because kitty conf has: map ctrl+shift+f send_text all \x1b[1;2P
      function()
        Snacks.picker.grep()
      end,
      desc = "Search in files",
    },
    {
      "<leader>b",
      function()
        Snacks.explorer.reveal()
      end,
      desc = "Reveal file in explorer",
    },
  },
}
