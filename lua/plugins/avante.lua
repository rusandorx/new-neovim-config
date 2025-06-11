-- return {}

return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = "yandex-api",
    providers = {
      ["proxy-api"] = {
        __inherited_from = "openai",
        endpoint = "https://api.proxyapi.ru/openai/v1",
        model = "gpt-4o-mini", -- your desired model (or use gpt-4o, etc.)
        api_key_name = "PROXY_API_KEY",
      },
      ["yandex-api"] = {
        __inherited_from = "claude",
        endpoint = "https://api.eliza.yandex.net/raw/anthropic",
        api_key_name = "YANDEX_API_KEY",
        model = "claude-3-7-sonnet-20250219",
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "echasnovski/mini.icons", -- or echasnovski/mini.icons
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      ft = { "markdown", "Avante" },
    },
  },
}
