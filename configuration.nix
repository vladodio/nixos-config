{ config, pkgs, ... }:

{
  imports =
  let
    f = x : ./src + x;
  in
    [
      (f /locale.nix)                      # Locale stuff
      (f /desktop.nix)                     # Desktop stuff
      (f /network.nix)                     # Network stuff
      (f /packages.nix)                    # Package installs
      (f /hardware-configuration.nix)      # Auto-gen'ed hardware stuff
    ];

  # enable flakes & ???
  nix.settings.experimental-features = [ "flakes" "nix-command" ];

  # Garbage collect
  nix.gc = {
    automatic = true;
    dates = "Sat, 04:30";
    options = "--delete-older-than 7d";
  };

  # <3
  system.stateVersion = "25.11";
}
