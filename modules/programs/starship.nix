{ __findFile, den, ... }:
{
  den.aspects.programs.starship = {
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
          format = "$username@$hostname$fill[$all](grey)$line_break$directory$character";

          username = {
            style_user = "";
            style_root = "";
            format = "[$user]($style)";
          };

          hostname = {
            style = "";
            format = "[$hostname]($style)";
          };

          fill = {
            symbol = " ";
          };
        };
      };
    };

    includes = [
      (den.provides.user-shell "zsh")
    ];
  };
}
