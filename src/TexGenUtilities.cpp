#include "TexGenUtilities.h"

#include "FileSystem.h"
#include "Logger.h"
#include "lodepng.h"


void
CreateTextureFromVram(std::vector<unsigned char>& pb, Vram* vram, const int start_x, const int start_y, const int width, const int height, const int clut_x, const int clut_y, const int texture_x, const int texture_y, const BPP bpp, const bool transparency, int rowPitch)
{
    for (u32 y = 0; y < height; ++y)
    {
        u8* data = (&pb[0]) + (y + start_y) * rowPitch;

        for (u32 x = 0; x < width; ++x)
        {
            if (bpp == BPP_4)
            {
                u8 pixel = vram->GetU8(texture_x * 2 + x / 2, texture_y + y);

                u16 clut1 = vram->GetU16(clut_x * 2 + (pixel & 0xf) * 2, clut_y);
                u16 clut2 = vram->GetU16(clut_x * 2 + (pixel >> 4) * 2, clut_y);

                u32 ogre_pixel1 = (((clut1 & 0x1f) * 255 / 31) << 0x18) | ((((clut1 >> 5) & 0x1f) * 255 / 31) << 0x10) | ((((clut1 >> 10) & 0x1f) * 255 / 31) << 0x8) | 0;

                u8 stp = (clut1 & 0x8000) >> 15;
                u8 alpha1 = AddTransparency(ogre_pixel1, transparency, stp);

                u32 ogre_pixel2 = (((clut2 & 0x1f) * 255 / 31) << 0x18) | ((((clut2 >> 5) & 0x1f) * 255 / 31) << 0x10) | ((((clut2 >> 10) & 0x1f) * 255 / 31) << 0x8) | 0;

                stp = (clut2 & 0x8000) >> 15;
                u8 alpha2 = AddTransparency(ogre_pixel2, transparency, stp);

                data[(start_x + x) * 4] = (clut1 & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 1] = ((clut1 >> 5) & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 2] = ((clut1 >> 10) & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 3] = alpha1;
                ++x;
                data[(start_x + x) * 4] = (clut2 & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 1] = ((clut2 >> 5) & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 2] = ((clut2 >> 10) & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 3] = alpha2;
            }
            else if (bpp == BPP_8)
            {
                u8 pixel = vram->GetU8(texture_x * 2 + x, texture_y + y);
                u16 clut = vram->GetU16(clut_x * 2 + pixel * 2, clut_y);

                u32 ogre_pixel = (((clut & 0x1f) * 255 / 31) << 0x18) | ((((clut >> 5) & 0x1f) * 255 / 31) << 0x10) | ((((clut >> 10) & 0x1f) * 255 / 31) << 0x8) | 0;

                u8 stp = (clut & 0x8000) >> 15;
                u8 alpha = AddTransparency(ogre_pixel, transparency, stp);

                data[(start_x + x) * 4] = (clut & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 1] = ((clut >> 5) & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 2] = ((clut >> 10) & 0x1f) * 255 / 31;
                data[(start_x + x) * 4 + 3] = alpha;
            }
            else if (bpp == BPP_BLACK)
            {
                data[(start_x + x) * 4] = 0xff;
                data[(start_x + x) * 4 + 1] = 0xff;
                data[(start_x + x) * 4 + 2] = 0xff;
                data[(start_x + x) * 4 + 3] = 0xff;
            }
        }
    }
}



void
CreateTexture(Vram* vram, const MeshData& mesh_data, const std::string& texture_file_name, const VectorTexForGen& textures)
{
   /* Ogre::TexturePtr ptex;
    Ogre::HardwarePixelBufferSharedPtr buffer;
    ptex = Ogre::TextureManager::getSingleton().createManual("DynaTex", "General", Ogre::TEX_TYPE_2D, mesh_data.tex_width, mesh_data.tex_height, 0, Ogre::PF_R8G8B8A8, Ogre::TU_STATIC);
    buffer = ptex->getBuffer(0, 0);
    buffer->lock(Ogre::HardwareBuffer::HBL_DISCARD);
    const Ogre::PixelBox& pb = buffer->getCurrentLock();

    for (int i = 0; i < textures.size(); ++i)
    {
        LOGGER->Log("CreateTexture palette_x=\"" + Ogre::StringConverter::toString(textures[i].palette_x) + "\" palette_y=\"" + Ogre::StringConverter::toString(textures[i].palette_y) + "\" bpp=\"" + Ogre::StringConverter::toString(textures[i].bpp) + "\".");
        CreateTextureFromVram(pb, vram, textures[i].start_x, textures[i].start_y, 256, 256, textures[i].palette_x, textures[i].palette_y, textures[i].texture_x, textures[i].texture_y, textures[i].bpp, true);
    }

    Ogre::Image image;
    image.loadDynamicImage((Ogre::uchar*)pb.data, mesh_data.tex_width, mesh_data.tex_height, Ogre::PF_R8G8B8A8);
    image.save(texture_file_name);
    buffer->unlock();*/

    std::vector<unsigned char> pb;
    pb.resize(mesh_data.tex_height * mesh_data.tex_width * 4);
    for (int i = 0; i < textures.size(); ++i)
    {
        LOGGER->Log("CreateTexture palette_x=\"" + std::to_string(textures[i].palette_x) + "\" palette_y=\"" + std::to_string(textures[i].palette_y) + "\" bpp=\"" + std::to_string(textures[i].bpp) + "\".");
        CreateTextureFromVram(pb, vram, textures[i].start_x, textures[i].start_y, 256, 256, textures[i].palette_x, textures[i].palette_y, textures[i].texture_x, textures[i].texture_y, textures[i].bpp, true, mesh_data.tex_width*4);
    }

    FILESYSTEM->mkdirs(texture_file_name);
    unsigned error = lodepng::encode(texture_file_name, pb, mesh_data.tex_width, mesh_data.tex_height);
}



