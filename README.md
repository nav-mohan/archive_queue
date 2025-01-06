## ArchiveQueue
`ArchiveQueue` is a wrapper around [`libarchive`](https://github.com/libarchive/libarchive) for ease of use in an async,multithreaded environment. 
It requires `C++ 17` or higher as it makes use of `std::filesystem`.

## Dependancies
* [LibArchive](https://github.com/libarchive/libarchive)

### Demo
1. Clone the repo
    * `git clone https://github.com/nav-mohan/archive_queue`
2. Initialize and update the submodule `libarchive` 
    * `git submodule init`
    * `git submodule update`
3. Compile
    * `mkdir build`
    * `cd build`
    * `cmake ..`
    * `make`

## Design
`ArchiveQueue` is meant for an async, multithreaded environment. For this reason, it makes use of a dedicated worker-thread and `condition-variables` to manage the worker queue. As it stands now, the library only compresses a directory into a `.ZIP` archive but the flexiblity exists for extending to other formats such as `.TAR`. The library provides a helper method `ArchiveQueue::MoveFiles(vector<string>& files, string& directoryPath)` to move `files` into the dedicated `directoryPath` before calling upon the compressor. 

### Future work
* Implement `TAR` compressor

### References/Notes
* [C++ Concurrency in Action by Anthony Williams](http://www.cplusplusconcurrencyinaction.com/)
* [libarchive home](https://libarchive.org/)
* [libarchive example](https://github.com/libarchive/libarchive/wiki/Examples)

> [!WARNING]  
> By default, `ArchiveQueue` will delete directories if they've been succesfully compressed. 

> [!NOTE]  
> Many flags listed in `libarchive_flags.cmake` have been toggled `OFF` (such as `TESTS`, `OPENSSL`, `UNZIP`) because they were not required for my project. I've also disabled other dependancies such as `zlib`, and `tar` to significantly reduce compile-time.

> [!NOTE]  
> In this example, I've chosen to build the `static` library and linked against the `libarchive_static`. To build the shared-libarary version, toggle the flag `BUILD_SHARED_LIBS` and link against `libarchive`.

