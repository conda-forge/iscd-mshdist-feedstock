set -e

cat -n CMakeLists.txt

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=${PREFIX} -S . -B build
cmake --build ./build --verbose --config Release
cmake --install ./build --verbose