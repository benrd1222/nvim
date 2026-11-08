vim.pack.add({
	{ src = "https://github.com/AlexvZyl/nordic.nvim.git", name = "nordic" },
	{ src = "https://github.com/tadaa/vimade", name = "vimade" },
})

-- changed theme but don't know if the integrations are the same
require("nordic").setup({
	transparent = {
		float = true,
	},
	integrations = {
		cmp = true,
		blink_cmp = {
			style = "bordered",
		},
	},
})
require("vimade").setup({
	recipe = { "minimalist", { animate = true } },
	fadelevel = 0.8,
})
