local wezterm = require 'wezterm'
local helpers = require 'config.helpers'
local act = wezterm.action

return {
  -- CreateTab
  {
    key = 't',
    mods = helpers.platform_mod(),
    action = act.SpawnCommandInNewTab {
      domain = 'CurrentPaneDomain',
      cwd = '/Users/ori.oskars',
    },
  },
  {
    key = 't',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT',
    },
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  -- CloseTab
  {
    key = 'w',
    mods = helpers.platform_mod(),
    action = act.CloseCurrentTab { confirm = true },
  },
  -- TraverseTabs
  {
    key = '{',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT'
    },
    action = act.ActivateTabRelative(-1),
  },
  {
    key = '}',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT'
    },
    action = act.ActivateTabRelative(1),
  },
  -- MoveTab
  {
    key = '<',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT'
    },
    action = act.MoveTabRelative(-1),
  },
  {
    key = '>',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT'
    },
    action = act.MoveTabRelative(1),
  },
}
