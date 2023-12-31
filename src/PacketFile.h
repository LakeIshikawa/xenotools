#pragma once

#include "File.h"

class PacketFile : public File
{
public:
    PacketFile(const std::string& file);
    PacketFile(File* pFile);
    PacketFile(File* pFile, u32 offset, u32 length);
    PacketFile(u8* pBuffer, u32 offset, u32 length);
    virtual ~PacketFile();

    virtual File* ExtractFile(const u32 fileNumber);

    const u32 GetNumberOfFiles();

private:
    void InnerGetNumberOfFiles();

private:
    u32 m_NumberOfFiles;
};
