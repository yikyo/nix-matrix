{
  den.aspects.vm._.custom = {
    nixos = {
      boot.loader = {
        efi.canTouchEfiVariables = true;
        systemd-boot.enable = true;
      };
    };
  };
}
