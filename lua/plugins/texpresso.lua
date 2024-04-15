return {
  {
    "let-def/texpresso.vim",
    cmd = "TeXpresso",
    keys = {
      {
        "<leader>ct",
        --"<cmd>TeXpresso %<cr>",
        function()
          require("texpresso").attach()
        end,
        desc = "Live Latex Preview",
      },
    },
    opts = {},
    config = false,
  },
}
