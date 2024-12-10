local wezterm = require 'wezterm'
local helpers = require 'config/helpers'

local defaults = require 'config/keymap/defaults'


return helpers.flatten {
  defaults.keys,
  {
    key_tables = defaults.key_tables,
  },
  require 'config/keymap/splits',
  require 'config/keymap/tabs',
  -- Simple standalone maps here
  {
    -- Copy Mode
    {
      key = 'y',
      mods = helpers.mods({ helpers.platform_mod(), 'SHIFT' }),
      action = wezterm.action.ActivateCopyMode,
    }
  },
}
