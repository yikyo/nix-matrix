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
      boot.kernel.sysctl = {
        "net.core.default_qdisc" = "fq";
        "net.ipv4.tcp_congestion_control" = "bbr";
      };

      networking = {
        firewall = {
          enable = true;
        };
        useNetworkd = true;
      };
    };
  };
}
