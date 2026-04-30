{ inputs, den, ... }:
{
  _module.args.__findFile = den.lib.__findFile;

  den.default = {
    os = {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
      };
    };

    nixos.system.stateVersion = "25.11";

    darwin.system.stateVersion = 6;

    homeManager.home.stateVersion = "25.11";

    includes = [
      den.provides.hostname
      den.provides.mutual-provider
      den.provides.primary-user
      den.provides.define-user
    ];
  };

  den.schema.user.classes = [ "homeManager" ];
}
