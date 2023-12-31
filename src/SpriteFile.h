#pragma once

#include <vector>
#include "File.h"
#include "Vram.h"
#include "FieldPackFile.h"



struct Tile
{
    u8 tex_x;
    u8 tex_y;
    s16 x;
    s16 y;
    s8 width;
    s8 height;
};

struct Frame
{
    std::vector< Tile > tile;
};

struct Sprite
{
    std::vector< Frame > frame;
};



class SpriteFile : public File
{
public:
    SpriteFile(File* file, FieldPackFile* field_file, Vram* vram, const int file_id, const int sprite_id);
    virtual ~SpriteFile();

    //void Initialise();

    //void Update(float delta);
    //void UpdateGeometry();

    //void CreateVertexBuffer();
    //void DestroyVertexBuffer();

private:
    Sprite m_Sprite;
    size_t m_NumberOfFrames;
    size_t m_FrameId;
    float m_Timer;
};
