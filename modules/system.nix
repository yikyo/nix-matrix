{
  den.aspects.system._.default = {
    os = {
      documentation.enable = false;

      nix = {
        gc = {
          automatic = true;
          options = "--delete-older-than 7d";
        };

        settings = {
          auto-optimise-store = true;
          experimental-features = [
            "nix-command"
            "flakes"
          ];
        };
      };

      time.timeZone = "Asia/Shanghai";
    };

    nixos = {
      networking = {
        firewall = {
          enable = true;
        };
        useDHCP = false;
        useNetworkd = true;
      };
    };
  };
}
