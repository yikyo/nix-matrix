{ __findFile, ... }:
{
  den.hosts.x86_64-linux.home.users.yikyo = {
  };

  den.aspects.home = {
    includes = [
      <system/default>

      <home/custom>
      <home/hardware>
    ];
  };
}
