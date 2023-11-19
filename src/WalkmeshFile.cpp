#include "WalkmeshFile.h"

#include "Utilities.h"

#include "Logger.h"
#include <sstream>
#include <format>
#include <map>


WalkmeshFile::WalkmeshFile(File* pFile) :
    File(pFile)
{
}



WalkmeshFile::~WalkmeshFile()
{
}



void
WalkmeshFile::GetWalkmesh(const int file_id)
{
    // numbers of subblock
    u32 walkmeshes = GetU32LE(0x00);

    for (unsigned int i = 0; i < walkmeshes; ++i)
    {
        std::vector<float> vertices;
        std::map<int, ModelData> meshes;
        int vidx = 1;

        //Logger* export_script = new Logger("exported/maps/field/" + std::format("{:04d}", file_id) + "_wm_" + std::to_string(i) + ".xml");
        //export_script->Log("<walkmesh>\n");

        //export_script->Log("    <block>\n");
        u32 block_size = GetU32LE(0x04 + i * 0x04);
        u32 block_start = GetU32LE(0x04 + 0x14 + i * 0x08 + 0x00);
        u32 block_vertex = GetU32LE(0x04 + 0x14 + i * 0x08 + 0x04);

        for (unsigned int j = 0; j < block_size; )
        {
            auto mat = GetU8(block_start + j + 0x0c);
            ModelData* mesh = nullptr;
            if (meshes.count(mat)) mesh = &meshes.at(mat); 
            else mesh = &(meshes.insert_or_assign(mat, ModelData()).first)->second;

            u16 a_offset = block_vertex + GetU16LE(block_start + j + 0x00) * 0x08;
            u16 b_offset = block_vertex + GetU16LE(block_start + j + 0x02) * 0x08;
            u16 c_offset = block_vertex + GetU16LE(block_start + j + 0x04) * 0x08;

            vertices.push_back((s16)GetU16LE(0x00 + a_offset) / 64.f); vertices.push_back((s16)GetU16LE(0x02 + a_offset) / 64.f); vertices.push_back((s16)GetU16LE(0x04 + a_offset) / 64.f);
            vertices.push_back((s16)GetU16LE(0x00 + c_offset) / 64.f); vertices.push_back((s16)GetU16LE(0x02 + c_offset) / 64.f); vertices.push_back((s16)GetU16LE(0x04 + c_offset) / 64.f);
            vertices.push_back((s16)GetU16LE(0x00 + b_offset) / 64.f); vertices.push_back((s16)GetU16LE(0x02 + b_offset) / 64.f); vertices.push_back((s16)GetU16LE(0x04 + b_offset) / 64.f);

            mesh->indices.push_back(vidx++);  mesh->indices.push_back(vidx++);  mesh->indices.push_back(vidx++);

            mesh->polygons.push_back(3);


            mesh->normals.push_back(mat); mesh->normals.push_back(mat); mesh->normals.push_back(mat);

            //triangle.access_side[0] = (s16)GetU16LE(block_start + j + 0x06);
            //triangle.access_side[1] = (s16)GetU16LE(block_start + j + 0x08);
            //triangle.access_side[2] = (s16)GetU16LE(block_start + j + 0x0a);

            //triangle.material = GetU8(block_start + j + 0x0c);

            //export_script->Log(
            //    "        <triangle material=\"" +
            //    IntToString(GetU8(block_start + j + 0x0c)) +
            //    "\"/>\n"
            //);

            //walkmesh->AddTriangle(triangle

            j += 0x0e;
        }

        //export_script->Log("    </block>\n");

        // Export OBJ
        auto objlogger = new Logger("exported/maps/field/" + std::format("{:04d}", file_id) + "_wm_" + std::to_string(i) + ".obj");
        std::stringstream str;

        for (int v = 0; v < vertices.size() / 3; v++) {
            str << "v " << std::to_string(vertices[v * 3]) << " " << std::to_string(vertices[v * 3 + 1]) << " " << std::to_string(vertices[v * 3 + 2]) << std::endl;
        }
        str << std::endl;

        int midx = 0;
        for (auto it : meshes) {
            str << "usemtl " << midx++ << std::endl;
            int vvidx = 0;
            for (int p : it.second.polygons) {
                str << "f ";

                for (int j = 0; j < p; j++) {
                    auto fid = std::to_string(it.second.indices[vvidx++]);
                    str << fid << " ";
                }
                str << std::endl;
            }
        }

        objlogger->Log(str.str());
        delete objlogger;
    }

    //export_script->Log("</walkmesh>");
    //delete export_script;

    // dump material
    int material_pointer = GetU32LE(0x04 + 0x10);
    File* file = new File(this, material_pointer, m_BufferSize - material_pointer);
    file->WriteFile("exported/debug/" + std::format("{:04d}", file_id) + "_1_walkmesh_material");
    delete file;
}