## Make your numbers easier to read
This plugin quickly transforms your number from `10000000` to `10_000_000`

### Installation
Using [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use {
  'asrul10/readable-number.nvim', tag = '0.1.1',
}
```

### Usage
```lua
local readable_number = require('readable-number')
vim.keymap.set('n', '<leader>ww', readable_number.readable_number, {})
```

