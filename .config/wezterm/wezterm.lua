local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Macchiato"
	end
end

return {
	--- default_prog                 = { 'powershell' },
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	font = wezterm.font_with_fallback({
		{
			family = "FiraCode Nerd Font Mono",
			weight = "Bold",
		},
	}),
	font_size = 16,
	tab_bar_at_bottom = true,
	--- launch_menu                  = launch_menu,
	keys = {
		{ key = "z", mods = "ALT", action = wezterm.action.ShowLauncher },
		{ key = 'j', mods = 'CMD', action = wezterm.action.SendString '\x02\x54' }, -- open t - tmux smart session manager
	},
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.9,
}
