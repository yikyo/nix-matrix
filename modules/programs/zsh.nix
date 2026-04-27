{ __findFile, den, ... }:
{
  den.aspects.programs._.starship = {
    includes = [
      (den.provides.user-shell "zsh")
    ];

    homeManager = {
      programs.zsh = {
        enable = true;
        autosuggestion.enable = true;
      };

      programs.starship = {
        enable = true;
        enableZshIntegration = true;

        settings = {
        };
      };
    };
  };
}
