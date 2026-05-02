{ __findFile, ... }:
{
  den.hosts.x86_64-linux.home.users.yikyo = {
  };

  den.aspects.home = {
    includes = [
      <systems/default>

      <home/custom>
      <home/hardware>
    ];
  };

  den.aspects.yikyo = {
    provides.home = {
      includes = [
      ];
    };
  };
}
