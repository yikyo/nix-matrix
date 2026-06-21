{
  inputs,
  den,
  __findFile,
  ...
}:
{
  _module.args.__findFile = den.lib.__findFile;

  den.default = {
    nixos.system.stateVersion = "26.05";

    darwin.system.stateVersion = 7;

    homeManager.home.stateVersion = "26.05";

    includes = [
      <den/hostname>
      <den/mutual-provider>
      <den/primary-user>
      <den/define-user>
    ];
  };

  den.schema.user.classes = [ "homeManager" ];
  den.schema.host.strict = true;

}
