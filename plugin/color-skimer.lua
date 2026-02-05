-- Prevent load multiple times
if vim.g.loaded_color_skimer then
   return
end

vim.api.nvim_create_user_command( "ColorSkimerToggle", require( "color-skimer" ).toggle, {} )

vim.g.loaded_color_skimer = 1
