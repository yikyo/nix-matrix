{ __findFile, ... }:
{
  den.aspects.darwin.default = {
    includes = [
      <homebrew/default>
      <dock/default>
      <finder/default>
      <window-manager/default>
    ];
  };
}
