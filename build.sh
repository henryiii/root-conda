
# -p is used because you can rerun with --dirty to rebuild
mkdir -p workdir
cd workdir

#export CXXFLAGS="$CXXFLAGS -I$PREFIX/include"
# export CMAKE_SYSROOT="$PREFIX"

# Afterimage turned off because it installs to the build directory,
# and it breaks because it looks in the system for the includes

cmake $SRC_DIR \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -DCMAKE_BUILD_TYPE=Release \
    -Dgnuinstall=ON \
    -DCMAKE_INSTALL_LIBDIR="$SP_DIR" \
    -Dbuiltin_freetype=ON \
    -Dbuiltin_pcre=ON \
    -Dbuiltin_lzma=ON \
    -Dbuiltin_libz=ON \
    -Dasimage=OFF \
    -Dbuiltin_afterimage=OFF \
    -Dfftw3=ON \
    -Dgdml=OFF \
    -Dxml=OFF \
    -Dmathmore=ON \
    -Dminuit2=ON \
    -Dmysql=OFF \
    -Droofit=ON \
    -Dssl=ON \
    -Dxrootd=OFF \
    -Dx11=OFF \
    -Dopengl=OFF \
    -Ddavix=OFF \
    -Dpython=ON \
    -DPYTHON_EXECUTABLE="$PYTHON"

make -j$CPU_COUNT
make install

