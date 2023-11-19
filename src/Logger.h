#pragma once

#include <string>
#include <iostream>
#include <vector>

#define LOG_ERROR( message ) std::cerr << "[ERROR] " << std::string( __FILE__ ) << " " << std::to_string( __LINE__ ) << ": " << message
#define LOG_WARNING( message ) std::cerr << "[WARNING] " << std::string( __FILE__ ) << " " << std::to_string( __LINE__ ) << ": " << message
#define LOG_TRIVIAL( message ) std::cout << message

std::string HexToString(int value, unsigned short width, char fill);
std::string BoolToString(bool value);
std::string IntToString(int value);
std::string FloatToString(float value);



class Logger
{
public:
    explicit Logger(const std::string& logFileName);
    virtual ~Logger();

    void     Log(const std::string& text);
    void     LogW(const std::string& text);
    void     Log(std::vector<unsigned char>& text);

private:
    std::string m_LogFile;
};



extern Logger* LOGGER;
