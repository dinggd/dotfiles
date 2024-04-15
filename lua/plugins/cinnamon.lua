return {
  {
    "declancm/cinnamon.nvim",
    enabled = true,
    event = { "BufReadPre" },
    config = function()
      require("cinnamon").setup()
    end,
  },
}
