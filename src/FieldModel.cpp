#include <sstream>
#include <format>
#include "FieldModel.h"

#include "ModelFile.h"
#include "File.h"
#include "Logger.h"
#include "Vram.h"


FieldModel::FieldModel()
{
}



FieldModel::~FieldModel()
{
}



void
FieldModel::Export(File* model_file, Vram* vram, const int file_id)
{
    MeshData data;
    data.name = std::format("{:04d}", file_id);
    data.tex_width = 4096;
    data.tex_height = 512;

    Logger* export_text = new Logger("exported/debug/" + data.name + "_field.txt");

    VectorTexForGen textures;

    int number_of_models = model_file->GetU32LE(0x00);

    for (int i = 0; i < number_of_models; ++i)
    {
        //Ogre::MeshPtr mesh = Ogre::MeshManager::getSingleton().create(data.name + Ogre::StringConverter::toString(i) + "export", "General");
        //Ogre::SkeletonPtr skeleton = Ogre::SkeletonManager::getSingleton().create(data.name + Ogre::StringConverter::toString(i) + "export", "General");
        //Ogre::Bone* root1 = skeleton->createBone("0", 0);
        //Ogre::Bone* root2 = skeleton->createBone("1", 1);
        //root1->addChild(root2);

        //Ogre::Animation* anim = skeleton->createAnimation("Idle", 1);
        //Ogre::NodeAnimationTrack* track1 = anim->createNodeTrack(0, root1);
        //track1->removeAllKeyFrames();
        //Ogre::TransformKeyFrame* frame1 = track1->createNodeKeyFrame(0);

        int mesh_offset = model_file->GetU32LE(0x4 + i * 0x04);
        int mesh_next_offset = (i + 1 == number_of_models) ? model_file->GetFileSize() : model_file->GetU32LE(0x8 + i * 0x04);
        int mesh_size = mesh_next_offset - mesh_offset;

        ModelFile* mesh_file = new ModelFile(model_file, mesh_offset, mesh_size);
        ModelData modelData;
        mesh_file->GetModel(modelData, data, textures, export_text);
        delete mesh_file;


        //skeleton->optimiseAllAnimations();
        //Ogre::SkeletonSerializer skeleton_serializer;
        //skeleton_serializer.exportSkeleton(skeleton.getPointer(), "exported/models/field_maps/" + data.name + "/" + Ogre::StringConverter::toString(i) + ".skeleton");

        //// Update bounds
        //Ogre::AxisAlignedBox aabb(-999, -999, -999, 999, 999, 999);
        //mesh->_setBounds(aabb, false);
        //mesh->_setBoundingSphereRadius(999);

        //mesh->setSkeletonName("models/field_maps/" + data.name + "/" + Ogre::StringConverter::toString(i) + ".skeleton");

        //Ogre::MeshSerializer ser;
        //ser.exportMesh(mesh.getPointer(), "exported/models/field_maps/" + data.name + "/" + Ogre::StringConverter::toString(i) + ".mesh");

        // Export OBJ
        auto objlogger = new Logger("exported/models/field_maps/" + data.name + "/" + std::to_string(i) + ".obj");
        std::stringstream str;

        for (int v = 0; v < modelData.vertices.size() / 3; v++) {
            str << "v " << std::to_string(modelData.vertices[v * 3]) << " " << std::to_string(modelData.vertices[v * 3 + 1]) << " " << std::to_string(modelData.vertices[v * 3 + 2]) << std::endl;
        }
        str << std::endl;

        for (int v = 0; v < modelData.uvs.size() / 2; v++) {
            str << "vt " << std::to_string(modelData.uvs[v * 2]) << " " + std::to_string(modelData.uvs[v * 2 + 1]) << " 0" << std::endl;
        }
        str << std::endl;

        int vidx = 0;
        for (int p : modelData.polygons) {
            str << "f ";

            for (int j = 0; j < p; j++) {
                auto fid = std::to_string(modelData.indices[vidx++]);
                str << fid << "/" << fid << " ";
            }
            str << std::endl;
        }

        objlogger->Log(str.str());
        delete objlogger;
    }



    // create and export textures for model
    if (textures.size() > 0)
    {
        CreateTexture(vram, data, "exported/models/field_maps/" + data.name + "/" + data.name + ".png", textures);
    }



    //CreateMaterial("xeno/model/" + data.name, "exported/models/field_maps/" + data.name + "/" + data.name + ".material", (textures.size() > 0) ? "models/field_maps/" + data.name + "/" + data.name + ".png" : "", "", "");


    delete export_text;
}