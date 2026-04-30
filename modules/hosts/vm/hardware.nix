{
  den.aspects.vm._.hardware = {
    nixos =
      {
        config,
        lib,
        pkgs,
        modulesPath,
        ...
      }:
      {
        imports = [ ];

        boot.initrd.availableKernelModules = [
          "virtio_pci"
          "xhci_pci"
          "usbhid"
        ];
        boot.initrd.kernelModules = [ ];
        boot.kernelModules = [ ];
        boot.extraModulePackages = [ ];

        fileSystems."/" = {
          device = "/dev/disk/by-uuid/82e36e0e-7bf0-4624-aab3-a27ff8bde2a1";
          fsType = "ext4";
        };

        fileSystems."/boot" = {
          device = "/dev/disk/by-uuid/25FC-0D52";
          fsType = "vfat";
          options = [
            "fmask=0022"
            "dmask=0022"
          ];
        };

        swapDevices = [ ];

        nixpkgs.hostPlatform = lib.mkDefault "aarch64-linux";
      };
  };
}
