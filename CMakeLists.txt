# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(test_flycheck_fortran LANGUAGES Fortran)

add_executable(test_flycheck_fortran main.f90)

add_subdirectory(src_modules)

target_link_libraries(test_flycheck_fortran modules)
