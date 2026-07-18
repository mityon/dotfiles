-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 最初は、旧設定のうち確認しやすく LazyVim の標準設定と衝突しにくいものだけ移す。

-- OS のクリップボードと Neovim の yank / paste を連携する。
vim.opt.clipboard:append({ "unnamedplus" })

-- ターミナルや GUI のウィンドウタイトルに、編集中のファイル名を表示する。
vim.opt.title = true

-- カーソル上下に最低 10 行分の余白を残して、周辺のコードを見やすくする。
vim.opt.scrolloff = 10

-- 長い行を画面幅で折り返さず、横スクロールで表示する。
vim.opt.wrap = false

-- 改行時に前の行のインデントを引き継ぐ。
vim.opt.autoindent = true

-- `{` などの構文を見て、より自然にインデントする。
vim.opt.smartindent = true

-- Tab キー入力をタブ文字ではなくスペースに変換する。
vim.opt.expandtab = true

-- 自動インデントや `>>` / `<<` で動く幅を 2 スペースにする。
vim.opt.shiftwidth = 2

-- ファイル中のタブ文字を 2 桁幅で表示する。
vim.opt.tabstop = 2

-- 行頭で Tab / Backspace を押したときに `shiftwidth` に沿って動かす。
vim.opt.smarttab = true

-- 検索時に大文字小文字を区別しない。
vim.opt.ignorecase = true

-- 置換コマンドの結果を、実行前に分割ウィンドウでプレビューする。
vim.opt.inccommand = "split"

-- `filename~` のようなバックアップファイルを作らない。
vim.opt.backup = false

-- 一時ディレクトリ配下では、バックアップ作成対象から明示的に外す。
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }

-- `:find` などで、カレントディレクトリ以下のサブディレクトリも検索対象にする。
vim.opt.path:append({ "**" })

-- ファイル補完や検索で、巨大になりやすい node_modules を候補から外す。
vim.opt.wildignore:append({ "*/node_modules/*" })

-- コメント行で改行したとき、自動でコメント記号を続ける。
vim.opt.formatoptions:append({ "r" })
