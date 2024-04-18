return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fP",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>ff",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = true,
            no_ignore_parent = true,
            hidden = true,
          })
        end,
        desc = "Find Files (hidden) (root dir)",
      },
      {
        "<leader>sg",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep({
            additional_args = { "--hidden" },
          })
        end,
        desc = "Grep (hidden) (root dir)",
      },
    },
    opts = function(_, opts)
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
        wrap_results = true,
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          n = {},
        },
      })
      opts.pickers = {
        grep_string = {
          additional_args = { "--hidden" },
        },
        find_files = {
          find_command = {
            "rg",
            "--files",
            "--hidden",
            "--glob",
            "!{**/.git/**,**/?(.)node?(_)modules/**,**/?(.)?(v)env/**,**/.idea/**,**/.vs/**}",
          },
        },
        diagnostics = {
          theme = "ivy",
          initial_mode = "normal",
          layout_config = {
            preview_cutoff = 9999,
          },
        },
      }
    end,
  },
}
