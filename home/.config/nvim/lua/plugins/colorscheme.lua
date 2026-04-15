return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "mocha",
      integrations = {
        gitsigns = true,
        treesitter = true,
        mason = true,
        cmp = true,
        telescope = true,
        which_key = true,
        notify = true,
        mini = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      local theme = os.getenv("CHEZMOI_THEME") or "{{ .theme }}"
      opts.colorscheme = theme == "catppuccin" and "catppuccin" or "tokyonight"
    end,
  },
}
