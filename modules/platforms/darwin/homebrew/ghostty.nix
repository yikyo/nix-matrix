{
  den.aspects.homebrew._.ghostty = {
    darwin = {
      homebrew.casks = [ "ghostty" ];
    };

    homeManager = {
      programs.ghostty = {
        enable = true;
        package = null;
        enableZshIntegration = true;

        settings = {
          theme = "Gruvbox Material";
          working-directory = "home";
          window-inherit-working-directory = false;
          tab-inherit-working-directory = false;
          split-inherit-working-directory = false;
          window-width = 168;
          window-height = 48;
          macos-icon = "paper";
          shell-integration-features = "ssh-env";
          quit-after-last-window-closed = true;
        };
      };
    };
  };
}
