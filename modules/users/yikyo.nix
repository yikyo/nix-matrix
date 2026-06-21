{ __findFile, ... }:
{
  den.aspects.yikyo = {
    nixos.user =
      { config, ... }:
      {
        hashedPasswordFile = config.sops.secrets."yikyo-password".path;
      };

    includes = [
      <programs/default>
    ];
  };
}
