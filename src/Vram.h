#pragma once

#include <string>
#include "TypeDefine.h"

class Vram
{
public:
    Vram();
    virtual ~Vram();

    u16 GetWidth() const;
    u16 GetHeight() const;

    void Save(const std::string& file);

    void PutU8(u16 x, u16 y, u8 byte);
    u8 GetU8(u16 x, u16 y) const;
    void PutU16(u16 x, u16 y, u16 bytes);
    u16 GetU16(u16 x, u16 y) const;

private:
    u8  m_Vram[2048 * 512];

    u16 m_Width;
    u16 m_Height;
};
