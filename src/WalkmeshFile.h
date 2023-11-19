#pragma once

#include "File.h"
#include "ModelFile.h"

struct Triangle {

};

class WalkmeshFile : public File
{
public:
    WalkmeshFile(File* pFile);
    virtual ~WalkmeshFile();

    void GetWalkmesh(const int file_id);
};