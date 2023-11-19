#pragma once

#include "File.h"
#include "Logger.h"
#include "TexGenUtilities.h"

struct ModelData {
    std::vector<int> polygons;
    std::vector<float> vertices;
    std::vector<float> vcolors;
    std::vector<float> uvs;
    std::vector<float> normals;
    std::vector<u32> indices;
};

class ModelFile : public File
{
public:
    ModelFile(const std::string& file);
    ModelFile(File* file);
    ModelFile(File* file, const u32 offset, const u32 length);
    ModelFile(u8* buffer, const u32 offset, const u32 length);
    virtual ~ModelFile();

    void GetModel(ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures, Logger* export_text);
    void GetModelPart(const int part_id, ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures, const int bone_id);

private:
    int LoadPoly_01_03_05_07(ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures);
    int LoadPoly_00_02_04_06(ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures);
    int LoadPoly_09_0b_0d_0f(ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures);
    int LoadPoly_08_0a_0c_0e(ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures);

    int TexSettings();
    void SetTexPageSettings();
    void SetClutSettings();

    Logger* m_ExportLog;

    int m_LightType;
    int m_PointerToTextureData;
    int m_PointerToMeshData;
    int m_PointerToVertexData;

    u16 m_CurrentClut;
    u16 m_CurrentTexPage;
};
