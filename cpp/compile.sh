#!/bin/bash

if [ "$1" == "-f" ]; then
    echo "Running full clean and build..."
    rm -rf build
    mkdir build && cd build
    cmake -DCMAKE_BUILD_TYPE=Debug ..
    cmake --build . -j $(nproc)
    cd ..
else
    echo "Running quick build..."
    cmake --build build/ -j $(nproc)
fi
