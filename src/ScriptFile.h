#pragma once
#include "File.h"

class ScriptFile : public File
{
public:
    ScriptFile(File* pFile);
    virtual ~ScriptFile();

    void GetScripts(const int file_id);
    std::string GetEVariable(const u32 script_pointer);
    std::string GetFVariable(const u32 script_pointer);

    std::string GetU8Variable(const u32 script_pointer);
    std::string GetS16Variable(const u32 script_pointer);
    std::string GetU16Variable(const u32 script_pointer);

    std::string GetVF04Variable(const u32 script_pointer);
    std::string GetVF08Variable(const u32 script_pointer);
    std::string GetVF10Variable(const u32 script_pointer);
    std::string GetVF20Variable(const u32 script_pointer);
    std::string GetVF40Variable(const u32 script_pointer);
    std::string GetVF80Variable(const u32 script_pointer);
    std::string GetVVariable(const u32 script_pointer);
    std::string GetV80Variable(const u32 script_pointer);
};
