#include <sstream>

#include "Logger.h"
#include "FileSystem.h"

Logger* LOGGER = NULL; // global and accessable from anywhere in our program



std::string
HexToString(int value, unsigned short width, char fill)
{
    std::stringstream stream;
    stream.width(width);
    stream.fill(fill);
    stream.setf(std::ios::hex, std::ios::basefield);
    stream << value;
    return stream.str();
}



std::string
BoolToString(bool value)
{
    return std::to_string(value);
}



std::string
IntToString(int value)
{
    return std::to_string(value);
}



std::string
FloatToString(float value)
{
    return std::to_string(value);
}



Logger::Logger(const std::string& logFileName) :
    m_LogFile(logFileName)
{
    FILESYSTEM->RemoveFile(m_LogFile);
}



Logger::~Logger()
{
}



void
Logger::Log(const std::string& text)
{
    FILESYSTEM->WriteFile(m_LogFile, text.c_str(), (unsigned int)text.size());
}



void
Logger::LogW(const std::string& text)
{
    FILESYSTEM->WriteFile(m_LogFile, text.c_str(), (unsigned int)text.size() * 2);
}



void
Logger::Log(std::vector< unsigned char >& text)
{
    unsigned char* temp = new unsigned char[text.size()];
    for (unsigned int i = 0; i < text.size(); ++i)
    {
        temp[i] = text[i];
    }

    FILESYSTEM->WriteFile(m_LogFile, temp, (unsigned int)text.size());

    delete[] temp;
}