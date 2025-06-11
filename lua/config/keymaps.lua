local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x', { desc = "Del Char" })
keymap.set("n", "d", '"_d', { desc = "Delete" })
keymap.set("n", "D", '"_D', { desc = "Delete to line end" })
keymap.set("n", "c", '"_c', { desc = "Change" })
keymap.set("n", "C", '"_C', { desc = "Change to line end" })

-- Save file and quit
-- keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", { noremap = true, silent = true, desc = "Quit" })
keymap.set("n", "<Leader>Q", ":qa<Return>", { noremap = true, silent = true, desc = "Quit All" })

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "tw", ":tabclose<Return>", opts)
keymap.set("n", "<Tab>", ":previoustab<CR>", opts)
keymap.set("n", "<S-Tab>", ":nexttab<CR>", opts)

-- Split window
keymap.set("n", ";s", ":split<Return>", opts)
keymap.set("n", ";v", ":vsplit<Return>", opts)

keymap.set("n", "<C-x>", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, opts)
