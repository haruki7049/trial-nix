{
  sbcl,
  sbclPackages,
  fetchFromGitHub,
  callPackage,
}:

sbcl.buildASDFSystem {
  pname = "trial";
  version = "0-unstable-2025-03-08";

  src = fetchFromGitHub {
    owner = "Shirakumo";
    repo = "trial";
    rev = "1149df9d9599684103ed40df8f8e14f4347c8b07";
    hash = "sha256-W1ZVZ1QLzYcWVoG26TWxyfvrZEdoQUwD/Pe7mK230mo=";
  };

  lispLibs = [
    sbclPackages.trivial-features
    sbclPackages._3d-math
    sbclPackages._3d-spaces
    sbclPackages.atomics
    sbclPackages.bordeaux-threads
    sbclPackages.cl-gamepad
    sbclPackages.cl-opengl
    sbclPackages.cl-ppcre
    sbclPackages.closer-mop
    sbclPackages.com_dot_inuoe_dot_jzon
    (callPackage ./convex-covering.nix { })
    sbclPackages.deploy
    sbclPackages.depot
    sbclPackages.depot-zip
    sbclPackages.flow
    sbclPackages.glsl-toolkit
    sbclPackages.ieee-floats
    sbclPackages.language-codes
    sbclPackages.lquery
    sbclPackages.lru-cache
    sbclPackages.memory-regions
    sbclPackages.messagebox
    sbclPackages.open-with
    sbclPackages.precise-time
    sbclPackages.promise
    sbclPackages.random-sampling
    sbclPackages.simple-tasks
    sbclPackages.system-locale
    (callPackage ./text-draw.nix { })
    (callPackage ./trivial-deprecated.nix { })
    sbclPackages.verbose
    sbclPackages.zpng
  ];

  XDG_CACHE_HOME = "$TMPDIR/.cache";
}
