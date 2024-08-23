{pkgs}: {
  deps = [
    pkgs.geckodriver
    pkgs.chromium
    pkgs.chromedriver
  ];
  env = {
    PYTHON_LD_LIBRARY_PTH = pkgs.lib.makeLibraryPath [
      # Need for pandas / numpy
      pkgs.stdenv.cc.cc.lib
      pkgs.zlib
    ];
  };
}
