return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
        local home = vim.fn.expand("$HOME")
        require("chatgpt").setup({
            api_key_cmd = "gpg --decrypt --armor -r michael" .. home .. "/.openai",
            openai_params = {
                model = "gpt-4o-mini",
                frequency_penalty = 0,
                presence_penalty = 0,
                max_tokens = 1024,
                temperature = 0.2,
                top_p = 0.1,
                n = 1,
                }
        })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim", -- optional
    "nvim-telescope/telescope.nvim"
  }
}
