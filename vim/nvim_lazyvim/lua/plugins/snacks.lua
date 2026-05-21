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
      "<C-S-F>",
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
