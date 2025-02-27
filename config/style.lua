local wezterm = require 'wezterm'

return {
  setup = function(config, options)
    config.color_scheme = options.colorscheme
    config.font = wezterm.font(options.font)

    config.window_padding = {
      left   = 0,
      right  = 0,
      top    = 0,
      bottom = 0,
    }

    config.enable_tab_bar = false
    config.use_fancy_tab_bar = false

    local scheme = wezterm.get_builtin_color_schemes()[options.colorscheme]

    config.colors = {
      tab_bar = {
        background = scheme.background,

        active_tab = {
          bg_color = scheme.background,
          fg_color = scheme.foreground,
        },

        inactive_tab = {
          bg_color = scheme.ansi[1],
          fg_color = scheme.foreground,
        },

        inactive_tab_hover = {
          bg_color = scheme.ansi[1],
          fg_color = scheme.foreground,
        },

        new_tab = {
          bg_color = scheme.background,
          fg_color = scheme.foreground,
        },

        new_tab_hover = {
          bg_color = scheme.background,
          fg_color = scheme.foreground,
        },
      }
    }
  end
}
