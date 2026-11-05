
# Neovim

A minimal, personal Neovim configuration for software development.

## Features

- **Plugin Manager:** lazy.nvim
- **Appearance:** TokyoNight, Lualine
- **Navigation:** Telescope, netrw
- **Syntax Highlighting:** Treesitter
- **LSP:** nvim-lspconfig
- **Autocompletion:** blink.cmp

Support for Java, C, Lua, Markdown, TypeScript, Vue, JSON, YAML, XML and more.

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
| `u` / `Ctrl+r` | Undo / Redo |

### Spell Checking

Automatically enabled for Markdown and text files (`de_ch`, `en_us`).

| Key | Action |
|---|---|
| `]s` / `[s` | Next / previous spelling error |
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

## Dependencies

Plugins are managed by `lazy.nvim`. Language servers and external tools must be installed separately.

### Requirements

- Neovim 0.11.3+
- Git
- C compiler (GCC or Clang) — Treesitter parsers
- Make — telescope-fzf-native
- [ripgrep](https://github.com/BurntSushi/ripgrep) — Telescope live grep

### Language Servers

| Language | Server |
|---|---|
| C | clangd |
| Java | jdtls |
| Lua | lua-language-server |
| Markdown | marksman |
| TypeScript / JavaScript | typescript-language-server |
| Vue | vue-language-server |
| YAML | yaml-language-server |
| XML | lemminx |
| Bash | bash-language-server |
| JSON | vscode-json-languageserver |
| HTML | vscode-html-languageserver |
| CSS | vscode-css-languageserver |

Only install the servers you need. Some require additional runtimes such as Node.js or Java. Vue with TypeScript may require additional LSP configuration.

## Setup

Install Neovim and the required dependencies using your system's package manager.

Clone the configuration:

```bash
git clone <repository-url> ~/.config/nvim
```

Open Neovim and install the plugins:

```vim
:Lazy sync
```

Verify the installation:

```vim
:checkhealth
:checkhealth vim.lsp
```

Language servers must be available in your system's `PATH`.

## Philosophy

Keep it simple. Add functionality only when needed.
