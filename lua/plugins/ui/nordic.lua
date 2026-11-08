vim.pack.add({
	{ src = "https://github.com/AlexvZyl/nordic.nvim.git", name = "nordic" },
	{ src = "https://github.com/tadaa/vimade", name = "vimade" },
})

-- changed theme but don't know if the integrations are the same
require("nordic").setup({
	transparent = {
		bg = false,
		float = true,
	},
})
require("vimade").setup({
	recipe = { "minimalist", { animate = true } },
	fadelevel = 0.8,
})
