{ __findFile, ... }:
{
  den.aspects.yikyo = {
    includes = [
      <programs/git>
      <programs/vim>
      <programs/starship>

      <homebrew/default>
      <dock/default>
      <finder/default>
    ];
  };
}
