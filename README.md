# nvim-solarized

Solarized Dark colorscheme for Neovim.

## Install

### lazy.nvim

```lua
{
  "yourname/nvim-solarized",
  priority = 1000,
  config = function()
    require("solarized").setup({
      transparent = false,
    })
    vim.cmd.colorscheme("solarized")
  end,
}
```

### vim-plug

```vim
Plug 'yourname/nvim-solarized'
colorscheme solarized
```

## Options

```lua
require("solarized").setup({
  italic = true,
  bold = true,
  underline = true,
  undercurl = true,
  transparent = false,
})
```

## Notes

- This theme only targets Solarized Dark.
