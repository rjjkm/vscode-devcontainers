cmake_minimum_required(VERSION 3.28)

# set the project name
project(HelloWorld)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# add the executable
add_executable(hw src/main.cc)
