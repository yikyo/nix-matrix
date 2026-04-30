{ __findFile, ... }:
{
  den.aspects.yikyo = {
    includes = [
      <programs/git>
      <programs/vim>
      <programs/starship>
    ];
  };
}
