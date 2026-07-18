return {
  -- Markdown をブラウザでプレビューする。
  -- LazyVim の Markdown extra は LSP / lint / format まで含むので、まずは旧設定と同じ preview だけ追加する。
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>cp",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },
    config = function()
      vim.g.mkdp_auto_close = 1
    end,
  },
}
