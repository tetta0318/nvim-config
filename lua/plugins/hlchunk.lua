return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "bufNewFile" },
  config = function()
    require("hlchunk").setup({

      chunk = {
        enable = true,
      },
    })
  end,
}
