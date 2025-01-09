return { 
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      default_integrations = true,
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
