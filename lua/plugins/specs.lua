return {
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      local edgy_idx = LazyVim.plugin.extra_idx("ui.edgy")
      local symbols_idx = LazyVim.plugin.extra_idx("editor.outline")

      if edgy_idx and edgy_idx > symbols_idx then
        LazyVim.warn(
          "The `edgy.nvim` extra must be **imported** before the `outline.nvim` extra to work properly.",
          { title = "LazyVim" }
        )
      end

      opts.left = opts.left or {}
      table.insert(opts.left, {
        title = "Outline",
        ft = "Outline",
        pinned = true,
        open = "Outline",
      })
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = function(_, opts)
      if require("lazyvim.util").has("nvim-dap-python") then
        opts.dap_enabled = true
      end

      return vim.tbl_deep_extend("force", opts, {
        anaconda_base_path = "$HOME/miniconda3",
        anaconda_envs_path = "$HOME/miniconda3/envs",
        parents = 0,
      })
    end,
  },
}
