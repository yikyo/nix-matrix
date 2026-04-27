{ inputs, den, ... }:
{
  _module.args.__findFile = den.lib.__findFile;

  den.default = {
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

  den.schema.host = {
    home-manager = {
      enable = true;
      useGlobalPkgs = true;
      useUserPackages = true;
    };
  };
}
