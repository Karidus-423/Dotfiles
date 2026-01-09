--COLORSCHEME: LOW-TIDE
vim.g.colors_name = "low-tide"

local palette = {
	darkslategray = "#293234",
	gray = "#737F7F",
	cyan = "#4e555c",
	blue = "#596d75",
	red = "#634e4e",
	lightred = "#806464",
	green = "#4f635a",
	lime = "#717F71",
	teal = "#4e6363",
	orange = "#727358",
	pop = "#AF5F00",
	brightwhite = "#CCCCCC",
	darkwhite = "#424d4d",
}

local SetHighlight = vim.api.nvim_set_hl

SetHighlight(0, "Normal", { background = "None", foreground = palette.gray })
SetHighlight(0, "@variable", { foreground = palette.gray })
SetHighlight(0, "Identifier", { foreground = palette.gray })
SetHighlight(0, "NormalFloat", { background = palette.darkslategray })
SetHighlight(0, "Search", { background = palette.pop, foreground = palette.brightwhite })
SetHighlight(0, "IncSearch", { background = palette.cyan, foreground = palette.pop })
SetHighlight(0, "Visual", {background = palette.darkwhite, foreground = palette.pop})
SetHighlight(0, "ComplHint", { foreground = palette.pop })
SetHighlight(0, "@variable.builtin", { foreground = palette.blue })
SetHighlight(0, "@constant", { foreground = palette.blue })
SetHighlight(0, "Constant", { foreground = palette.blue })
SetHighlight(0, "Number", { foreground = palette.blue })
SetHighlight(0, "@module", { foreground = palette.orange })
SetHighlight(0, "@string", { foreground = palette.orange, italic = true })
SetHighlight(0, "@character", { foreground = palette.orange, italic = true })
SetHighlight(0, "@type", { foreground = palette.teal, bold = true })
SetHighlight(0, "Special", { foreground = palette.teal })
SetHighlight(0, "Function", { foreground = palette.lime })
SetHighlight(0, "@keyword", { foreground = palette.green })
SetHighlight(0, "@comment", { foreground = palette.cyan })
SetHighlight(0, "Comment", { foreground = palette.cyan })
SetHighlight(0, "@operator", { foreground = palette.red })
SetHighlight(0, "Delimiter", { foreground = palette.orange })
SetHighlight(0, "Directory", { foreground = palette.blue })
SetHighlight(0, "StatusLine", { background = palette.darkslategray , foreground = palette.lime})
SetHighlight(0, "ColorColumn", { foreground = palette.pop, background = palette.darkslategray })
SetHighlight(0, "LineNr", { foreground = palette.cyan })
SetHighlight(0, "ErrorMsg", { foreground = palette.lightred })
SetHighlight(0, "Title", { foreground = palette.lime, bold = true, underline = true });
SetHighlight(0, "Statement", { foreground = palette.orange });
SetHighlight(0, "PreProc", { foreground = palette.teal });
SetHighlight(0, "DiagnosticError", { foreground = palette.lightred });
SetHighlight(0, "MiniHipAtternsTodo", { foreground = palette.darkslategray, background = palette.teal, underline = true });
SetHighlight(0, "MiniHipAtternsHack",
	{ foreground = palette.darkslategray, background = palette.orange, underline = true });
SetHighlight(0, "MiniHipAtternsNote",
	{ foreground = palette.darkslategray, background = palette.green, underline = true });
SetHighlight(0, "MiniHipAtternsFixme", { foreground = palette.darkslategray, background = palette.red, underline = true });
SetHighlight(0, "Cursor", { foreground = palette.darkslategray, background = palette.brightwhite, underline = true });

SetHighlight(0, "@diff.minus", { foreground = palette.lightred});
SetHighlight(0, "@diff.delta", { foreground = palette.blue});
SetHighlight(0, "@diff.plus", { foreground = palette.lime});
SetHighlight(0, "MatchParen", {foreground = palette.pop });
SetHighlight(0, "MsgArea", {foreground = palette.blue });

--Telescope-----------------------------------------------------------------------------------------
SetHighlight(0, "TelescopeMatching", {foreground = palette.pop})
SetHighlight(0, "TelescopeSelection", {background = palette.darkwhite, foreground = palette.lime})
SetHighlight(0, "TelescopeTitle", { foreground = palette.lime, bold = true})
