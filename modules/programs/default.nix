{ __findFile, den, ... }:
{
  den.aspects.programs.default = {
    includes = [
      <programs/bat>
      <programs/git>
      <programs/lsd>
      <programs/starship>
      <programs/vim>
    ];
  };
}
