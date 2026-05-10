{ __findFile, ... }:
{
  den.aspects.yikyo = {
    user =
      { config, ... }:
      {
        hashedPasswordFile = config.sops.secrets."yikyo-password".path;
      };

    includes = [
      <programs/git>
      <programs/vim>
      <programs/starship>
    ];
  };
}
