return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    local wk = require("which-key")

    wk.setup({})

    wk.register({
      ["<leader>"] = {
        -- Telescope
        f = {
          name = "+file",
          f = { "<cmd>Telescope find_files<cr>", "Find File" },
          g = { "<cmd>Telescope live_grep<cr>", "Grep files" },
          n = { "<cmd>enew<cr>", "New File" },
          r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        },
        -- Toggle Term
        t = {
          name = "Terminal",
          f = { "<cmd>ToggleTerm direction=float<cr>", "Float" }, -- Floating Terminal
          h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" }, -- Horizontal Terminal,
          v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" }, -- Vertical Terminal
          l = { "<cmd>lua _LAZYGIT_TOGGLE()<cr>", "Lazygit" },
        },
      },
    })
  end,
}
