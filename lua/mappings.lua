require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "\\", "<cmd>:vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>ll", "<cmd>TroubleToggle<CR>", { desc = "Open trouble" })
map("n", "<leader>gf", "<cmd>DiffviewFileHistory<CR>", { desc = "Git file history" })
map("n", "<leader>gl", "<cmd>Flog<CR>", { desc = "Git flog" })
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todo" })
map("n", "<leader>gc", "<cmd>DiffviewOpen HEAD~2<CR>", { desc = "Git last commit" })
map("n", "<leader>gt", "<cmd>DiffviewToggleFile<CR>", { desc = "Git last commit" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Lazygit" })
map("n", "<leader>tf", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Float terminal" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
