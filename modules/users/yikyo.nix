{ __findFile, ... }:
{
  den.aspects.yikyo = {
    nixos =
      { config, ... }:
      {
        users.users.yikyo.hashedPasswordFile = config.sops.secrets."yikyo-password".path;
      };

    includes = [
      <programs/git>
      <programs/vim>
      <programs/starship>
    ];
  };
}
