local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

local ensure_installed = {
  "lua", 
  "python", 
  "javascript", 
  "dockerfile", 
  "hcl", 
  "json",
  "markdown",
  "yaml"
}

configs.setup {
  ensure_installed = ensure_installed,
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
		enable = true,
	},
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true},
}
