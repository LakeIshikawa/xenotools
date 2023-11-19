#pragma once
#include "File.h"

class FieldPackFile : public File
{
public:
    FieldPackFile(const std::string& file);
    virtual ~FieldPackFile();
    File* Extract(u32 file_number);
    void GetVramTex(const unsigned int tex_id, unsigned int& vram_u, unsigned int& vram_v);
};