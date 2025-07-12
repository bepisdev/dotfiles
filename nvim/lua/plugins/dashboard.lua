return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			".·:''''''''''''''''''''''''''''''''''''''''''''''''''''':·.",
			": : .----. .----..-.-. .-. .----..----. .----..-.   .-. : :",
			": : | {_} }} |__}| } }}{ |{ {__-`} {-. \\} |__} \\ \\_\\/ / : :",
			": : | {_} }} '__}| |-' | }.-._} }} '-} /} '__}  \\   /   : :",
			": : `----' `----'`-'   `-'`----' `----' `----'   `-'    : :",
			"'·:.....................................................:·'",
			"",
			"",
			"",
			"",
		},
		alpha.setup(dashboard.opts)
	end
}
