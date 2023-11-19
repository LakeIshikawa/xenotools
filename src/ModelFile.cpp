#include "ModelFile.h"
#include "Logger.h"
#include "TexGenUtilities.h"



ModelFile::ModelFile(const std::string& file) :
    File(file)
{
}



ModelFile::ModelFile(File* file, const u32 offset, const u32 length) :
    File(file, offset, length)
{
}



ModelFile::ModelFile(u8* buffer, const u32 offset, const u32 length) :
    File(buffer, offset, length)
{
}



ModelFile::ModelFile(File* file) :
    File(file)
{
}



ModelFile::~ModelFile()
{
}



void
ModelFile::GetModel(ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures, Logger* export_text)
{
    m_ExportLog = export_text;

    int number_of_parts = GetU32LE(0x0);

    m_ExportLog->Log("Model: number_of_parts: " + std::to_string(number_of_parts) + "\n");

    for (int part_id = 0; part_id < number_of_parts; ++part_id)
    {
        GetModelPart(part_id, modelData, meshData, textures, 0);
    }
}



void
ModelFile::GetModelPart(const int part_id, ModelData& modelData, const MeshData& meshData, VectorTexForGen& textures, const int bone_id)
{
    int pointer_to_part_header = 0x10 + part_id * 0x38;
    int number_of_poly_blocks = GetU16LE(pointer_to_part_header + 0x6);
    m_PointerToVertexData = GetU32LE(pointer_to_part_header + 0x08);
    m_PointerToMeshData = GetU32LE(pointer_to_part_header + 0x10);
    m_PointerToTextureData = GetU32LE(pointer_to_part_header + 0x14);

    m_ExportLog->Log(
        "    Part: " + std::to_string(part_id) + "\n" +
        "        number of poly blocks: " + std::to_string(number_of_poly_blocks) + "\n"
        "        pointer to polygon data: " + std::to_string(m_PointerToMeshData) + "\n"
        "        pointer to texture data: " + std::to_string(m_PointerToTextureData) + "\n"
    );

    for (int poly_block_id = 0; poly_block_id < number_of_poly_blocks; ++poly_block_id)
    {
        u8 polygon_type = GetU8(m_PointerToMeshData + 0);
        int number_of_polygons = GetU16LE(m_PointerToMeshData + 2);
        int number_of_triangles = number_of_polygons;
        if (polygon_type >= 0x08) // if quads
        {
            number_of_triangles *= 2;
        }

        m_PointerToMeshData += 4;

        m_ExportLog->Log(
            "            polygon type: 0x" +
            HexToString(polygon_type, 2, '0') +
            ", number of polygons: 0x" +
            HexToString(number_of_polygons, 4, '0') +
            "\n"
        );

        // Allocate and prepare vertex data
        const unsigned int vCount = static_cast<size_t>(number_of_triangles * 3);

        int lastIdx = 0;
        if (!modelData.indices.empty()) lastIdx = modelData.indices.back();
        
        // Index buffer
        for (unsigned int i = 1; i <= vCount; ++i)
        {
            modelData.indices.push_back(lastIdx + i);
        }

        m_LightType = 0;



        for (int poly_id = 0; poly_id < number_of_polygons; ++poly_id)
        {
            // textured triangle
            if (polygon_type == 0x01 || polygon_type == 0x03 || polygon_type == 0x05 || polygon_type == 0x07)
            {
                if (LoadPoly_01_03_05_07(modelData, meshData, textures) != 0)
                {
                    m_PointerToMeshData += 8;
                    m_PointerToTextureData += 8;
                }
                else
                {
                    --poly_id;
                    m_PointerToTextureData += 4;
                }
            }
            // monochrome triangle
            else if (polygon_type == 0x00 || polygon_type == 0x02 || polygon_type == 0x04 || polygon_type == 0x06)
            {
                if (LoadPoly_00_02_04_06(modelData, meshData, textures) != 0)
                {
                    m_PointerToMeshData += 8;
                    m_PointerToTextureData += 4;
                }
                else
                {
                    --poly_id;
                    m_PointerToTextureData += 4;
                }
            }
            // textured quad
            else if (polygon_type == 0x09 || polygon_type == 0x0b || polygon_type == 0x0d || polygon_type == 0x0f)
            {
                if (LoadPoly_09_0b_0d_0f(modelData, meshData, textures) != 0)
                {
                    m_PointerToMeshData += 8;
                    m_PointerToTextureData += 12;
                }
                else
                {
                    --poly_id;
                    m_PointerToTextureData += 4;
                }
            }
            // monochrome quad
            else if (polygon_type == 0x08 || polygon_type == 0x0a || polygon_type == 0x0c || polygon_type == 0x0e)
            {
                if (LoadPoly_08_0a_0c_0e(modelData, meshData, textures) != 0)
                {
                    m_PointerToMeshData += 8;
                    m_PointerToTextureData += 4;
                }
                else
                {
                    --poly_id;
                    m_PointerToTextureData += 4;
                }
            }
            else
            {
                m_ExportLog->Log("ERROR: polygon type \"" + std::to_string(polygon_type) + "\" not implemented.\n");
                break;
            }
        }

        //LOGGER->Log("Assign bones to vertexes\n");

        //int vertex_number = sub_mesh->vertexData->vertexCount;
        //for (int i = 0; i < vertex_number; ++i)
        //{
        //    Ogre::VertexBoneAssignment vba;
        //    vba.vertexIndex = i;
        //    vba.boneIndex = bone_id;
        //    vba.weight = 1.0f;
        //    sub_mesh->addBoneAssignment(vba);
        //}
    }
}



