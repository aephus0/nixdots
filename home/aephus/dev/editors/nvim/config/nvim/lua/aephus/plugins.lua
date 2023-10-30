local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("ellisonleao/gruvbox.nvim")
	use { "catppuccin/nvim", as = "catppuccin" }
	use("christoomey/vim-tmux-navigator")

	-- Completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")

	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")

	use("nvim-telescope/telescope.nvim")
	use { 'nvim-telescope/telescope-fzf-native.nvim', run =
	'make' }

	-- use({
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	run = function()
	-- 		local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
	-- 		ts_update()
	-- 	end,
	-- })

	use("JoosepAlviste/nvim-ts-context-commentstring")

	use("lewis6991/gitsigns.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")

	use("akinsho/toggleterm.nvim")
	use("nvim-lualine/lualine.nvim")

	use({ 'akinsho/bufferline.nvim', tag = "*", 
	requires = 'nvim-tree/nvim-web-devicons',
	after = 'catppuccin',
	config = function ()
		require("bufferline").setup {
				highlights = require("catppuccin.groups.integrations.bufferline").get()
			}
	end
	})

end)
