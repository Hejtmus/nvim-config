require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap=true, silent=true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('n', '<C-p>', '"_dP', { noremap = true, silent = true })
map('v', '<C-p>', '"_dP', { noremap = true, silent = true })

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

map('n', '<leader>qf', quickfix, opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