int
ModelFile::LoadPoly_01_03_05_07(ModelData& modelData, const MeshData& info, VectorTexForGen& textures)
{
    if (TexSettings() == 0)
    {
        return 0;
    }

    int offset_a = GetU16LE(m_PointerToMeshData + 0x0);
    int offset_b = GetU16LE(m_PointerToMeshData + 0x2);
    int offset_c = GetU16LE(m_PointerToMeshData + 0x4);

    modelData.polygons.push_back(3);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 04)) / 64.f);

    //m_ExportLog->Log("        polygon: A (" + Ogre::StringConverter::toString(a) + "), B (" + Ogre::StringConverter::toString(b) + "), C (" + Ogre::StringConverter::toString(c) + ").\n");

    int clut_x = (m_CurrentClut & 0x3f) * 16;
    int clut_y = (m_CurrentClut >> 0x6) & 0x1ff;
    int bpp = (m_CurrentTexPage >> 0x7) & 0x3;
    int vram_x = (m_CurrentTexPage & 0xf) * 64;
    int vram_y = ((m_CurrentTexPage & 0x10) >> 4) * 256;
    TexForGen texture;
    texture.palette_x = clut_x;
    texture.palette_y = clut_y;
    texture.texture_x = vram_x;
    texture.texture_y = vram_y;
    texture.bpp = (BPP)bpp;
    AddTexture(texture, info, textures, m_ExportLog);

    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x4) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x5) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x0) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x1) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x6) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x7) + texture.start_y) / (float)info.tex_height);

    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);

    return 1;
}



int
ModelFile::LoadPoly_00_02_04_06(ModelData& modelData, const MeshData& info, VectorTexForGen& textures)
{
    int offset_a = GetU16LE(m_PointerToMeshData + 0x0);
    int offset_b = GetU16LE(m_PointerToMeshData + 0x2);
    int offset_c = GetU16LE(m_PointerToMeshData + 0x4);

    modelData.polygons.push_back(3);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 04)) / 64.f);

    //m_ExportLog->Log("        polygon: A (" + Ogre::StringConverter::toString(a) + "), B (" + Ogre::StringConverter::toString(b) + "), C (" + Ogre::StringConverter::toString(c) + ").\n");

    int clut_x = (m_CurrentClut & 0x3f) * 16;
    int clut_y = (m_CurrentClut >> 0x6) & 0x1ff;
    int bpp = (m_CurrentTexPage >> 0x7) & 0x3;
    int vram_x = (m_CurrentTexPage & 0xf) * 64;
    int vram_y = ((m_CurrentTexPage & 0x10) >> 4) * 256;
    TexForGen texture;
    texture.palette_x = clut_x;
    texture.palette_y = clut_y;
    texture.texture_x = vram_x;
    texture.texture_y = vram_y;
    texture.bpp = (BPP)bpp;
    AddTexture(texture, info, textures, m_ExportLog);

    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);

    float r = GetU8(m_PointerToTextureData + 0x0) / 255.0f;
    float g = GetU8(m_PointerToTextureData + 0x1) / 255.0f;
    float b = GetU8(m_PointerToTextureData + 0x2) / 255.0f;
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);

    return 1;
}



