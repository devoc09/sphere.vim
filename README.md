<div align="center">
    <h1>☄️ sphere.vim ☄️</h1>
</div>

Vim color scheme inspired by "A shooting star that appeared..."

## Screenshot
<div align="center">
    <img src="https://github.com/user-attachments/assets/70845d4a-10e3-435e-bf4f-98e0756ca8fa")
" />
</div>


## Install
### Using `lazy.nvim`
```lua
{ 'devoc09/sphere.vim' }
```

### Using `vim-plug`
```vim
Plug 'devoc09/sphere.vim'
```

## Config
Inside `init.vim`
```vim
colorscheme sphere
```

Inside `init.lua`
```lua
vim.cmd('colorscheme sphere')
```

<!-- If you using [`lualine`](https://github.com/nvim-lualine/lualine.nvim), you can alse enable the provided theme -->
<!-- ```lua -->
<!-- require('lualine').setup { -->
<!--     options = { -->
<!--         -- ... -->
<!--         theme = 'lflops' -->
<!--         -- ... -->
<!--     } -->
<!-- } -->
<!-- ``` -->

## Terminal themes

<details>
<summary>Ghostty</summary>

```
background = #1d1c1e
foreground = #fefefe
palette = 0=#1d1c1e
palette = 8=#4e4e4e
palette = 1=#ff7074
palette = 9=#fe95a0
palette = 2=#498791
palette = 10=#244c51
palette = 3=#ff9548
palette = 11=#ffb74d
palette = 4=#75ace9
palette = 12=#b8e7e1
palette = 5=#827ff5
palette = 13=#a6ace9
palette = 6=#6887ad
palette = 14=#344359
palette = 7=#fefefe
palette = 15=#ccb08f
split-divider-color = "#344359"
```

</details>
