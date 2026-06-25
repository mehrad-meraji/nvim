local function sync_background()
  local out = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null")
  vim.o.background = out:find("Dark") and "dark" or "light"
end

sync_background()

vim.api.nvim_create_autocmd("FocusGained", {
  callback = function()
    sync_background()
    vim.cmd.colorscheme("catppuccin")
  end,
})

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "auto", -- ponytail: dark=mocha, light=latte via vim.o.background
      background = { dark = "mocha", light = "latte" },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
}
