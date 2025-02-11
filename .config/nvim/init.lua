local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("vim-options")

vim.opt.colorcolumn = "79"
-- recommended for avante.nvim
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

-- Define the custom command Z to run :w | qa!
vim.cmd('command! Z w | qa!')

-- Define an abbreviation for wqa to expand to Z
vim.cmd('cabbrev wqa Z')


local which_key = require('which-key')
which_key.add({
    { "<leader>ac", "<cmd>AvanteChat<cr>", desc = "avante: start chat", mode = "n" },
})

-- LSPs
require("mason").setup()
require("mason-lspconfig").setup()
require'lspconfig'.bashls.setup{}
require'lspconfig'.nil_ls.setup{}
require'lspconfig'.julials.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.pylsp.setup{}

-- show files not in GitHub repos when in NeoTree
-- require('neo-tree').setup {
--   filesystem = {
--     filtered_items = {
--       visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
--       hide_dotfiles = true,
--       hide_gitignored = false,
--     },
--   }
-- }

-- Autocmd on VimEnter to start the snacks dashboard
-- local snacks = require("snacks")
-- vim.api.nvim_create_autocmd("VimEnter", {
--     command = "lua Snacks.dashboard()",
-- })
