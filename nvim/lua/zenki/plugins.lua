local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    print("Packer didn't work")
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
    use "wbthomason/packer.nvim"  -- Have packer manage itself.
    use "nvim-lua/popup.nvim"     -- An implementation of the Popup API from vim in Neovim.
    use "nvim-lua/plenary.nvim"   -- Useful lua function used by lots of plugins.
    use "akinsho/toggleterm.nvim" -- A toggle-able terminal floating box

    -- Colorschemes
    use "ellisonleao/gruvbox.nvim" -- Original gruvbox for nvim.
    use "sainnhe/gruvbox-material" -- This gruvbox works better with treesitter.

    -- cmp plugins for completion
    use "hrsh7th/nvim-cmp"         -- The completion plugin
	use "hrsh7th/cmp-buffer"       -- Buffer completions
	use "hrsh7th/cmp-path"         -- Path completions
	use "hrsh7th/cmp-cmdline"      -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- Snippet completions
 	use "hrsh7th/cmp-nvim-lsp"     -- LSP completions
    use "hrsh7th/cmp-nvim-lua"     -- LSP LUA completions

    -- Snippets
    use "L3MON4D3/LuaSnip"             --  Snippet engine
	use "rafamadriz/friendly-snippets" -- A bunch of snippets to use

    -- LSP
    use "VonHeikemen/lsp-zero.nvim"
    use "neovim/nvim-lspconfig"           -- Enable LSP
--    use "williamboman/nvim-lsp-installer" -- Simple to use language server installer
--    use "jose-elias-alvarez/null-ls.nvim" -- For formatters and linters
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- Telescope
    use "nvim-telescope/telescope.nvim"

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
