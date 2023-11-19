#include <string>
#include <iostream>
#include "FieldModule.h"
#include "FileSystem.h"
#include "Logger.h"

int main(int argc, char* argv[]) {

    if (argc < 2) {
        std::cout << "Usage: xenofield FIELDID" << std::endl;
        exit(1);
    }
    int id = std::atoi(argv[1]);
    if (id == 0) {
        std::cout << "Usage: xenofield FIELDID" << std::endl;
        exit(1);
    }

    FILESYSTEM = new FileSystem();
    LOGGER = new Logger("xenofield.log");

    auto field = new FieldModule();
    field->LoadMap(std::atoi(argv[1]));
}