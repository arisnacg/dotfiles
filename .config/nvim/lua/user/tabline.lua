local tabline_status_ok, tabline = pcall(require, "tabline")

if not tabline_status_ok then
  return
end


tabline.setup {
  enable = true,
  options = {
    show_filename_only = true,
    show_tabs_always = true,
    show_bufnr = false,
    modified_italic = false
  }
}

vim.cmd [[
  set guioptions-=e " Use showtabline in gui vim
  set sessionoptions+=tabpages,globals " store tabpages and globals in session
]]
