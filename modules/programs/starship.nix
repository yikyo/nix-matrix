{ __findFile, den, ... }:
{
  den.aspects.programs.starship = {
    includes = [
      (den.provides.user-shell "zsh")
    ];

    homeManager = {
      programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;
        autosuggestion.enable = true;
      };

      programs.starship = {
        enable = true;
        enableZshIntegration = true;

        settings = {
          add_newline = false;
        };
      };
    };
  };
}
