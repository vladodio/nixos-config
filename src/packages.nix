{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    firefox
    discord
    ocaml
    coq
    coqide
    dafny
    lean4
    zed-editor
    python3
    git
    binutils
    psmisc
    bottom
    ghostty
    erdtree
    bat
    eza
    delta
    fish
    htop
    cmatrix
    hugo
    obsidian
  ];


  # redshift??
  location.latitude = 39.9526;
  location.longitude = 75.1652;

  services.redshift = {
    enable = false;
    brightness = {
      # Note the string values below.
      day = "1";
      night = "1";
    };
    temperature = {
      day = 5500;
      night = 2000;
    };
  };


  # remove gnome browser
  environment.gnome.excludePackages = with pkgs; [epiphany];
}
