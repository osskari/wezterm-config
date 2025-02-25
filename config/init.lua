local wezterm = require 'wezterm'
local helpers = require 'config/helpers'

return {
  build_config = function()
    local config = wezterm.config_builder()

    require('config/style').setup(config, {
      colorscheme = 'OceanicMaterial',
      font = 'FiraCode Nerd Font Mono'
    })

    config.leader = { key = 'l', mods = helpers.platform_mod(), timeout_milliseconds = 2000 }

    config.disable_default_key_bindings = true
    config.keys = require 'config/keymap'

    return config
  end,
}
