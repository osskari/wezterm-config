return {
  flatten = function(sections)
    local rettable = {}
    for i = 1, #sections do
      for j = 1, #sections[i] do
        table.insert(rettable, sections[i][j])
      end
    end
    return rettable
  end,

  platform_mod = function()
    local wezterm = require 'wezterm'

    if wezterm.target_triple == 'aarch64-apple-darwin' then
      return 'CMD'
    else
      return 'CTRL'
    end
  end,

  mods = function (modifiers)
    return table.concat(modifiers, '|')
  end
}
