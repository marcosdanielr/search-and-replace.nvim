# search-and-replace.nvim

Search words and replace.

## Example

```
Replace all const word per let:
:SRA const let 

Replace each one:
:SRE const let
```

## Installation

using `vim-plug`
```vim
Plug 'marcosdanielr/search-and-replace.nvim'
```

using `packer.nvim`
```lua
use { 'marcosdanielr/search-and-replace.nvim' }
```

using `lazy.nvim`

```lua
{ 'marcosdanielr/search-and-replace.nvim' }
```

## Setup

### Vimscript

```vim
lua << EOF
  require("search-and-replace").setup()
EOF

```

### Lua

```lua
require("search-and-replace").setup()
```
