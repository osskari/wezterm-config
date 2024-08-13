local wezterm = require 'wezterm'
local helpers = require 'config/helpers'

return {
  build_config = function()
    local config = wezterm.config_builder()

    config.color_scheme = 'OceanicMaterial'

    config.font = wezterm.font 'FiraCode Nerd Font Mono'

    config.leader = { key = 'l', mods = helpers.platform_mod(), timeout_milliseconds = 2000 }

    config.keys = require 'config/keymap'

    return config
  end,
}
