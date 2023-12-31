#include <cassert>
#include <string.h>

#include "File.h"
#include "FileSystem.h"
#include "Logger.h"



File::File(const std::string& file) :
    m_FileName(file),
    m_Buffer(NULL),
    m_BufferSize(0)
{
    LOGGER->Log("Loading file: " + m_FileName + "\n");
    m_BufferSize = FILESYSTEM->GetFileSize(m_FileName);

    m_Buffer = (u8*)malloc(sizeof(u8) * m_BufferSize);

    if (!FILESYSTEM->ReadFile(m_FileName, m_Buffer, 0, m_BufferSize))
    {
        LOGGER->Log("Warning: " + m_FileName + " not found!\n");
    }
}



File::File(File* pFile, u32 offset, u32 length) :
    m_Buffer(NULL),
    m_BufferSize(length)
{
    assert(pFile != NULL);

    m_FileName = pFile->GetFileName();

    m_Buffer = (u8*)malloc(sizeof(u8) * m_BufferSize);
    pFile->GetFileBuffer(m_Buffer, offset, m_BufferSize);
}



File::File(u8* pBuffer, u32 offset, u32 length) :
    m_FileName("BUFFER"),
    m_Buffer(NULL),
    m_BufferSize(length)
{
    assert(pBuffer != NULL);

    m_Buffer = (u8*)malloc(sizeof(u8) * m_BufferSize);
    memcpy(m_Buffer, pBuffer + offset, m_BufferSize);
}



File::File(File* pFile)
{
    assert(pFile != NULL);

    m_BufferSize = pFile->GetFileSize();
    m_FileName = pFile->GetFileName();

    m_Buffer = (u8*)malloc(sizeof(u8) * m_BufferSize);
    pFile->GetFileBuffer(m_Buffer, 0, m_BufferSize);
}



File::~File()
{
    free(m_Buffer);
}



void
File::WriteFile(const std::string& file) const
{
    FILESYSTEM->WriteNewFile(file, m_Buffer, m_BufferSize);
}



const std::string&
File::GetFileName() const
{
    return m_FileName;
}



u32
File::GetFileSize() const
{
    return m_BufferSize;
}



void
File::GetFileBuffer(u8* pBuffer, u32 start, u32 length) const
{
    memcpy(pBuffer, m_Buffer + start, length);
}



u8
File::GetU8(u32 offset) const
{
    return static_cast<u8>(*(m_Buffer + offset));
}



u16
File::GetU16LE(u32 offset) const
{
    return ((u8*)m_Buffer + offset)[0] | (((u8*)m_Buffer + offset)[1] << 8);
}



u32
File::GetU32LE(u32 offset) const
{
    return ((u8*)m_Buffer + offset)[0] | (((u8*)m_Buffer + offset)[1] << 8) | (((u8*)m_Buffer + offset)[2] << 16) | (((u8*)m_Buffer + offset)[3] << 24);
}