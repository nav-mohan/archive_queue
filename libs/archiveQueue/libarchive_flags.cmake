message(STATUS "SETTING FLAGS")

set(ENABLE_STATIC ON CACHE BOOL "Enable building static libraries for libarchive")
SET(BUILD_SHARED_LIBS OFF CACHE BOOL "Disable building shared-library")
# SET(BUILD_SHARED_LIBS ON CACHE BOOL "Disable building shared-library")
SET(ENABLE_MBEDTLS OFF CACHE BOOL  "Enable use of mbed TLS" )
SET(ENABLE_NETTLE OFF CACHE BOOL  "Enable use of Nettle" )
SET(ENABLE_OPENSSL OFF CACHE BOOL  "Enable use of OpenSSL" )
SET(ENABLE_LIBB2 OFF CACHE BOOL  "Enable the use of the system LIBB2 library if found" )
SET(ENABLE_LZ4 OFF CACHE BOOL  "Enable the use of the system LZ4 library if found" )
SET(ENABLE_LZO OFF CACHE BOOL  "Enable the use of the system LZO library if found" )
SET(ENABLE_LZMA OFF CACHE BOOL  "Enable the use of the system LZMA library if found" )
SET(ENABLE_ZSTD OFF CACHE BOOL  "Enable the use of the system zstd library if found" )

set(ENABLE_ZLIB ON CACHE BOOL "Enable the use of the system ZLIB library if found")
set(ENABLE_BZip2 OFF CACHE BOOL "Enable the use of the system BZip2 library if found")
set(ENABLE_LIBXML2 ON CACHE BOOL "Enable the use of the system libxml2 library if found")
set(ENABLE_EXPAT OFF CACHE BOOL "Enable the use of the system EXPAT library if found")
set(ENABLE_PCREPOSIX OFF CACHE BOOL "Enable the use of the system PCREPOSIX library if found")
set(ENABLE_PCRE2POSIX OFF CACHE BOOL "Enable the use of the system PCRE2POSIX library if found")
set(ENABLE_LIBGCC OFF CACHE BOOL "Enable the use of the system LibGCC library if found")

set(ENABLE_CNG OFF CACHE BOOL "Enable the use of CNG(Crypto Next Generation)")

set(ENABLE_TAR OFF CACHE BOOL "Enable tar building")
set(ENABLE_TAR_SHARED OFF CACHE BOOL "Enable dynamic build of tar")
set(ENABLE_CPIO OFF CACHE BOOL "Enable cpio building")
set(ENABLE_CPIO_SHARED OFF CACHE BOOL "Enable dynamic build of cpio")
set(ENABLE_CAT OFF CACHE BOOL "Enable cat building")
set(ENABLE_CAT_SHARED OFF CACHE BOOL "Enable dynamic build of cat")

set(ENABLE_UNZIP OFF CACHE BOOL "Enable unzip building")
set(ENABLE_UNZIP_SHARED OFF CACHE BOOL "Enable dynamic build of unzip")

set(ENABLE_XATTR OFF CACHE BOOL "Enable extended attribute support" )
set(ENABLE_ACL OFF CACHE BOOL "Enable ACL support" )
set(ENABLE_ICONV OFF CACHE BOOL "Enable iconv support" )
set(ENABLE_TEST OFF CACHE BOOL "Enable unit and regression tests" )
set(ENABLE_COVERAGE OFF CACHE BOOL "Enable code coverage (GCC only, automatically sets ENABLE_TEST to ON)" )
set(ENABLE_INSTALL OFF CACHE BOOL "Enable installing of libraries" )