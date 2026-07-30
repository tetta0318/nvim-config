return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- ドットファイルを表示
          ignored = true, -- gitignore 対象も表示
        },
      },
    },
  },
}
