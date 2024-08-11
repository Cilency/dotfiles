return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    require('lualine').setup({
      options = {
      theme = 'auto',
      icons_enabled = true,

      component_separators = '',
      section_separators = { left = '', right = '' },

      sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 }
                    },
        lualine_b = { 'filename', 'branch' },
      --   lualine_c = {
      -- '%=', --[[ add your center compoentnts here in place of this comment ]]
      --           },
        lualine_x = {
          lazy_status.updates,
          cond = lazy_status.has_updates,
          color = { fg = "#ff9e64" },
          },
      },
    },
  })
  end,
}
