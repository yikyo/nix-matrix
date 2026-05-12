{ inputs, ... }:
{
  flake-file.inputs.sops-nix = {
    url = "github:Mic92/sops-nix";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  den.aspects.systems.sops = {
    nixos = {
      imports = [
        inputs.sops-nix.nixosModules.sops
      ];

      sops = {
        age = {
          sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
        };
        secrets = {
          "yikyo-password" = {
            key = "yikyo-password";
            sopsFile = ../../secrets/users.yaml;
            neededForUsers = true;
          };
        };
      };
    };
  };
}
