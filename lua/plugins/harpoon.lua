return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
  end,
  keys = function()
    local harpoon = require("harpoon")
    return {
      {
        "<leader>a",
        function()
          harpoon:list():add()
        end,
        desc = "Add to quick jump list",
      },
      {
        "<C-e>",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Open quick jump list",
      },
      {
        "<C-h>",
        function()
          harpoon:list():select(1)
        end,
        desc = "Select quick list item 1",
      },
      {
        "<C-j>",
        function()
          harpoon:list():select(2)
        end,
        desc = "Select quick list item 2",
      },
      {
        "<C-k>",
        function()
          harpoon:list():select(3)
        end,
        desc = "Select quick list item 1",
      },
      {
        "<C-l>",
        function()
          harpoon:list():select(4)
        end,
        desc = "Select quick list item 4",
      },
      {
        "<C-S-P>",
        function()
          harpoon:list():prev()
        end,
        desc = "Select quick list previous item",
      },
      {
        "<C-S-N>",
        function()
          harpoon:list():next()
        end,
        desc = "Select quick list next item",
      },
    }
  end,
}
