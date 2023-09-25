return {
    {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        opts = {
          options = {
            buffer_close_icon = "窱"
          }
        },
        config = function()
            local status, bufferline = pcall(require, "bufferline")
            if (not status) then return end

            bufferline.setup({
                options = {
                    -- mode = "tabs",
                    always_show_bufferline = true,
                    show_buffer_close_icons = false,
                    color_icons = true,
                    indicator = {
                    icon = " 喇",
                    style = "icon"
                    },
                    close_icon = '',
                    diagnostics = "nvim_lsp",
                    -- separator_style =  "slant" ,
                    show_tab_indicators = true,
                    buffer_close_icon = "窱",
                    diagnostics_indicator = function(count, level)
                        local icon = level:match("error") and " " or ""
                        return " " .. icon .. count
                    end
                },
            })
            vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
            vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
        end
      }
}