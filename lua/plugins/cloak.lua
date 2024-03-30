return {
  "laytan/cloak.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>uh",
      ":CloakToggle",
      desc = "Toogle cloak",
    },
  },
  opts = {
    cloak_length = "10",
    patterns = {
      file_pattern = {
        -- https://www.digitalocean.com/community/tools/globs
        "*env*",
        "*env*.{json,yml,yaml,toml}",
        "*account*.{json,yml,yaml,toml}",
        "*credential*.{json,yml,yaml,toml}",
        "*password*.{json,yml,yaml,toml}",
        "*config*.{json,yml,yaml,toml}",
      },
      cloak_pattern = {
        "=.+",
        "-.+",
      },
    },
  },
}
