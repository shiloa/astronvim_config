return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",

  -- motion
  { import = "astrocommunity.motion.mini-surround" },

  -- colors
  { import = "astrocommunity.colorscheme.nightfox" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.onigiri" },
  --
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
