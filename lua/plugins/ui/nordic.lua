vim.pack.add({
	{ src = "https://github.com/AlexvZyl/nordic.nvim.git", name = "nordic" },
	{ src = "https://github.com/tadaa/vimade", name = "vimade" },
})

require("nordic").setup({
	transparent = {
		float = true,
	},
})
require("vimade").setup({
	recipe = { "minimalist", { animate = true } },
	fadelevel = 0.8,
})
