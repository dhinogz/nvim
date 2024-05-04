-- [[ Configure and install plugins ]]

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  { 'numToStr/Comment.nvim', opts = {} },

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'dhinogz/plugins/gitsigns',

  require 'dhinogz/plugins/which-key',

  require 'dhinogz/plugins/telescope',

  require 'dhinogz/plugins/lspconfig',

  require 'dhinogz/plugins/conform',

  require 'dhinogz/plugins/cmp',

  require 'dhinogz/plugins/tokyonight',
  require 'dhinogz/plugins/dracula',

  require 'dhinogz/plugins/todo-comments',

  require 'dhinogz/plugins/mini',

  require 'dhinogz/plugins/treesitter',

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for kickstart
  --
  --  Here are some example plugins that I've included in the dhinogz repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  require 'dhinogz.plugins.debug',
  -- require 'dhinogz.plugins.indent_line',
  require 'dhinogz.plugins.lint',
  require 'dhinogz.plugins.autopairs',
  require 'dhinogz.plugins.neo-tree',
  require 'dhinogz.plugins.scroll-eof',
  require 'dhinogz.plugins.wakatime',
  require 'dhinogz.plugins.fugitive',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
