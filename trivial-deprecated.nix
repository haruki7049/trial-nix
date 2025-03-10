{
  sbcl,
  sbclPackages,
  fetchFromGitHub,
}:

sbcl.buildASDFSystem {
  pname = "trivial-deprecate";
  version = "0-unstable-2023-10-11";

  src = fetchFromGitHub {
    owner = "Shinmera";
    repo = "trivial-deprecate";
    rev = "d142cb614fd48bcb56e0e1f80292dd32d52dfd93";
    hash = "sha256-R3vCNBAdWl5HKO8K7X7t7jMH+aqjP7Gd4E5QJZrFKkk=";
  };

  lispLibs = [
    sbclPackages.documentation-utils
  ];
}
