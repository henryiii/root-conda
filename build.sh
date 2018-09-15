
# -p is used because you can rerun with --dirty to rebuild
mkdir -p workdir
cd workdir

cmake ../ -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -Dgnuinstall=ON \
    -DCMAKE_INSTALL_LIBDIR=$SP_DIR \
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
    -DPYTHON_EXECUTABLE=$PYTHON

make -j$CPU_COUNT
make install

