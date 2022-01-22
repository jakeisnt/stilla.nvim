local stilla = (vim.o.background == "dark")
		and {
			--16 colors
			stilla0_gui = "#0D0D0D", -- background
			stilla1_gui = "#0e1111", -- normal black
			stilla2_gui = "#434C5E", -- nord2 in palette ??
			stilla3_gui = "#4C566A", -- as below
			stilla4_gui = "#8C8C8C", -- foreground
			stilla5_gui = "#F2F2F2", -- normal white
			stilla6_gui = "#ECEFF4", -- alt white
			stilla7_gui = "#8FBCBB", -- alt cyan
			stilla8_gui = "#88C0D0", -- cyan
			stilla9_gui = "#778899", -- blue
			stilla10_gui = "#5E81AC", -- nord10 in palette ??
			stilla11_gui = "#b6403a", -- red
			stilla12_gui = "#d99962", -- yellow
			stilla13_gui = "#d99962", -- yellow ??
			stilla14_gui = "white", -- green (not actually green) used for strings, etc...
			stilla15_gui = "#CD96B3", -- magenta
			none = "NONE",
		}
	or { -- note: light theme is still identical to nord
             -- has not been designed or curated yet
		--16 colors
		stilla0_gui = "#ECEFF4", -- nord6 in palette
		stilla1_gui = "#E5E9F0", -- nord5 in palette
		stilla2_gui = "#D8DEE9", -- nord4 in palette
		stilla3_gui = "#4C566A", -- nord3 in palette
		stilla3_gui_bright = "#AEC7DF", -- out of palette
		stilla4_gui = "#434C5E", -- nord2 in palette
		stilla5_gui = "#3B4252", -- nord1 in palette
		stilla6_gui = "#2E3440", -- nord0 in palette
		stilla7_gui = "#8FBCBB", -- nord7 in palette
		stilla8_gui = "#88C0D0", -- nord8 in palette
		stilla9_gui = "#81A1C1", -- nord9 in palette
		stilla10_gui = "#5E81AC", -- nord10 in palette
		stilla11_gui = "#BF616A", -- nord11 in palette
		stilla12_gui = "#D08770", -- nord12 in palette
		stilla13_gui = "#EBCB8B", -- nord13 in palette
		stilla14_gui = "#A3BE8C", -- nord14 in palette
		stilla15_gui = "#B48EAD", -- nord15 in palette
		none = "NONE",
	}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.stilla_contrast == true then
	stilla.sidebar = stilla.stilla1_gui
	stilla.float = stilla.stilla1_gui
else
	stilla.sidebar = stilla.stilla0_gui
	stilla.float = stilla.stilla0_gui
end

if vim.g.stilla_cursorline_transparent == true then
	stilla.cursorlinefg = stilla.stilla0_gui
else
	stilla.cursorlinefg = stilla.stilla1_gui
end

return stilla
