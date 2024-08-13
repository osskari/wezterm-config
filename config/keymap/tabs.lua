local wezterm = require 'wezterm'
local act = wezterm.action

return {
  -- CreateTab
  {
    key = 't',
    mods = 'LEADER',
    action = act.SpawnCommandInNewTab {
      domain = 'CurrentPaneDomain',
      cwd = '/Users/ori.oskars',
    },
  },
  {
    key = 'T',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  -- CloseTab
  {
    key = 'w',
    mods = 'LEADER',
    action = act.CloseCurrentTab { confirm = true },
  },
  -- TraverseTabs
  {
    key = '{',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(-1),
  },
  {
    key = '}',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(1),
  },
  -- MoveTab
  {
    key = '<',
    mods = 'CTRL|SHIFT',
    action = act.MoveTabRelative(-1),
  },
  {
    key = '>',
    mods = 'CTRL|SHIFT',
    action = act.MoveTabRelative(1),
  },
}
