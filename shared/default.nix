{ mkDerivation, aeson, base, base64-bytestring, bytestring
, containers, mtl, stdenv, text, transformers, vector
}:
mkDerivation {
  pname = "unison-shared";
  version = "0.1";
  src = builtins.filterSource
    (path: type: type != "directory" || (baseNameOf path != ".git" && baseNameOf path != "dist"))
    ./.;
  buildDepends = [
    aeson base base64-bytestring bytestring containers mtl text
    transformers vector
  ];
  homepage = "http://unisonweb.org";
  description = "The Unison programming language and platform";
  license = stdenv.lib.licenses.mit;
}
