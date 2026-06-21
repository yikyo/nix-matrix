{
  den.aspects.homebrew.rime = {
    darwin = {
      homebrew.casks = [ "squirrel-app" ];
    };

    homeManager = {
      home.file."Library/Rime" = {
        source = ./config;
        recursive = true;
      };
    };
  };
}
