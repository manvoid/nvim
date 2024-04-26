return {
  {
    'folke/neodev.nvim',
    opts = {}
  },
  -- {
  --   'altermo/ultimate-autopair.nvim',
  --   event = { 'InsertEnter', 'CmdlineEnter' },
  --   branch = 'v0.6', --recommended as each new version will have breaking changes
  -- },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true,   -- This automatically runs `require("luarocks-nvim").setup()`
  },
}
