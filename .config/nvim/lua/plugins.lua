return {{"github/copilot.vim",},
	{"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { {"nvim-lua/plenary.nvim",}, }
	},
    {'mrjones2014/smart-splits.nvim', build = './kitty/install-kittens.bash'},
    {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim", -- optional
      "nvim-telescope/telescope.nvim"
    }
},
}


