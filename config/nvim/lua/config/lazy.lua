local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- 括弧・引用符・HTML タグなど、文字列の「囲み」を追加・削除・変更する。
    -- LazyVim 公式 extra は、自分の plugins より前に読み込む必要がある。
    { import = "lazyvim.plugins.extras.coding.mini-surround" },
    -- ファイルツリーを表示して、ファイル作成・削除・移動などを行う。
    -- 旧設定の nvim-tree ではなく、LazyVim 標準推奨の Snacks explorer を使う。
    { import = "lazyvim.plugins.extras.editor.snacks_explorer" },
    -- TypeScript / JavaScript の LSP・補完・デバッグ補助などをまとめて有効にする。
    -- 旧設定の tsserver 相当は、LazyVim 公式 extra に任せる。
    { import = "lazyvim.plugins.extras.lang.typescript" },
    -- Rust の LSP・補完・Treesitter・デバッグ補助などをまとめて有効にする。
    -- rust-analyzer を手動設定せず、LazyVim 公式 extra に任せる。
    { import = "lazyvim.plugins.extras.lang.rust" },
    -- Java / Spring Boot 開発向けに、jdtls・Lombok・テスト・デバッグ補助を有効にする。
    -- Maven / Gradle プロジェクト認識も LazyVim 公式 extra に任せる。
    { import = "lazyvim.plugins.extras.lang.java" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
