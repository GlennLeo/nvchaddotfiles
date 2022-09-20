-- overriding default plugin configs!
local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "norg",
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  }
}

M.nvimtree = {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    height = 30,
    side = "left",
  },
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
    timeout = 400,
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
    "",
  },
}

M.alpha = {
  header = {
    val = {
      [[.----------------.  .----------------.  .----------------.  .-----------------. .-----------------.]],
      [[| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |]],
      [[| |    ______    | || |   _____      | || |  _________   | || | ____  _____  | || | ____  _____  | |]],
      [[| |  .' ___  |   | || |  |_   _|     | || | |_   ___  |  | || ||_   \|_   _| | || ||_   \|_   _| | |]],
      [[| | / .'   \_|   | || |    | |       | || |   | |_  \_|  | || |  |   \ | |   | || |  |   \ | |   | |]],
      [[| | | |    ____  | || |    | |   _   | || |   |  _|  _   | || |  | |\ \| |   | || |  | |\ \| |   | |]],
      [[| | \ `.___]  _| | || |   _| |__/ |  | || |  _| |___/ |  | || | _| |_\   |_  | || | _| |_\   |_  | |]],
      [[| |  `._____.'   | || |  |________|  | || | |_________|  | || ||_____|\____| | || ||_____|\____| | |]],
      [[| |              | || |              | || |              | || |              | || |              | |]],
      [[| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |]],
      [[ '----------------'  '----------------'  '----------------'  '----------------'  '----------------' ]],
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",

    -- shell
    "shfmt",
    "shellcheck",
  },
}

return M
