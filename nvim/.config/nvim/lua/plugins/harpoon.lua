return
{
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
      sync_on_toggle = true,
    },
  },
  keys = function()
    local harpoon = require("harpoon")
    local harpoon_extensions = require("harpoon.extensions")
    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())
    local keys = {
      {
        "<leader>a",
        function()
          harpoon:list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<C-e>",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        "<C-h>",
        function()
          harpoon:list():select(1)
        end,
        desc = "Harpoon Select 1",
      },
      {
        "<C-t>",
        function()
          harpoon:list():select(2)
        end,
        desc = "Harpoon Select 2",
      },
      {
        "<C-n>",
        function()
          harpoon:list():select(3)
        end,
        desc = "Harpoon Select 3",
      },
      {
        "<C-s>",
        function()
          harpoon:list():select(4)
        end,
        desc = "Harpoon Select 4",
      },
      {
        "<C-S-P>",
        function()
          harpoon:list():prev()
        end,
        desc = "Harpoon Select 4",
      },
      {
        "<C-S-N>",
        function()
          harpoon:list():next()
        end,
        desc = "Harpoon Select 4",
      }
    }
    return keys
  end,
}
