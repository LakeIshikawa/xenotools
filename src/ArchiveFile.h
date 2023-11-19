#pragma once
#include "File.h"

class ArchiveFile : public File
{
public:
    ArchiveFile(const std::string& file);
    ArchiveFile(File* pFile, u32 offset, u32 length);
    virtual ~ArchiveFile();
    void Extract();
};
