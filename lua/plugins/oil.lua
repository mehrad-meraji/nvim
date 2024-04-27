return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local oil = require("oil")
    oil.setup({
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name)
          return vim.startswith(name, ".git")
        end,
      },
      float = {
        max_width = 80,
        max_height = 60,
      },
    })
    vim.keymap.set("n", "<leader>e", vim.cmd.Oil, { desc = "Open file explorer" })
    vim.keymap.set("n", "<leader>E", oil.open_float, { desc = "Open file explorer (floating)" })
  end,
}
