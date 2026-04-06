return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = {
            "--config",
            (os.getenv("XDG_CONFIG_HOME") or vim.fn.expand("~/.config")) .. "/.markdownlint-cli2.jsonc",
            "-",
          },
        },
      },
    },
  },
}
