{ __findFile, ... }:
{
  den.hosts.aarch64-darwin.workstation.users.yikyo = {
  };

  den.aspects.workstation = {
    includes = [
      <system/default>
    ];
  };
}
