{
  lib,
  osConfig,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    userName = "Aephus";
    userEmail = "aephus@duck.com";
    extraConfig = {
      init = {defaultBranch = "master";};
      core.editor = "nvim";
      pull.rebase = false;
    };
  };
}