int
ModelFile::LoadPoly_09_0b_0d_0f(ModelData& modelData, const MeshData& info, VectorTexForGen& textures)
{
    if (TexSettings() == 0)
    {
        return 0;
    }

    int offset_a = GetU16LE(m_PointerToMeshData + 0x0);
    int offset_b = GetU16LE(m_PointerToMeshData + 0x2);
    int offset_c = GetU16LE(m_PointerToMeshData + 0x4);
    int offset_d = GetU16LE(m_PointerToMeshData + 0x6);

    modelData.polygons.push_back(3);
    modelData.polygons.push_back(3);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_d * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_d * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_d * 0x8 + 04)) / 64.f);

    //m_ExportLog->Log("        polygon: A (" + Ogre::StringConverter::toString(a) + "), B (" + Ogre::StringConverter::toString(b) + "), C (" + Ogre::StringConverter::toString(c) + "), D (" + Ogre::StringConverter::toString(d) + ").\n");

    int clut_x = (m_CurrentClut & 0x3f) * 16;
    int clut_y = (m_CurrentClut >> 0x6) & 0x1ff;
    int bpp = (m_CurrentTexPage >> 0x7) & 0x3;
    int vram_x = (m_CurrentTexPage & 0xf) * 64;
    int vram_y = ((m_CurrentTexPage & 0x10) >> 4) * 256;
    TexForGen texture;
    texture.palette_x = clut_x;
    texture.palette_y = clut_y;
    texture.texture_x = vram_x;
    texture.texture_y = vram_y;
    texture.bpp = (BPP)bpp;
    AddTexture(texture, info, textures, m_ExportLog);

    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x4) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x5) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x8) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x9) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x6) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x7) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x6) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x7) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0x8) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0x9) + texture.start_y) / (float)info.tex_height);
    modelData.uvs.push_back((GetU8(m_PointerToTextureData + 0xa) + texture.start_x) / (float)info.tex_width);
    modelData.uvs.push_back(1.f - (GetU8(m_PointerToTextureData + 0xb) + texture.start_y) / (float)info.tex_height);

    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);
    modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f); modelData.vcolors.push_back(1.f);

    return 1;
}



int
ModelFile::LoadPoly_08_0a_0c_0e(ModelData& modelData, const MeshData& info, VectorTexForGen& textures)
{
    int offset_a = GetU16LE(m_PointerToMeshData + 0x0);
    int offset_b = GetU16LE(m_PointerToMeshData + 0x2);
    int offset_c = GetU16LE(m_PointerToMeshData + 0x4);
    int offset_d = GetU16LE(m_PointerToMeshData + 0x6);

    modelData.polygons.push_back(3);
    modelData.polygons.push_back(3);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_a * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_b * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_c * 0x8 + 04)) / 64.f);

    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_d * 0x8 + 00)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_d * 0x8 + 02)) / 64.f);
    modelData.vertices.push_back(static_cast<float>((s16)GetU16LE(m_PointerToVertexData + offset_d * 0x8 + 04)) / 64.f);

    //m_ExportLog->Log("        polygon: A (" + Ogre::StringConverter::toString(a) + "), B (" + Ogre::StringConverter::toString(b) + "), C (" + Ogre::StringConverter::toString(c) + "), D (" + Ogre::StringConverter::toString(d) + ").\n");

    int clut_x = (m_CurrentClut & 0x3f) * 16;
    int clut_y = (m_CurrentClut >> 0x6) & 0x1ff;
    int bpp = (m_CurrentTexPage >> 0x7) & 0x3;
    int vram_x = (m_CurrentTexPage & 0xf) * 64;
    int vram_y = ((m_CurrentTexPage & 0x10) >> 4) * 256;
    TexForGen texture;
    texture.palette_x = clut_x;
    texture.palette_y = clut_y;
    texture.texture_x = vram_x;
    texture.texture_y = vram_y;
    texture.bpp = (BPP)bpp;
    AddTexture(texture, info, textures, m_ExportLog);

    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    modelData.uvs.push_back(0.f);
    
    float r = GetU8(m_PointerToTextureData + 0x0) / 255.0f;
    float g = GetU8(m_PointerToTextureData + 0x1) / 255.0f;
    float b = GetU8(m_PointerToTextureData + 0x2) / 255.0f;
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);
    modelData.vcolors.push_back(r); modelData.vcolors.push_back(g); modelData.vcolors.push_back(b);

    return 1;
}



int
ModelFile::TexSettings()
{
    int tex_settings = GetU8(m_PointerToTextureData + 0x3);

    if (tex_settings == 0xc4)
    {
        SetTexPageSettings();
        return 0;
    }
    if (tex_settings == 0xc8)
    {
        SetClutSettings();
        return 0;
    }

    return 1;
}



void
ModelFile::SetTexPageSettings()
{
    //m_ExportLog->Log("    Tex page settings values 0x" + ToHexString(GetU16LE(m_PointerToTextureData), 4, '0') + ".\n");

    m_CurrentTexPage = GetU16LE(m_PointerToTextureData);

    /*
        if (w[8004f7ac] == 1)
        {
            m_CurrentTexPage = h(w[800589b0] | (hu[[800589a8]] & ffe0));
        }
        else if (V1 == 2)
        {
            m_CurrentTexPage = h(w[800589b0]);
        }
    */
}



void
ModelFile::SetClutSettings()
{
    //m_ExportLog->Log("    Clut settings values 0x" + ToHexString(GetU16LE(m_PointerToTextureData), 4, '0') + ".\n");

    m_CurrentClut = GetU16LE(m_PointerToTextureData);

    /*
        [800589ac] = h(hu[A0 + 0]);

        if (w[8004f7b0] == 0)
        {
            m_CurrentClut = h(w[800589b4] | (hu[[800589ac]] & 000f));
        }
    */
}