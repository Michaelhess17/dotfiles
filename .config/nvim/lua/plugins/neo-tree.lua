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
   --      vim.api.nvim_create_autocmd("VimEnter", {
   --          command = "set nu nu | Neotree toggle",
   --  })
   --      -- Return focus to the file
   --      vim.api.nvim_create_autocmd("VimEnter", {
   --          command = "wincmd p",
   --      })
   --      -- Open Terminal
   --      vim.api.nvim_create_autocmd("VimEnter", {
   --          command = "new | resize 10 | terminal",
   --      })
   --      -- Move the terminal split to be below
   --      vim.api.nvim_create_autocmd("VimEnter", {
   --          command = "wincmd R",  -- Move the current window (terminal) below the other window
   --      })
   --      -- Return focus to the file
   --      vim.api.nvim_create_autocmd("VimEnter", {
   --          command = "wincmd p",
   --      })
   --      vim.api.nvim_create_autocmd("BufEnter", {
   --          command = "set nu nu",
   --      })
 -- Define the function for opening Neotree
 local function open_neotree()
   vim.cmd("Neotree filesystem reveal left")
 end
 
 -- Define the function for opening Neotree and a terminal
 local function open_neotree_and_terminal()
   vim.cmd("Neotree toggle")      -- Open Neotree on the left
   vim.cmd("wincmd p") -- Return focus to the file
   vim.cmd("new | resize 10 | term") -- Create a horizontal split, resize it, and open a terminal
   vim.cmd("wincmd R") -- Rearrange the windows
   vim.cmd("wincmd p") -- Return focus to the file
   vim.cmd("set nu nu") -- Set number
 end
 
 -- Set up keybindings
 local whichkey = require("which-key")
 whichkey.add({
         {"<leader>n", group ="Neotree"},
         {"<leader>nl", open_neotree, desc="Open Neotree (Left)"},
         {"<leader>nt", open_neotree_and_terminal, desc="Open Neotree + Terminal"},
         {"<leader>nn", ":Neotree toggle", desc="Neotree toggle"}
     })
 
     end
 }
