-- lua/plugins/treesitter-custom.lua
return {
  -- これが「LazyVim が読み込む nvim-treesitter の設定を変更しますよ」という宣言
  {
    "nvim-treesitter/nvim-treesitter",

    -- LazyVim のデフォルト設定（opts）を変更・上書きする
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "java",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "bash",
        "html",
        "css",
        "javascript",
        "typescript",
        "python",
        "json",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },

    -- もし config 関数自体を上書きしたい場合（通常は不要）
    -- config = function(_, opts)
    --   require("nvim-treesitter.configs").setup(opts)
    -- end,
  },
}
