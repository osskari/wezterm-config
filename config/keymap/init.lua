local wezterm = require 'wezterm'
local helpers = require 'config/helpers'

return helpers.flatten {
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
