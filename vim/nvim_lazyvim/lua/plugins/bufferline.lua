return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = {
      { "nvim-mini/mini.bufremove", version = "*" },
    },
    keys = {
      { "gT", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "gt", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    },
  },
}
