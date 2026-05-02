{
  inputs,
  den,
  __findFile,
  ...
}:
{
  _module.args.__findFile = den.lib.__findFile;

  den.default = {
    nixos.system.stateVersion = "25.11";

    darwin.system.stateVersion = 6;

    homeManager.home.stateVersion = "25.11";

    includes = [
      <den/hostname>
      <den/mutual-provider>
      <den/primary-user>
      <den/define-user>
    ];
  };

  den.schema.user.classes = [ "homeManager" ];
}
