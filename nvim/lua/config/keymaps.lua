-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Press jk fast to exit insert mode
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- Quit
map("n", "<C-q>", "<cmd>qall<cr>", { desc = "Quit all" })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
map("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>w=", "<C-W>v", { desc = "Split window right" })
map("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>=", "<C-W>v", { desc = "Split window right" })

-- Tmux move
map("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { noremap = true, silent = true, desc = "Tmux Left" })
map("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { noremap = true, silent = true, desc = "Tmux Down" })
map("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { noremap = true, silent = true, desc = "Tmux Up" })
map("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { noremap = true, silent = true, desc = "Tmux Right" })

-- Telescope
map(
  "n",
  "<leader>tp",
  ":lua require'telescope'.extensions.project.project{}<CR>",
  { noremap = true, silent = true, desc = "Telscope Project" }
)
