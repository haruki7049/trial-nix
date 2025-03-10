{
  sbcl,
  sbclPackages,
  fetchFromGitHub,
}:

sbcl.buildASDFSystem {
  pname = "text-draw";
  version = "0-unstable-2025-01-23";

  src = fetchFromGitHub {
    owner = "Shinmera";
    repo = "text-draw";
    rev = "e4f665b98bb84644ba389771ef48f77e1505a19c";
    hash = "sha256-SLHHeauYPUVJqW1CUW8M8jn/vzAh83h9TZXSSiYru00=";
  };

  lispLibs = [
    sbclPackages.documentation-utils
  ];
}
