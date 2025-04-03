local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.conceallevel=1

vim.g.mapleader = "/"
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {desc = "Find files"})

require("lazy").setup({
  {
    'nvim-telescope/telescope.nvim', tag='0.1.8',
		dependencies = {"nvim-lua/plenary.nvim"},
  },
  {
		"epwalsh/obsidian.nvim",
		dependencies = {"nvim-lua/plenary.nvim"},
		opts = {
			workspaces={
				{name="vault", path="~/vault"}
			},
      ui = {
        enable = true,
        
      }
		}
	}
})
