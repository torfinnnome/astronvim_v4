return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- Navigate tabs
          ["tl"] = { function() vim.cmd.tabnext() end, desc = "Next tab" },
          ["th"] = { function() vim.cmd.tabprevious() end, desc = "Previous tab" },

          ["<C-Down>"] = false,
          ["<C-Left>"] = false,
          ["<C-Right>"] = false,
          ["<C-Up>"] = false,
          -- resize with arrows
          ["<Up>"] = {
            function() require("smart-splits").resize_up(2) end,
            desc = "Resize split up",
          },
          ["<Down>"] = {
            function() require("smart-splits").resize_down(2) end,
            desc = "Resize split down",
          },
          ["<Left>"] = {
            function() require("smart-splits").resize_left(2) end,
            desc = "Resize split left",
          },
          ["<Right>"] = {
            function() require("smart-splits").resize_right(2) end,
            desc = "Resize split right",
          },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
