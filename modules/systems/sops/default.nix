{ inputs, ... }:
{
  flake-file.inputs.sops-nix = {
    url = "github:Mic92/sops-nix";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  den.aspects.systems._.sops = {
    nixos = {
      imports = [
        inputs.sops-nix.nixosModules.sops
      ];

      sops = {
        age = {
          generateKey = true;
          keyFile = "/var/lib/sops-nix/key.txt";
          sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
        };
        secrets = {
          "yikyo-password" = {
            key = "yikyo-password";
            sopsFile = ./secrets/users.yaml;
            neededForUsers = true;
          };
        };
      };
    };
  };
}
