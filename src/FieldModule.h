#pragma once

class FieldModule
{
public:
    FieldModule();
    virtual ~FieldModule();
    void LoadMap(const int file_id);

    void Update(float delta);
};
