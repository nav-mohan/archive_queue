#include "archiveQueue.hpp"
#include "zipArchiver.hpp"
#include <iostream>
#include <functional>
#include <string>
#include <vector>
#include <unistd.h>

int main() {
    ZipArchiver zipArchiver;
    ArchiveQueue archiveQueue;

    archiveQueue.DoArchiving = [&zipArchiver](const std::string& directoryPath){
        const std::string archivePath = directoryPath + ".zip";
        zipArchiver.CompressDirectoryToZip(archivePath,directoryPath);
    };
    archiveQueue.OnFinishArchiving = [&](){
        printf("DONE ZIPPING ALL FOLDERS\n");
    };

    std::vector<std::string> files = {
        "../files/file1.txt",
        "../files/file2.txt",
        "../files/file3.txt",
        "../files/tone.mp3"
        };
    std::string dirPath = "../example_directory";
    if(archiveQueue.MoveFiles(files,dirPath))
        archiveQueue.Push(dirPath);

    sleep(1); // wait until archiver's worker-thread is done 

    return 0;
}