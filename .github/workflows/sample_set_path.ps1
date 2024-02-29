$env:PATH = "./usd-install/bin;./usd-install/lib;" + $env:PATH
$env:PYTHONPATH = "./usd-install/lib/python;" + $env:PYTHONPATH
$env:USD_INSTALL_PATH = "./usd-install"
$env:USD_INSTALL_PATH_BIN = "./usd-install/bin"
$env:USD_INSTALL_PATH_LIB = "./usd-install/lib"
$env:USD_INSTALL_PYTHON_PATH = "./usd-install/lib/python"
cmake -S . -B build -DBOOST_ROOT="./usd-install" -DCMAKE_INSTALL_PREFIX="./usd-install" -DUSD_FILEFORMATS_ENABLE_FBX=OFF -Dpxr_ROOT="./usd-install" -DUSD_FILEFORMATS_BUILD_TESTS=OFF -DUSD_FILEFORMATS_ENABLE_CXX11_ABI=ON
cmake --build   build --config release
cmake --install build --config release