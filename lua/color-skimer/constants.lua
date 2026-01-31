--- @type string
PLUGIN_NAME = "color-skimer"

--- @class name_override
--- @field [string] string new name to display in the menu instead of the colorscheme name

--- @class function_field
--- @field [string] function function that will be executed at a specific time

--- @class keys
--- @field escape string?
--- @field save string?

--- @class color_skimer_config
--- @field colorscheme string[] array of all of your colorschemes
--- @field name_override name_override? this will override the name displayed in the preview menu
--- @field keys keys? The key that you will use to close the plugin menu window
--- @field pre_preview function_field? this will be called before each preview of the colorscheme
--- @field post_preview function_field? this will be called after each preview of the colorscheme
--- @field pre_save function_field? this will be called before we save the colorscheme to memory
--- @field post_save function_field? this will be called after we save the colorscheme to memory

--- @type color_skimer_config
DEFAULT_CONFIG = {
   colorscheme = { -- < list of your colorschemes names
      -- The default options are the default vim colorschemes :
      "blue",
      "darkblue",
      "default",
      "delek",
      "desert",
      "elflord",
      "evening",
      "habamax",
      "industry",
      "koehler",
      "lunaperche",
      "morning",
      "murphy",
      "pablo",
      "peachpuff",
      "quiet",
      "retrobox",
      "ron",
      "shine",
      "slate",
      "sorbet",
      "torte",
      "unokai",
      "wildcharm",
      "zaibatsu",
      "zellner",
   },

   name_override = { -- < this will override the name displayed in the preview menu
      -- [Example]
      -- The name displayed for the "default" colorscheme will be displayed as "tluafed" in the preview menu
      -- ["default"] = "tluafed",
   },

   -- Same options as the {lhs} parameter of ':h vim.keymap.set()'
   keys = {             -- < Redefine some keymaps
      escape = "<ESC>", -- < The key that you will use to close the plugin menu window.
      save = "<CR>",    -- < The key that you will use to select and save a colorscheme in the menu window.
   },

   -- For more informations about the pre_preview, post_preview, pre_save and post_save configurations,
   -- look at the readme on the [CUSTOM HOOKS] section
   pre_preview = {
      ["*"] = function() end,
   },
   post_preview = {
      ["*"] = function() end,
   },
   pre_save = {
      ["*"] = function() end,
   },
   post_save = {
      ["*"] = function() end,
   },
}

--- @class INTERFACE
--- @field buf_id number?
--- @field win_id number?

--- @type INTERFACE
INTERFACE = {
   buf_id = nil,
   win_id = nil,
}

--- @class colorscheme_param
--- @field colorscheme string
--- @field name string
--- @field pre_preview function
--- @field post_preview function
--- @field pre_save function
--- @field post_save function

--- @class COLORSCHEME_PARAMS
--- @field [integer] colorscheme_param
--- @field keys keys?

--- @type COLORSCHEME_PARAMS
COLORSCHEME_PARAMS = {}

return {
   PLUGIN_NAME = PLUGIN_NAME,
   DEFAULT_CONFIG = DEFAULT_CONFIG,
   INTERFACE = INTERFACE,
   COLORSCHEME_PARAMS = COLORSCHEME_PARAMS,
}
