-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Function to toggle colorcolumn
function ToggleColorColumn()
    if vim.wo.colorcolumn == "" then
        -- Set to 80
        vim.wo.colorcolumn = "80"
    else
        vim.wo.colorcolumn = ""
    end
end

-- Setting the keymap
vim.api.nvim_set_keymap(
    "n",
    "<leader>ue",
    ":lua ToggleColorColumn()<CR>",
    { noremap = true, silent = true }
)

-- Set the colorcolumn's color
-- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#AFAFD7" })
