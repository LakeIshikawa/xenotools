#pragma once

#include "File.h"
#include "Vram.h"


class FieldModel
{
public:
    FieldModel();
    virtual ~FieldModel();

    void Export(File* model_file, Vram* vram, const int file_id);
};
