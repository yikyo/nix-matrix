{
  den.aspects.home.custom = {
    nixos = {
      boot.loader = {
        efi.canTouchEfiVariables = true;
        systemd-boot.enable = true;
      };

      networking = {
        usePredictableInterfaceNames = false;
        wireless.iwd.enable = true;
      };

      systemd.network = {
        enable = true;
        networks."10-wireless" = {
          address = [ "10.0.0.200/24" ];
          dns = [ "10.0.0.1" ];
          gateway = [ "10.0.0.1" ];
          matchConfig.Name = "wlan*";
        };
      };
    };
  };
}