//void
//CreateMaterial(const std::string& material_name, const std::string& material_file_name, const std::string& texture_name, const std::string& vertex_program, const std::string& fragment_program)
//{
//    Ogre::MaterialPtr material = Ogre::MaterialManager::getSingleton().create(material_name, "General");
//    Ogre::Technique* tech = material->getTechnique(0);
//    Ogre::Pass* pass1 = tech->getPass(0);
//    pass1->setVertexColourTracking(Ogre::TVC_AMBIENT);
//    //pass1->setCullingMode(Ogre::CULL_NONE);
//    if (texture_name != "")
//    {
//        pass1->setAlphaRejectFunction(Ogre::CMPF_GREATER);
//        pass1->setAlphaRejectValue(0);
//        Ogre::TextureUnitState* tex = pass1->createTextureUnitState();
//        tex->setTextureName(texture_name);
//        tex->setNumMipmaps(-1);
//        tex->setTextureFiltering(Ogre::TFO_NONE);
//    }
//
//    if (vertex_program != "")
//    {
//        pass1->setVertexProgram(vertex_program, true);
//    }
//
//    if (fragment_program != "")
//    {
//        pass1->setFragmentProgram(fragment_program, true);
//    }
//
//    Ogre::MaterialSerializer mat;
//    mat.exportMaterial(material, material_file_name);
//}



void
AddTexture(TexForGen& texture, const MeshData& data, VectorTexForGen& textures, Logger* logger)
{
    for (int i = 0; i < textures.size(); ++i)
    {
        if (texture == textures[i])
        {
            texture.start_x = textures[i].start_x;
            texture.start_y = textures[i].start_y;
            return;
        }
    }

    if (logger != NULL)
    {
        //logger->Log("New Texture: X:" + ToHexString(texture.texture_x, 4, '0') + ", Y:" + ToHexString(texture.texture_y, 4, '0') + ", CLUTX:" + ToHexString(texture.palette_x, 4, '0') + ", CLUTY:" + ToHexString(texture.palette_y, 4, '0') + ", bpp:" + ToHexString(texture.bpp, 4, '0') + "\n");
    }

    float start_x = 0;
    float start_y = 0;

    if (textures.size() > 0)
    {
        start_x = (float)textures[textures.size() - 1].start_x;
        start_y = (float)textures[textures.size() - 1].start_y;

        if (start_x + 256 >= data.tex_width)
        {
            if (start_y + 256 >= data.tex_height)
            {
                if (logger != NULL)
                {
                    logger->Log("[ERROR] Can't add anymore textures. Increase tex size.\n");
                }
                return;
            }

            start_x = 0;
            start_y += 256;
        }
        else
        {
            start_x += 256;
        }
    }
    texture.start_x = (int)start_x;
    texture.start_y = (int)start_y;
    textures.push_back(texture);

    if (logger != NULL)
    {
        //logger->Log("Startx:" + ToHexString(texture.start_x, 4, '0') + ", Starty:" + ToHexString(texture.start_y, 4, '0') + "\n");
    }
}



u8
AddTransparency(u32& colour, const bool transparency, const bool stp)
{
    if (transparency == false)
    {
        if (stp == false && (colour & 0xffffff00) == 0)
        {
            return 0;
        }
        else
        {
            return 255;
        }
    }
    else
    {
        if (stp == false && (colour & 0xffffff00) == 0)
        {
            return 0;
        }
        else if (stp == false && (colour & 0xffffff00) != 0)
        {
            return 255;
        }
        else if (stp == true && (colour & 0xffffff00) == 0)
        {
            return 255;
        }
        else if (stp == true && (colour & 0xffffff00) != 0)
        {
            return 255 / 4;
        }
    }

    return 0;
}