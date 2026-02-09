local windows = require( "color-skimer.windows" )
local setup = require( "color-skimer.setup" )
local utils = require( "color-skimer.utils" )

-- TODO: random option

return {
   set_random_colorscheme = utils.set_random_colorscheme,
   setup = setup.setup,
   toggle = windows.toggle_win,
}
