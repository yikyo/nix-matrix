{ __findFile, ... }:
{
  den.hosts.aarch64-linux.vm.users.yikyo = {
  };

  den.aspects.vm = {
    includes = [
      <vm/custom>
      <vm/hardware>

      <systems/default>

      <services/openssh>
    ];
  };

  den.aspects.yikyo = {
    provides.vm = {
      includes = [
      ];
    };
  };
}
