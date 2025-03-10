{
  sbcl,
  sbclPackages,
  fetchFromGitHub,
}:

sbcl.buildASDFSystem {
  pname = "convex-covering";
  version = "0-unstable-2025-01-09";

  src = fetchFromGitHub {
    owner = "Shirakumo";
    repo = "convex-covering";
    rev = "14af265defc24161004523488713d0e34e0abba0";
    hash = "sha256-5wso0ERadstrpiR1MrX5bY3Ur46rbbcgEKwGDFDL+bc=";
  };

  lispLibs = [
    sbclPackages.manifolds
    sbclPackages.quickhull
    sbclPackages.damn-fast-priority-queue
    sbclPackages.machine-state
  ];
}
