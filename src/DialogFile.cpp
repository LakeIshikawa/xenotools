#include "DialogFile.h"
#include "Logger.h"

#include "TextParse.h"



DialogFile::DialogFile(File* pFile) :
    File(pFile)
{
}



DialogFile::~DialogFile()
{
}




void
DialogFile::GetDialogs(const int file_id)
{
    Logger* expt = new Logger("expted/debug/0" + IntToString(file_id) + "_7_dialogs.txt");

    u32 number_of_dialogs = GetU32LE(0x00) + 1;

    std::vector< unsigned char > dialog;
    dialog.push_back(0xff);
    dialog.push_back(0xfe);
    expt->Log(dialog);
    dialog.clear();

    for (u32 i = 0; i < number_of_dialogs; ++i)
    {
        int size_offset = 0x04 + number_of_dialogs * 0x02 + i * 0x02;
        int data_offset = GetU16LE(0x04 + i * 0x02);

        expt->Log(dialog);
        dialog.clear();
        expt->LogW("<Dialog id=0x" + HexToString(i, 2, '0') + " ");
        expt->LogW("width=" + IntToString(GetU8(size_offset + 0)) + ", height=" + IntToString(GetU8(size_offset + 1)) + ">\n");

        TextParse(expt, this, data_offset);
    }
}