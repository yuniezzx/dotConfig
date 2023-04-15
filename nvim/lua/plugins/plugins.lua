return {
  -- tmux and vim navigator
  {
    "christoomey/vim-tmux-navigator",
    event = "VimEnter",
    config = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
  },

  -- neo-tree extra setting
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 35,
      },
    },
  },

  -- high-performance color
  {
    "norcalli/nvim-colorizer.lua",
    opts = {
      "*", -- Highlight all files, but customize some others.
      "!vim", -- Exclude vim from highlighting.
    },
  },

  -- smooth cursor
  {
    "gen740/SmoothCursor.nvim",
    opts = {
      cursor = "",
      fancy = {
        enable = true,
      },
    },
  },
}
