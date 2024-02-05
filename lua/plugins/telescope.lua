return {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader><Space>",
        function() require("telescope.builtin").find_files() end,
        desc = "Find File",
      },

    {
      "<leader>g",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Find File",
    },
  },
}
