#include <sstream>
#include <format>
#include "FieldModel.h"
#include "tiny_gltf.h"

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
FieldModel::Export(File* model_file, Vram* vram, const int file_id, std::unordered_map<int, EntityData> entities)
{
    MeshData data;
    data.name = std::format("{:04d}", file_id);
    data.tex_width = 4096;
    data.tex_height = 512;

    Logger* export_text = new Logger("exported/debug/" + data.name + "_field.txt");

    VectorTexForGen textures;

    int number_of_models = model_file->GetU32LE(0x00);

    tinygltf::Model m;
    tinygltf::Scene scene;
    tinygltf::Asset asset;

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

        // Add object to scene
        tinygltf::Mesh mesh;
        tinygltf::Primitive primitive;
        tinygltf::Node node;
        tinygltf::Buffer buffer1;
        tinygltf::Buffer buffer2;
        tinygltf::Buffer buffer3;
        tinygltf::BufferView bufferView1;
        tinygltf::BufferView bufferView2;
        tinygltf::BufferView bufferView3;
        tinygltf::Accessor accessor1;
        tinygltf::Accessor accessor2;
        tinygltf::Accessor accessor3;

        int vidx = 0;
        for (int p : modelData.polygons) {
            for (int j = 0; j < p; j++) {
                u16 fid = (u16)modelData.indices[vidx++];
                for (u8* p = (u8*)&fid; p <= ((u8*)(&fid))+1; p++) {
                    buffer1.data.push_back(*p);
                }
            }
        }

        //auto objlogger = new Logger("exported/models/field_maps/" + data.name + "/" + std::to_string(i) + ".obj");
        //std::stringstream str;

        for (int v = 0; v < modelData.vertices.size() / 3; v++) {
            //str << "v " << std::to_string(modelData.vertices[v * 3]) << " " << std::to_string(modelData.vertices[v * 3 + 1]) << " " << std::to_string(modelData.vertices[v * 3 + 2]) << std::endl;
            for (int vi = 0; vi < 3; vi++) {
                float value = modelData.vertices[v * 3 + vi];
                for (u8* p = (u8*)&value; p <= ((u8*)(&value)) + 3; p++) {
                    buffer2.data.push_back(*p);
                }
            }
        }

        for (int v = 0; v < modelData.uvs.size() / 2; v++) {
            for (int vi = 0; vi < 2; vi++) {
                //str << "vt " << std::to_string(modelData.uvs[v * 2]) << " " + std::to_string(modelData.uvs[v * 2 + 1]) << " 0" << std::endl;
                float value = modelData.uvs[v * 2 + vi];
                for (u8* p = (u8*)&value; p <= ((u8*)(&value)) + 3; p++) {
                    buffer3.data.push_back(*p);
                }
            }
        }

        bufferView1.buffer = i * 3 + 0;
        bufferView1.byteOffset = 0;
        bufferView1.byteLength = vidx * sizeof(u16);
        bufferView1.target = TINYGLTF_TARGET_ELEMENT_ARRAY_BUFFER;

        bufferView2.buffer = i * 3 + 1;
        bufferView2.byteOffset = 0;
        bufferView2.byteLength = vidx * 3 * sizeof(float);
        bufferView2.target = TINYGLTF_TARGET_ARRAY_BUFFER;

        bufferView3.buffer = i * 3 + 2;
        bufferView3.byteOffset = 0;
        bufferView3.byteLength = vidx * 2 * sizeof(float);
        bufferView3.target = TINYGLTF_TARGET_ARRAY_BUFFER;

        // Describe the layout of bufferView1, the indices of the vertices
        accessor1.bufferView = i * 3 + 0;
        accessor1.byteOffset = 0;
        accessor1.componentType = TINYGLTF_COMPONENT_TYPE_UNSIGNED_SHORT;
        accessor1.count = vidx;
        accessor1.type = TINYGLTF_TYPE_SCALAR;

        // Describe the layout of bufferView2, the vertices themself
        accessor2.bufferView = i * 3 + 1;
        accessor2.byteOffset = 0;
        accessor2.componentType = TINYGLTF_COMPONENT_TYPE_FLOAT;
        accessor2.count = vidx;
        accessor2.type = TINYGLTF_TYPE_VEC3;

        accessor3.bufferView = i * 3 + 2;
        accessor3.byteOffset = 0;
        accessor3.componentType = TINYGLTF_COMPONENT_TYPE_FLOAT;
        accessor3.count = vidx;
        accessor3.type = TINYGLTF_TYPE_VEC2;

        // Build the mesh primitive and add it to the mesh
        primitive.indices = i * 3 + 0;                 // The index of the accessor for the vertex indices
        primitive.attributes["POSITION"] = i * 3 + 1;  // The index of the accessor for positions
        primitive.attributes["TEXCOORD_0"] = i * 3 + 2;  // The index of the accessor for texcoords
        primitive.material = 0;
        primitive.mode = TINYGLTF_MODE_TRIANGLES;
        mesh.primitives.push_back(primitive);

        // Other tie ups
        m.buffers.push_back(buffer1);
        m.buffers.push_back(buffer2);
        m.buffers.push_back(buffer3);
        m.bufferViews.push_back(bufferView1);
        m.bufferViews.push_back(bufferView2);
        m.bufferViews.push_back(bufferView3);
        m.accessors.push_back(accessor1);
        m.accessors.push_back(accessor2);
        m.accessors.push_back(accessor3);

        scene.nodes.push_back(i); // Default scene
        m.scenes.push_back(scene);
        m.meshes.push_back(mesh);
        node.mesh = i;
        if (entities.count(i)) {
            EntityData& e = entities[i];
            node.translation = {e.pos[0], e.pos[1], e.pos[2]};
            //node.rotation = { e.pos[0], e.pos[1], e.pos[2] };

            double cr = cos(e.rot[0]* 0.5);
            double sr = sin(e.rot[0] * 0.5);
            double cp = cos(e.rot[1] * 0.5);
            double sp = sin(e.rot[1] * 0.5);
            double cy = cos(e.rot[2] * 0.5);
            double sy = sin(e.rot[2] * 0.5);

            node.rotation = {
                sr * cp * cy - cr * sp * sy,
                cr * sp * cy + sr * cp * sy,
                cr * cp * sy - sr * sp * cy,
                cr * cp * cy + sr * sp * sy
            };
        }
        m.nodes.push_back(node);
    }
    
    asset.version = "2.0";
    asset.generator = "tinygltf";
    m.asset = asset;

    tinygltf::Material mat;
    mat.pbrMetallicRoughness.baseColorTexture.index = 0;
    mat.pbrMetallicRoughness.metallicFactor = 0;
    mat.pbrMetallicRoughness.roughnessFactor = 0;

    tinygltf::Value::Object spec;
    spec["specularFactor"] = tinygltf::Value(0.f);
    spec["specularColorFactor"] = tinygltf::Value({ tinygltf::Value(0.f), tinygltf::Value(0.f), tinygltf::Value(0.f) });
    mat.extensions["KHR_materials_specular"] = tinygltf::Value(spec);
    mat.extensions["KHR_materials_unlit"] = tinygltf::Value();
    mat.doubleSided = false;
    mat.alphaMode = "MASK";
    mat.name = data.name;
    m.materials.push_back(mat);

    tinygltf::Texture tex;
    tex.sampler = 0;
    tex.source = 0;
    m.textures.push_back(tex);

    tinygltf::Sampler sampler;
    sampler.magFilter = TINYGLTF_TEXTURE_FILTER_NEAREST;
    sampler.minFilter = TINYGLTF_TEXTURE_FILTER_NEAREST;
    m.samplers.push_back(sampler);

    tinygltf::Image image;
    image.uri = data.name + ".png";
    image.name = data.name;
    m.images.push_back(image);

    // Save it to a file
    tinygltf::TinyGLTF gltf;
    gltf.WriteGltfSceneToFile(&m, "exported/models/field_maps/" + data.name + "/" + data.name + ".gltf",
        false, // embedImages
        true, // embedBuffers
        true, // pretty print
        false); // write binary

    // create and export textures for model
    if (textures.size() > 0)
    {
        CreateTexture(vram, data, "exported/models/field_maps/" + data.name + "/" + data.name + ".png", textures);
    }



    //CreateMaterial("xeno/model/" + data.name, "exported/models/field_maps/" + data.name + "/" + data.name + ".material", (textures.size() > 0) ? "models/field_maps/" + data.name + "/" + data.name + ".png" : "", "", "");


    delete export_text;
}