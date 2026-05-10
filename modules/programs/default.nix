{ __findFile, den, ... }:
{
  den.aspects.programs.default = {
    includes = [
      <programs/lsd>
      <programs/git>
      <programs/starship>
      <programs/vim>
    ];
  };
}
