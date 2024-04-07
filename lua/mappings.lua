require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Lazygit" })
map("n", "<leader>tf", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Float terminal" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
