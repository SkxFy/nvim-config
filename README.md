
# Neovim Configuration

A minimal, personal Neovim setup for software development.

## Features

- **Plugin Manager:** lazy.nvim
- **Appearance:** TokyoNight, Lualine
- **Navigation:** Telescope, netrw
- **Syntax Highlighting:** Treesitter
- **LSP:** nvim-lspconfig
- **Autocompletion:** blink.cmp

Supports Java, C, Lua, Markdown, TypeScript, Vue, JSON, YAML, XML and other languages.

## Structure

```text
~/.config/nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── lazy.lua
    │   ├── options.lua
    │   └── keybinds.lua
    └── plugins/
        ├── appearance.lua
        ├── telescope.lua
        ├── treesitter.lua
        ├── lsp.lua
        └── completion.lua
```

## Keybindings

`<leader>` = `Space`

### Navigation

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Search help |
| `<leader>cd` | File explorer |
| `Ctrl+h/j/k/l` | Navigate splits |

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `grr` | Find references |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `<leader>f` | Format buffer |
| `]d` / `[d` | Next / previous diagnostic |
| `Ctrl+w d` | Show diagnostic |

### Editing

| Key | Action |
|---|---|
| `jk` / `kj` | Exit insert mode |
| `Ctrl+Space` | Open completion menu |
| `Ctrl+y` | Accept completion |
| `u` | Undo |
| `Ctrl+r` | Redo |

### Spell Checking

Automatically enabled for Markdown and text files.

| Key | Action |
|---|---|
| `]s` / `[s` | Navigate spelling errors |
| `z=` | Spelling suggestions |
| `zg` | Add word to dictionary |
| `:set spell!` | Toggle spell checking |

## Useful Commands

| Command | Action |
|---|---|
| `:Lazy` | Manage plugins |
| `:Lazy sync` | Install/update plugins |
| `:checkhealth` | Check configuration health |
| `:checkhealth vim.lsp` | Check LSP configuration |
| `:set list!` | Toggle invisible characters |
| `:split` / `:vsplit` | Split window |
| `:terminal` | Open terminal |
| `:e filename` | Open file |

## Setup

Requires Neovim 0.11.3+, Git and the corresponding language servers installed on the system.

Clone the configuration into `~/.config/nvim` and run:

```vim
:Lazy sync
```

Language servers and external tools are managed separately through the system package manager.

## Philosophy

Keep it simple. Add functionality only when needed.
