local colors = require("stilla.colors")

local stilla = {}

stilla.normal = {
	a = { fg = colors.nord1_gui, bg = colors.nord9_gui },
	b = { fg = colors.nord5_gui, bg = colors.nord2_gui },
	c = { fg = colors.nord4_gui, bg = colors.nord1_gui },
}

stilla.insert = {
	a = { fg = colors.nord1_gui, bg = colors.nord4_gui },
	b = { fg = colors.nord6_gui, bg = colors.nord3_gui_bright },
}

stilla.visual = {
	a = { fg = colors.nord0_gui, bg = colors.nord9_gui },
	b = { fg = colors.nord4_gui, bg = colors.nord10_gui },
}

stilla.replace = {
	a = { fg = colors.nord0_gui, bg = colors.nord11_gui },
	b = { fg = colors.nord4_gui, bg = colors.nord10_gui },
}

stilla.command = {
	a = { fg = colors.nord0_gui, bg = colors.nord15_gui, gui = "bold" },
	b = { fg = colors.nord4_gui, bg = colors.nord10_gui },
}

stilla.inactive = {
	a = { fg = colors.nord4_gui, bg = colors.nord0_gui, gui = "bold" },
	b = { fg = colors.nord4_gui, bg = colors.nord0_gui },
	c = { fg = colors.nord4_gui, bg = colors.nord1_gui },
}

return stilla
