#pragma once

#include "File.h"

class DialogFile : public File
{
public:
    DialogFile(File* pFile);
    virtual ~DialogFile();

    void GetDialogs(const int file_id);
};
