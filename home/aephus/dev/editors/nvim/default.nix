{
  config,
  pkgs,
	lib,
  ...
}:
# let
#  cfg = config.modules.nvim;
#  # Source my theme
#  jabuti-nvim = pkgs.vimUtils.buildVimPlugin {
#    name = "jabuti-nvim";
#    src = pkgs.fetchFromGitHub {
#      owner = "jabuti-theme";
#      repo = "jabuti-nvim";
#      rev = "17f1b94cbf1871a89cdc264e4a8a2b3b4f7c76d2";
#      sha256 = "sha256-iPjwx/rTd98LUPK1MUfqKXZhQ5NmKx/rN8RX1PIuDFA=";
#    };
#  };
# in {
{
  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withRuby = false;
    withNodeJs = false;
    withPython3 = false;
         extraPackages = with pkgs; [
           nil # nix language server
           sumneko-lua-language-server # lua lsp
           stylua # lua linter
           uncrustify # C and stuff
           shellcheck # shell
           alejandra # nix formatter
           ccls # cpp
           black # python
           shellcheck # bash
           shfmt # shell
           nodejs # take a guess
           marksman # markdown language server
           nodePackages.pyright
           nodePackages.prettier
           nodePackages.stylelint
           nodePackages.jsonlint # JSON
           nodePackages.typescript-language-server # Typescript
           nodePackages.vscode-langservers-extracted # HTML, CSS, JavaScript
           nodePackages.bash-language-server
           nodePackages.node2nix # node and tix, we game
           nodePackages.eslint
           tree-sitter
         ];
     plugins = with pkgs.vimPlugins; [
          # lsp_lines-nvim
          mason-nvim
          vim-nix
          nvim-ts-autotag
          cmp-nvim-lsp-signature-help
          comment-nvim
          lsp_lines-nvim
          null-ls-nvim
          vim-fugitive
          friendly-snippets
          luasnip
          rust-tools-nvim
          crates-nvim
          vim-illuminate
          nvim-cmp
          cmp-nvim-lsp
          cmp-path
          cmp_luasnip
          cmp-buffer
          cmp-cmdline
          impatient-nvim
          indent-blankline-nvim
          nvim-tree-lua
          telescope-nvim
          nvim-web-devicons
          catppuccin-nvim
          lspkind-nvim
          nvim-lspconfig
          hop-nvim
          alpha-nvim
          nvim-autopairs
          nvim-colorizer-lua
          nvim-ts-rainbow
          gitsigns-nvim
          toggleterm-nvim
          todo-comments-nvim
           (nvim-treesitter.withPlugins (plugins:
             with plugins; [
               tree-sitter-python
               tree-sitter-c
               tree-sitter-nix
               tree-sitter-cpp
               tree-sitter-rust
               tree-sitter-toml
               tree-sitter-json
               tree-sitter-lua
               tree-sitter-go
               tree-sitter-java
               tree-sitter-typescript
               tree-sitter-javascript
               tree-sitter-cmake
               tree-sitter-comment
               tree-sitter-http
               tree-sitter-regex
               tree-sitter-dart
               tree-sitter-make
               tree-sitter-html
               tree-sitter-css
               tree-sitter-latex
               tree-sitter-bibtex
               tree-sitter-php
               tree-sitter-sql
               tree-sitter-zig
               tree-sitter-dockerfile
               tree-sitter-markdown
             ]))
    ];

		extraConfig = ''
		:luafile ~/.config/nvim/init.lua
		'';

  };
		xdg.configFile.nvim = {
			source = ./config/nvim;
			recursive = true;
		};
}
