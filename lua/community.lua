-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.git.neogit" },
  -- { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      integrations = {
        neogit = true,
      },
      priority = 1000,
      lazy = false,
    },
  },
}
