return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },

        config = function()
            local telescope = require('telescope')

			telescope.setup {
				pickers = {
					find_files = {
						hidden = true
					}
				}
			}
			
		    local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            vim.keymap.set('n', '<C-b>', builtin.buffers, {})
            local action_state = require('telescope.actions.state')
            local actions = require('telescope.actions')
            
            -- vim.keymap.set('n', '<C-d>', actions.delete_buffer, {})
            
            local m = {}
            m.my_buffer = function()
              require('telescope.builtin').buffers{
                attach_mappings = function(prompt_bufnr, map)
                  local delete_buf = function()
                    local selection = action_state.get_selected_entry()
                    -- depending if you want to close or not, include this or not
                    -- actions.close(prompt_bufnr)
                    -- print(vim.inspect(selection))
                    -- better print selection before first running this. I am not sure if it have a bufnr or if this field is named differently
                    vim.api.nvim_buf_delete(selection.bufnr, { force = true })
                  end

                  -- mode, key, func
                  -- this is just an example
                  map('n', '<leader>xx>', delete_buf)
                end
              }
            end
            return m
                    end
                },
                {
        "nvim-telescope/telescope-ui-select.nvim"
    }
}
