return {
  {
    "romus204/tree-sitter-manager.nvim",
    config = function()
      require("tree-sitter-manager").setup({
        ensure_installed = { "html", "css", "javascript", "lua" },
        auto_install = true,
      })
    end
  }
}
