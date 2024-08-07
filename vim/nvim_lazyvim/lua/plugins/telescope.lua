local excludedFiles = {
  "yarn%.lock",
  "package%-lock%.json",
  "node_modules/.*",
  "%.git/.*",
}
local telescopeOpts = {
  hidden = true,
  follow = true,
  file_ignore_patterns = excludedFiles,
  path_display = { "truncate" },
}

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<C-p>",
      function()
        require("telescope.builtin").find_files(telescopeOpts)
      end,
      desc = "Find file",
    },
    {
      "<C-S-F>",
      function()
        require("telescope.builtin").live_grep(telescopeOpts)
      end,
      desc = "Search in files",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
