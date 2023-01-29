local wezterm = require 'wezterm'

function scheme_for_appearance(appearance)
    if appearance:find "Dark" then
        return "Catppuccin Mocha"
    else
        return "Catppuccin Macchiato"
    end
end

return {
    --- default_prog                 = { 'powershell' },
    color_scheme                 = scheme_for_appearance(wezterm.gui.get_appearance()),
    font                         = wezterm.font_with_fallback({
        {
            family = 'FiraCode Nerd Font Mono',
        }
    }),
    font_size                    = 13.5,
    tab_bar_at_bottom            = true,
    --- launch_menu                  = launch_menu,
    keys                         = {
        { key = 'z', mods = 'ALT', action = wezterm.action.ShowLauncher },
    },
    window_decorations           = "RESIZE",
    hide_tab_bar_if_only_one_tab = true,
}
