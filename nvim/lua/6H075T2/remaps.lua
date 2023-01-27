-- MAP LEADER KEY
vim.g.mapleader = " "  -- SET LEADER KEY  TO SPACE

-- NETRW 
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>qq", vim.cmd.Rex)

-- WRITE 
vim.keymap.set("n", "<leader>W", vim.cmd.write)

-- SOURCE 
vim.keymap.set("n", "<leader>S", vim.cmd.source)

-- QUIT 
vim.keymap.set("n", "<leader>Q", vim.cmd.quit)

-- FLOATING TERMINAL
vim.g.floaterm_keymap_new    = "<leader>ww"
vim.g.floaterm_keymap_toggle = "<leader>ws"
vim.g.floaterm_keymap_prev   = "<leader>wa"
vim.g.floaterm_keymap_next   = "<leader>wd"
vim.g.floaterm_keymap_kill   = "<leader>we"
