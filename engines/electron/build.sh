#!/bin/bash

# CLONE PHASE
# git clone https://github.com/electron/electron.git source
# pushd source
# git checkout "$COMMIT_TAG"
# popd

# BUILD PHASE

# pushd source/neo
# mkdir build
# cd build
# cmake -DCMAKE_INSTALL_PREFIX=../../../tmp ..
# make -j "$(nproc)"
# make install
# popd

mkdir bin
cd bin
npm install electron --save
cd ..

# COPY PHASE
cp -rfv bin/* "$diststart/1454400/dist/"
