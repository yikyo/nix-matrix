{ __findFile, ... }:
{
  den.hosts.aarch64-linux.vm.users.yikyo = {
  };

  den.aspects.vm = {
    includes = [
      <system/default>
    ];
  };
}
