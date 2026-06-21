{ __findFile, ... }:
{
  den.hosts.aarch64-darwin.workstation.users.yikyo = {
  };

  den.aspects.workstation = {
    includes = [
      <systems/default>
    ];
  };

  den.aspects.yikyo = {
    provides.workstation = {
      includes = [
        <darwin/default>
      ];
    };
  };
}
