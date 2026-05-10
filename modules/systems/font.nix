{
  den.aspects.systems.font = {
    os =
      { pkgs, ... }:
      {
        fonts.packages = with pkgs; [
          nerd-fonts.fira-code
        ];
      };
  };
}
