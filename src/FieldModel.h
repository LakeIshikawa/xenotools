#pragma once
#include <unordered_map>
#include "File.h"
#include "Vram.h"

// export entities
struct EntityData {
    float pos[3];
    float rot[3];
};

class FieldModel
{
public:
    FieldModel();
    virtual ~FieldModel();

    void Export(File* model_file, Vram* vram, const int file_id, std::unordered_map<int, EntityData> entities);
};
