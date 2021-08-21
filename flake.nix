{
  description = "Load pnpm lock files into nix";

  outputs = { self }: {
    overlay = final: prev: {
      pnpm2nix = {
        inherit (import ./. { pkgs = final; })
          mkPnpmEnv
          mkPnpmPackage;
      };
    };
  };
}
