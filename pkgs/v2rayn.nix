{
  stdenv,
  fetchurl,
  autoPatchelfHook,
  unzip,
  ...
}:

let
  v2rayn = stdenv.mkDerivation rec {
    pname = "v2rayn";
    version = "7.18.0";

    src = fetchurl {
      url = "https://github.com/2dust/v2rayN/releases/download/${version}/v2rayN-linux-64.zip";
      sha256 = "16ing1s16qmrp5p3x5bg3bm9wxvq0mdw7k6v77f56av9mxr58nzs";
    };

    nativeBuildInputs = [
      autoPatchelfHook
      unzip
    ];

    unpackPhase = ''
      unzip $src -d .
    '';

    installPhase = ''
      mkdir -p $out/bin $out/share/v2rayn
      cp -r . $out/share/v2rayn
      ln -s $out/share/v2rayn/v2rayN $out/bin/v2rayn
    '';
  };
in
{
  home.packages = [ v2rayn ];
}
