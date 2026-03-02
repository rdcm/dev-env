{ pkgs, ... }:

{
  home.packages = [
    (pkgs.qFlipper.overrideAttrs (old: {
      postFixup = (old.postFixup or "") + ''
        wrapProgram $out/bin/qFlipper \
          --set QT_QPA_PLATFORM wayland
      '';
    }))
  ];
}
