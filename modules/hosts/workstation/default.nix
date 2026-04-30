{ __findFile, ... }:
{
  den.hosts.aarch64-darwin.workstation.users.yikyo = {
  };

  den.aspects.workstation = {
    includes = [
      <system/default>
    ];
  };

  den.aspects.yikyo = {
    provides.workstation = {
      includes = [
        <homebrew/default>
        <dock/default>
        <finder/default>
      ];
    };
  };
}
