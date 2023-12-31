#pragma once

#include <string>
#include "TypeDefine.h"

class File
{
public:
    File(const std::string& file);
    File(File* pFile);
    File(File* pFile, u32 offset, u32 length);
    File(u8* pBuffer, u32 offset, u32 length);
    virtual ~File();

    void WriteFile(const std::string& file) const;
    const std::string& GetFileName() const;
    u32 GetFileSize() const;
    void GetFileBuffer(u8* pBuffer, u32 start, u32 length) const;
    u8 GetU8(u32 offset) const;
    u16 GetU16LE(u32 offset) const;
    u32 GetU32LE(u32 offset) const;

protected:
    std::string m_FileName;
    u8* m_Buffer;
    u32 m_BufferSize;
};
