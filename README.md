# Minimalist Neovim Configuration (MiniMax Inspired)

A bare-scratch, ultra-minimal Neovim configuration built for **Neovim 0.13+ Nightly**. This setup completely bypasses third-party plugin managers and complex wrapper layers,
 relying strictly on modern native features to serve as an optimized environment for learning Lua, Neovim internals, and systems scripting.

## Core Philosophy

- **Zero Bloat:** No massive wrapper plugins, external installers, or unnecessary abstractions.
- **Native Ecosystem:** Uses Neovim's built-in package management (`vim.pack`), native LSP handling (`vim.lsp.config` / `vim.lsp.enable`), and native filetype detection.
- **Learning First:** Transparent execution flow structured to make tracking configuration changes easy and educational.
- **Clean Order of Operations:** Leverages alphabetical loading within the native runtime path (`plugin/`) and explicit lazy loading via filetype overrides (`after/`).

## Directory Architecture

The configuration leverages a structured runtime matrix inspired by MiniMax, utilizing the `after/` directory to guarantee clean layering for language configurations and overrides:

```
~/.config/nvim/
├── init.lua                # Main entry point (remains clean/declarative)
├── nvim-pack-lock.json     # Native package manager lockfile
├── plugin/                 # Automatically sourced sequentially on startup
│   ├── 10_options.lua      # Editor behavior, indentation, and basic options
│   ├── 20_keymaps.lua      # Pure, vanilla keybindings and leader maps
│   ├── 30_plugins.lua      # Native plugin initializers and manual hooks
│   └── 40_lsp.lua          # LSP configurations
└── after/                  # Sourced last to overlay configurations cleanly
    ├── ftplugin/           # Filetype-specific buffer behavior
    ├── lsp/                # Native 0.13 language server configurations
    ├── plugin/             # Sourced after root plugins are loaded
    └── snippets/           # Dedicated user-defined snippets directory
```
