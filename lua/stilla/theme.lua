local stilla = require("stilla.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = stilla.nord9_gui }, -- int, long, char, etc.
		StorageClass = { fg = stilla.nord9_gui }, -- static, register, volatile, etc.
		Structure = { fg = stilla.nord9_gui }, -- struct, union, enum, etc.
		Constant = { fg = stilla.nord4_gui }, -- any constant
		Character = { fg = stilla.nord14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = stilla.nord15_gui }, -- a number constant: 5
		Boolean = { fg = stilla.nord9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = stilla.nord15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = stilla.nord9_gui }, -- any statement
		Label = { fg = stilla.nord9_gui }, -- case, default, etc.
		Operator = { fg = stilla.nord9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = stilla.nord9_gui }, -- try, catch, throw
		PreProc = { fg = stilla.nord9_gui }, -- generic Preprocessor
		Include = { fg = stilla.nord9_gui }, -- preprocessor #include
		Define = { fg = stilla.nord9_gui }, -- preprocessor #define
		Macro = { fg = stilla.nord9_gui }, -- same as Define
		Typedef = { fg = stilla.nord9_gui }, -- A typedef
		PreCondit = { fg = stilla.nord13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = stilla.nord4_gui }, -- any special symbol
		SpecialChar = { fg = stilla.nord13_gui }, -- special character in a constant
		Tag = { fg = stilla.nord4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = stilla.nord6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = stilla.nord8_gui }, -- special things inside a comment
		Debug = { fg = stilla.nord11_gui }, -- debugging statements
		Underlined = { fg = stilla.nord14_gui, bg = stilla.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = stilla.nord1_gui }, -- left blank, hidden
		Error = { fg = stilla.nord11_gui, bg = stilla.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = stilla.nord13_gui, bg = stilla.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = stilla.none, bg = stilla.nord0_gui },

		htmlLink = { fg = stilla.nord14_gui, style = "underline" },
		htmlH1 = { fg = stilla.nord8_gui, style = "bold" },
		htmlH2 = { fg = stilla.nord11_gui, style = "bold" },
		htmlH3 = { fg = stilla.nord14_gui, style = "bold" },
		htmlH4 = { fg = stilla.nord15_gui, style = "bold" },
		htmlH5 = { fg = stilla.nord9_gui, style = "bold" },
		markdownH1 = { fg = stilla.nord8_gui, style = "bold" },
		markdownH2 = { fg = stilla.nord11_gui, style = "bold" },
		markdownH3 = { fg = stilla.nord14_gui, style = "bold" },
		markdownH1Delimiter = { fg = stilla.nord8_gui },
		markdownH2Delimiter = { fg = stilla.nord11_gui },
		markdownH3Delimiter = { fg = stilla.nord14_gui },
	}

	-- Italic comments
	if vim.g.nord_italic == false then
		syntax.Comment = { fg = stilla.nord3_gui_bright } -- normal comments
		syntax.Conditional = { fg = stilla.nord9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Function = { fg = stilla.nord8_gui } -- normal function names
		syntax.Identifier = { fg = stilla.nord9_gui } -- any variable name
		syntax.Keyword = { fg = stilla.nord9_gui } -- normal for, do, while, etc.
		syntax.Repeat = { fg = stilla.nord9_gui } -- normal any other keyword
		syntax.String = { fg = stilla.nord14_gui } -- any string
	else
		syntax.Comment = { fg = stilla.nord3_gui_bright, bg = stilla.none, style = "italic" } -- italic comments
		syntax.Conditional = { fg = stilla.nord9_gui, bg = stilla.none, style = "italic" } -- italic if, then, else, endif, switch, etc.
		syntax.Function = { fg = stilla.nord8_gui, bg = stilla.none, style = "italic" } -- italic funtion names
		syntax.Identifier = { fg = stilla.nord9_gui, bg = stilla.none, style = "italic" } -- any variable name
		syntax.Keyword = { fg = stilla.nord9_gui, bg = stilla.none, style = "italic" } -- italic for, do, while, etc.
		syntax.Repeat = { fg = stilla.nord9_gui, bg = stilla.none, style = "italic" } -- italic any other keyword
		syntax.String = { fg = stilla.nord14_gui, bg = stilla.none, style = "italic" } -- any string
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = stilla.nord4_gui, bg = stilla.float }, -- normal text and background color
		FloatBorder = { fg = stilla.nord4_gui, bg = stilla.float }, -- normal text and background color
		ColorColumn = { fg = stilla.none, bg = stilla.nord1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = stilla.nord1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = stilla.nord4_gui, bg = stilla.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = stilla.nord5_gui, bg = stilla.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = stilla.nord7_gui, bg = stilla.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = stilla.nord14_gui, bg = stilla.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = stilla.nord13_gui, bg = stilla.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = stilla.nord11_gui, bg = stilla.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = stilla.nord15_gui, bg = stilla.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = stilla.nord1_gui },
		ErrorMsg = { fg = stilla.none },
		Folded = { fg = stilla.nord3_gui_bright, bg = stilla.none, style = "italic" },
		FoldColumn = { fg = stilla.nord7_gui },
		IncSearch = { fg = stilla.nord6_gui, bg = stilla.nord10_gui },
		LineNr = { fg = stilla.nord3_gui_bright },
		CursorLineNr = { fg = stilla.nord4_gui },
		MatchParen = { fg = stilla.nord15_gui, bg = stilla.none, style = "bold" },
		ModeMsg = { fg = stilla.nord4_gui },
		MoreMsg = { fg = stilla.nord4_gui },
		NonText = { fg = stilla.nord1_gui },
		Pmenu = { fg = stilla.nord4_gui, bg = stilla.nord2_gui },
		PmenuSel = { fg = stilla.nord4_gui, bg = stilla.nord10_gui },
		PmenuSbar = { fg = stilla.nord4_gui, bg = stilla.nord2_gui },
		PmenuThumb = { fg = stilla.nord4_gui, bg = stilla.nord4_gui },
		Question = { fg = stilla.nord14_gui },
		QuickFixLine = { fg = stilla.nord4_gui, bg = stilla.none, style = "reverse" },
		qfLineNr = { fg = stilla.nord4_gui, bg = stilla.none, style = "reverse" },
		Search = { fg = stilla.nord10_gui, bg = stilla.nord6_gui, style = "reverse" },
		SpecialKey = { fg = stilla.nord9_gui },
		SpellBad = { fg = stilla.nord11_gui, bg = stilla.none, style = "italic,undercurl" },
		SpellCap = { fg = stilla.nord7_gui, bg = stilla.none, style = "italic,undercurl" },
		SpellLocal = { fg = stilla.nord8_gui, bg = stilla.none, style = "italic,undercurl" },
		SpellRare = { fg = stilla.nord9_gui, bg = stilla.none, style = "italic,undercurl" },
		StatusLine = { fg = stilla.nord4_gui, bg = stilla.nord2_gui },
		StatusLineNC = { fg = stilla.nord4_gui, bg = stilla.nord1_gui },
		StatusLineTerm = { fg = stilla.nord4_gui, bg = stilla.nord2_gui },
		StatusLineTermNC = { fg = stilla.nord4_gui, bg = stilla.nord1_gui },
		TabLineFill = { fg = stilla.nord4_gui, bg = stilla.none },
		TablineSel = { fg = stilla.nord1_gui, bg = stilla.nord9_gui },
		Tabline = { fg = stilla.nord4_gui, bg = stilla.nord1_gui },
		Title = { fg = stilla.nord14_gui, bg = stilla.none, style = "bold" },
		Visual = { fg = stilla.none, bg = stilla.nord2_gui },
		VisualNOS = { fg = stilla.none, bg = stilla.nord2_gui },
		WarningMsg = { fg = stilla.nord15_gui },
		WildMenu = { fg = stilla.nord12_gui, bg = stilla.none, style = "bold" },
		CursorColumn = { fg = stilla.none, bg = stilla.cursorlinefg },
		CursorLine = { fg = stilla.none, bg = stilla.cursorlinefg },
		ToolbarLine = { fg = stilla.nord4_gui, bg = stilla.nord1_gui },
		ToolbarButton = { fg = stilla.nord4_gui, bg = stilla.none, style = "bold" },
		NormalMode = { fg = stilla.nord4_gui, bg = stilla.none, style = "reverse" },
		InsertMode = { fg = stilla.nord14_gui, bg = stilla.none, style = "reverse" },
		ReplacelMode = { fg = stilla.nord11_gui, bg = stilla.none, style = "reverse" },
		VisualMode = { fg = stilla.nord9_gui, bg = stilla.none, style = "reverse" },
		CommandMode = { fg = stilla.nord4_gui, bg = stilla.none, style = "reverse" },
		Warnings = { fg = stilla.nord15_gui },

		healthError = { fg = stilla.nord11_gui },
		healthSuccess = { fg = stilla.nord14_gui },
		healthWarning = { fg = stilla.nord15_gui },

		-- dashboard
		DashboardShortCut = { fg = stilla.nord7_gui },
		DashboardHeader = { fg = stilla.nord9_gui },
		DashboardCenter = { fg = stilla.nord8_gui },
		DashboardFooter = { fg = stilla.nord14_gui, style = "italic" },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = stilla.nord0_gui },
		BufferLineFill = { bg = stilla.nord0_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.nord_disable_background then
		editor.Normal = { fg = stilla.nord4_gui, bg = stilla.none } -- normal text and background color
		editor.SignColumn = { fg = stilla.nord4_gui, bg = stilla.none }
	else
		editor.Normal = { fg = stilla.nord4_gui, bg = stilla.nord0_gui } -- normal text and background color
		editor.SignColumn = { fg = stilla.nord4_gui, bg = stilla.nord0_gui }
	end

	-- Remove window split borders
	if vim.g.nord_borders then
		editor.VertSplit = { fg = stilla.nord2_gui }
	else
		editor.VertSplit = { fg = stilla.nord0_gui }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = stilla.nord1_gui
	vim.g.terminal_color_1 = stilla.nord11_gui
	vim.g.terminal_color_2 = stilla.nord14_gui
	vim.g.terminal_color_3 = stilla.nord13_gui
	vim.g.terminal_color_4 = stilla.nord9_gui
	vim.g.terminal_color_5 = stilla.nord15_gui
	vim.g.terminal_color_6 = stilla.nord8_gui
	vim.g.terminal_color_7 = stilla.nord5_gui
	vim.g.terminal_color_8 = stilla.nord3_gui
	vim.g.terminal_color_9 = stilla.nord11_gui
	vim.g.terminal_color_10 = stilla.nord14_gui
	vim.g.terminal_color_11 = stilla.nord13_gui
	vim.g.terminal_color_12 = stilla.nord9_gui
	vim.g.terminal_color_13 = stilla.nord15_gui
	vim.g.terminal_color_14 = stilla.nord7_gui
	vim.g.terminal_color_15 = stilla.nord6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = stilla.nord12_gui }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSConstructor = { fg = stilla.nord9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = stilla.nord13_gui }, -- For constants
		TSFloat = { fg = stilla.nord15_gui }, -- For floats
		TSNumber = { fg = stilla.nord15_gui }, -- For all number

		TSAttribute = { fg = stilla.nord15_gui }, -- (unstable) TODO: docs
		TSVariable = { fg = stilla.nord4_gui, style = "bold" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin = { fg = stilla.nord4_gui, style = "bold" },
		TSBoolean = { fg = stilla.nord9_gui, style = "bold" }, -- For booleans.
		TSConstBuiltin = { fg = stilla.nord7_gui, style = "bold" }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = stilla.nord7_gui, style = "bold" }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = stilla.nord11_gui }, -- For syntax/parser errors.
		TSException = { fg = stilla.nord15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = stilla.nord7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = stilla.nord9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = stilla.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = stilla.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = stilla.nord10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = stilla.nord10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = stilla.nord8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = stilla.nord8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = stilla.nord8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = stilla.nord15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = stilla.nord9_gui }, -- For types.
		TSTypeBuiltin = { fg = stilla.nord9_gui }, -- For builtin types.
		TSTag = { fg = stilla.nord4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = stilla.nord15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = stilla.nord4_gui }, -- For strings considenord11_gui text in a markup language.
		TSTextReference = { fg = stilla.nord15_gui }, -- FIXME
		TSEmphasis = { fg = stilla.nord10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = stilla.nord4_gui, bg = stilla.none, style = "underline" }, -- For text to be represented with an underline.
		TSTitle = { fg = stilla.nord10_gui, bg = stilla.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = stilla.nord4_gui }, -- Literal text.
		TSURI = { fg = stilla.nord14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = stilla.nord11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	if vim.g.nord_italic == false then
		-- Comments
		treesitter.TSComment = { fg = stilla.nord3_gui_bright }
		-- Conditionals
		treesitter.TSConditional = { fg = stilla.nord9_gui } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = stilla.nord8_gui } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = stilla.nord7_gui } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = stilla.nord8_gui }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = stilla.nord4_gui } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = stilla.nord4_gui } -- For fields in literals
		treesitter.TSProperty = { fg = stilla.nord10_gui } -- Same as `TSField`
		-- Language keywords
		treesitter.TSKeyword = { fg = stilla.nord9_gui } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = stilla.nord8_gui }
		treesitter.TSKeywordReturn = { fg = stilla.nord8_gui }
		treesitter.TSKeywordOperator = { fg = stilla.nord8_gui }
		treesitter.TSRepeat = { fg = stilla.nord9_gui } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = stilla.nord14_gui } -- For strings.
		treesitter.TSStringRegex = { fg = stilla.nord7_gui } -- For regexes.
		treesitter.TSStringEscape = { fg = stilla.nord15_gui } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = stilla.nord14_gui } -- For characters.
	else
		-- Comments
		treesitter.TSComment = { fg = stilla.nord3_gui_bright, style = "italic" }
		-- Conditionals
		treesitter.TSConditional = { fg = stilla.nord9_gui, style = "italic" } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = stilla.nord8_gui, style = "italic" } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = stilla.nord7_gui, style = "italic" } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = stilla.nord8_gui, style = "italic" }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = stilla.nord4_gui, style = "italic" } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = stilla.nord4_gui, style = "italic" } -- For fields.
		treesitter.TSProperty = { fg = stilla.nord10_gui, style = "italic" } -- Same as `TSField`, but when accessing, not declaring.
		-- Language keywords
		treesitter.TSKeyword = { fg = stilla.nord9_gui, style = "italic" } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = stilla.nord8_gui, style = "italic" }
		treesitter.TSKeywordReturn = { fg = stilla.nord8_gui, style = "italic" }
		treesitter.TSKeywordOperator = { fg = stilla.nord8_gui, style = "italic" }
		treesitter.TSRepeat = { fg = stilla.nord9_gui, style = "italic" } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = stilla.nord14_gui, style = "italic" } -- For strings.
		treesitter.TSStringRegex = { fg = stilla.nord7_gui, style = "italic" } -- For regexes.
		treesitter.TSStringEscape = { fg = stilla.nord15_gui, style = "italic" } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = stilla.nord14_gui, style = "italic" } -- For characters.
	end

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = stilla.nord11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = stilla.nord11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = stilla.nord11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = stilla.nord11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = stilla.nord11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = stilla.nord15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = stilla.nord15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = stilla.nord15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = stilla.nord15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = stilla.nord15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = stilla.nord10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = stilla.nord10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = stilla.nord10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = stilla.nord10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = stilla.nord10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = stilla.nord9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = stilla.nord9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = stilla.nord9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = stilla.nord9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = stilla.nord10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = stilla.nord4_gui, bg = stilla.nord1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = stilla.nord4_gui, bg = stilla.nord1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = stilla.nord4_gui, bg = stilla.nord1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = stilla.nord4_gui },
		LspTroubleCount = { fg = stilla.nord9_gui, bg = stilla.nord10_gui },
		LspTroubleNormal = { fg = stilla.nord4_gui, bg = stilla.sidebar },

		-- Diff
		diffAdded = { fg = stilla.nord14_gui },
		diffRemoved = { fg = stilla.nord11_gui },
		diffChanged = { fg = stilla.nord15_gui },
		diffOldFile = { fg = stilla.yelow },
		diffNewFile = { fg = stilla.nord12_gui },
		diffFile = { fg = stilla.nord7_gui },
		diffLine = { fg = stilla.nord3_gui },
		diffIndexLine = { fg = stilla.nord9_gui },

		-- Neogit
		NeogitBranch = { fg = stilla.nord10_gui },
		NeogitRemote = { fg = stilla.nord9_gui },
		NeogitHunkHeader = { fg = stilla.nord8_gui },
		NeogitHunkHeaderHighlight = { fg = stilla.nord8_gui, bg = stilla.nord1_gui },
		NeogitDiffContextHighlight = { bg = stilla.nord1_gui },
		NeogitDiffDeleteHighlight = { fg = stilla.nord11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = stilla.nord14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = stilla.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = stilla.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = stilla.nord11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = stilla.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = stilla.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = stilla.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = stilla.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = stilla.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = stilla.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = stilla.nord11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = stilla.nord11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = stilla.nord11_gui }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = stilla.nord8_gui },
		TelescopeResultsBorder = { fg = stilla.nord9_gui },
		TelescopePreviewBorder = { fg = stilla.nord14_gui },
		TelescopeSelectionCaret = { fg = stilla.nord9_gui },
		TelescopeSelection = { fg = stilla.nord9_gui },
		TelescopeMatching = { fg = stilla.nord8_gui },

		-- NvimTree
		NvimTreeRootFolder = { fg = stilla.nord7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = stilla.nord15_gui },
		NvimTreeGitNew = { fg = stilla.nord14_gui },
		NvimTreeImageFile = { fg = stilla.nord15_gui },
		NvimTreeExecFile = { fg = stilla.nord14_gui },
		NvimTreeSpecialFile = { fg = stilla.nord9_gui, style = "underline" },
		NvimTreeFolderName = { fg = stilla.nord10_gui },
		NvimTreeEmptyFolderName = { fg = stilla.nord1_gui },
		NvimTreeFolderIcon = { fg = stilla.nord4_gui },
		NvimTreeIndentMarker = { fg = stilla.nord1_gui },
		LspDiagnosticsError = { fg = stilla.nord11_gui },
		LspDiagnosticsWarning = { fg = stilla.nord15_gui },
		LspDiagnosticsInformation = { fg = stilla.nord10_gui },
		LspDiagnosticsHint = { fg = stilla.nord9_gui },

		-- WhichKey
		WhichKey = { fg = stilla.nord4_gui, style = "bold" },
		WhichKeyGroup = { fg = stilla.nord4_gui },
		WhichKeyDesc = { fg = stilla.nord7_gui, style = "italic" },
		WhichKeySeperator = { fg = stilla.nord4_gui },
		WhichKeyFloating = { bg = stilla.float },
		WhichKeyFloat = { bg = stilla.float },

		-- LspSaga
		DiagnosticError = { fg = stilla.nord11_gui },
		DiagnosticWarning = { fg = stilla.nord15_gui },
		DiagnosticInformation = { fg = stilla.nord10_gui },
		DiagnosticHint = { fg = stilla.nord9_gui },
		DiagnosticTruncateLine = { fg = stilla.nord4_gui },
		LspFloatWinNormal = { bg = stilla.nord2_gui },
		LspFloatWinBorder = { fg = stilla.nord9_gui },
		LspSagaBorderTitle = { fg = stilla.nord8_gui },
		LspSagaHoverBorder = { fg = stilla.nord10_gui },
		LspSagaRenameBorder = { fg = stilla.nord14_gui },
		LspSagaDefPreviewBorder = { fg = stilla.nord14_gui },
		LspSagaCodeActionBorder = { fg = stilla.nord7_gui },
		LspSagaFinderSelection = { fg = stilla.nord14_gui },
		LspSagaCodeActionTitle = { fg = stilla.nord10_gui },
		LspSagaCodeActionContent = { fg = stilla.nord9_gui },
		LspSagaSignatureHelpBorder = { fg = stilla.nord13_gui },
		ReferencesCount = { fg = stilla.nord9_gui },
		DefinitionCount = { fg = stilla.nord9_gui },
		DefinitionIcon = { fg = stilla.nord7_gui },
		ReferencesIcon = { fg = stilla.nord7_gui },
		TargetWord = { fg = stilla.nord8_gui },

		-- Sneak
		Sneak = { fg = stilla.nord0_gui, bg = stilla.nord4_gui },
		SneakScope = { bg = stilla.nord1_gui },

		-- Cmp
		CmpItemKind = { fg = stilla.nord15_gui },
		CmpItemAbbrMatch = { fg = stilla.nord5_gui, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = stilla.nord5_gui, style = "bold" },
		CmpItemAbbr = { fg = stilla.nord4_gui },
		CmpItemMenu = { fg = stilla.nord14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = stilla.nord3_gui },
		IndentBlanklineContextChar = { fg = stilla.nord10_gui },

		-- Illuminate
		illuminatedWord = { bg = stilla.nord3_gui },
		illuminatedCurWord = { bg = stilla.nord3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = stilla.nord14_gui },
		DapStopped = { fg = stilla.nord15_gui },

		-- Hop
		HopNextKey = { fg = stilla.nord4_gui, style = "bold" },
		HopNextKey1 = { fg = stilla.nord8_gui, style = "bold" },
		HopNextKey2 = { fg = stilla.nord4_gui },
		HopUnmatched = { fg = stilla.nord3_gui },

		-- Fern
		FernBranchText = { fg = stilla.nord3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = stilla.nord15_gui },
		rainbowcol2 = { fg = stilla.nord13_gui },
		rainbowcol3 = { fg = stilla.nord11_gui },
		rainbowcol4 = { fg = stilla.nord7_gui },
		rainbowcol5 = { fg = stilla.nord8_gui },
		rainbowcol6 = { fg = stilla.nord15_gui },
		rainbowcol7 = { fg = stilla.nord13_gui },

		-- lightspeed
		LightspeedLabel = { fg = stilla.nord8_gui, style = "bold" },
		LightspeedLabelOverlapped = { fg = stilla.nord8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = stilla.nord15_gui, style = "bold" },
		LightspeedLabelDistantOverlapped = { fg = stilla.nord15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = stilla.nord10_gui, style = "bold" },
		LightspeedShortcutOverlapped = { fg = stilla.nord10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = stilla.nord4_gui, bg = stilla.nord2_gui, style = "bold" },
		LightspeedGreyWash = { fg = stilla.nord3_gui_bright },
		LightspeedUnlabeledMatch = { fg = stilla.nord4_gui, bg = stilla.nord1_gui },
		LightspeedOneCharMatch = { fg = stilla.nord8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = stilla.nord3_gui, bg = stilla.none },

		-- Statusline
		StatusLineDull = { fg = stilla.nord3_gui, bg = stilla.nord1_gui },
		StatusLineAccent = { fg = stilla.nord0_gui, bg = stilla.nord13_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.nord_disable_background then
		plugins.NvimTreeNormal = { fg = stilla.nord4_gui, bg = stilla.none }
	else
		plugins.NvimTreeNormal = { fg = stilla.nord4_gui, bg = stilla.sidebar }
	end

	if vim.g.nord_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = stilla.nord4_gui, bg = stilla.sidebar }
	else
		plugins.NvimTreeNormal = { fg = stilla.nord4_gui, bg = stilla.none }
	end

	return plugins
end

return theme
