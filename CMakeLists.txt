cmake_minimum_required(VERSION 3.13)
project(Capster LANGUAGES CXX C)
set (CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_compile_options(-g)
add_compile_options(-O0)

# Project name
project(ArchiveQueueProject)

# Add the archiveQueue library (and its dependencies)
add_subdirectory(libs/archiveQueue)

# Add the main executable
add_executable(main main.cpp)

# Link the archiveQueue library to the main executable
target_link_libraries(main PRIVATE archiveQueue)
