return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
  -- Keymap to open NeoTree with Ctrl+n and return focus to the file
        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
	    vim.api.nvim_create_autocmd("VimEnter", {
            command = "set nu nu | Neotree toggle",
    })
        -- Return focus to the file
        vim.api.nvim_create_autocmd("VimEnter", {
            command = "wincmd p",
        })
        -- Open Terminal
        vim.api.nvim_create_autocmd("VimEnter", {
            command = "new | resize 10 | terminal",
        })
        -- Move the terminal split to be below
        vim.api.nvim_create_autocmd("VimEnter", {
            command = "wincmd R",  -- Move the current window (terminal) below the other window
        })
        -- Return focus to the file
        vim.api.nvim_create_autocmd("VimEnter", {
            command = "wincmd p",
        })
        vim.api.nvim_create_autocmd("BufEnter", {
            command = "set nu nu",
    })
    end
}
