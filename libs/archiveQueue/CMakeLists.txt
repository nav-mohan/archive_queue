# enable/disable required FLAGS for libarchive
include(${CMAKE_CURRENT_SOURCE_DIR}/libarchive_flags.cmake)

add_subdirectory(third_party/libarchive)

# Define the archiveQueue library
add_library(archiveQueue STATIC archiveQueue.cpp)

# Include directories for archiveQueue and libarchive
target_include_directories(archiveQueue
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/third_party/libarchive/libarchive
)

# Link libarchive to the archiveQueue library
target_link_libraries(archiveQueue PRIVATE archive_static)
