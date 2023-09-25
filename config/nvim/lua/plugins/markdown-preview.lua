return {
    'iamcco/markdown-preview.nvim',
    -- ft = "markdown",
    build = 'cd app && npm install',
    config = function()
      vim.g.mkdp_auto_close = 1
    --   vim.g.set('n', '<leader>mp', ':>MarkdownPreviewToggle', { desc = '[M]arkdown [P]review'})
    end
  }