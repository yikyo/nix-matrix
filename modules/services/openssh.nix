{
  den.aspects.services._.openssh = {
    nixos = {
      services.openssh = {
        enable = true;
        ports = [ 22 ];
        settings = {
          PasswordAuthentication = true;
          PermitRootLogin = "no";
        };
      };
    };
  };
}
