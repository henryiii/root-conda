
# -p is used because you can rerun with --dirty to rebuild
mkdir -p workdir
cd workdir

cmake $SRC_DIR \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -G"$CMAKE_GENERATOR" \
    -DCMAKE_BUILD_TYPE=Release \
    -Dgnuinstall=ON \
    -DCMAKE_INSTALL_LIBDIR="$SP_DIR" \
    -Dbuiltin_freetype=ON \
    -Dfftw3=ON \
    -Dgdml=OFF \
    -Dxml=OFF \
    -Dmathmore=ON \
    -Dminuit2=ON \
    -Dmysql=OFF \
    -Droofit=ON \
    -Dssl=ON \
    -Dxrootd=ON \
    -Dpython=ON \
    -DPYTHON_EXECUTABLE="$PYTHON"

make -j$CPU_COUNT
make install

