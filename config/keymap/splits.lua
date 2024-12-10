local wezterm = require 'wezterm'
local act = wezterm.action
local helpers = require 'config/helpers'

return {
  -- Create Split
  {
    key = 's',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT',
    },
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'v',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT',
    },
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Close Split
  {
    key = 'c',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT',
    },
    action = act.CloseCurrentPane { confirm = true },
  },
  -- Swap Splits
  {
    key = '8',
    mods = helpers.mods {
      helpers.platform_mod(),
      'SHIFT',
    },
    action = act.PaneSelect {
      mode = 'SwapWithActive',
    },
  },
  -- Move Between Splits
  {
    key    = 'h',
    mods   = helpers.mods { helpers.platform_mod(), 'SHIFT' },
    action = act.ActivatePaneDirection 'Left',

  },
  {
    key    = 'j',
    mods   = helpers.mods { helpers.platform_mod(), 'SHIFT' },
    action = act.ActivatePaneDirection 'Down',

  },
  {
    key    = 'k',
    mods   = helpers.mods { helpers.platform_mod(), 'SHIFT' },
    action = act.ActivatePaneDirection 'Up',

  },
  {
    key    = 'l',
    mods   = helpers.mods { helpers.platform_mod(), 'SHIFT' },
    action = act.ActivatePaneDirection 'Right',

  },
  -- Resize Splits
  {
    key = 'H',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'J',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'K',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Up', 5 },
  },
  {
    key = 'L',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Right', 5 },
  },
}
