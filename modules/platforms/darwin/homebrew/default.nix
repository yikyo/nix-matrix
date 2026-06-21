{ __findFile, ... }:
{
  den.aspects.homebrew.default = {
    darwin = {
      homebrew = {
        enable = true;
        onActivation.cleanup = "zap";

        casks = [
          "antigravity"
          "fork"
          "google-chrome"
          "orbstack"
          "raycast"
          "tailscale-app"
          "ticktick"
          "visual-studio-code"
        ];
      };
    };

    includes = [
      <homebrew/ghostty>
      <homebrew/rime>
    ];
  };
}
