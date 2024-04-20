return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup()
    vim.keymap.set("n", "<leader>e", vim.cmd.Oil, { desc = "Open file explorer" })
  end,
}
