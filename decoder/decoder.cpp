#include <iostream>     //cout
#include <fstream>      //file rd/wr
#include <string>       //string、getline()
#include <sstream>      //stringstream
#include <algorithm>    //transform()

#define INSTR_NUM 2
#define AR_NUM 8
#define INSTR_ADD 0
#define INSTR_LOAD 1


using namespace std;

string stream_v;
ofstream outfile;
ifstream infile;
int line_cnt = 0;

//instr_num=2
string instr[2] = { "ADD","LOAD" };
string AR[8] = { "R0","R1","R2","R3","R4","R5","R6","R7" };


class judge
{
public:
    string write_buffer;
    string buffer = { "00000" };
    bool FLAG = false;
    string::size_type findn = string::npos;
    void judgeinstr(void);
    void instr_add(void);
    void instr_add_casex1(string mod);
    void instr_add_casex2(string mod);
};


void judge::judgeinstr(void)
{
    findn = stream_v.find(" ");
    if (findn != string::npos)
    {
        bool is_instr=false;
        buffer = stream_v.substr(0, findn);
        for (int cnt = 0;cnt < INSTR_NUM;cnt++)
        {
            if (buffer == instr[cnt])
            {
                is_instr = true;
                switch (cnt)
                {
                case 0:
                    instr_add();
                    return;
                case 1:
                    return;
                default:
                    is_instr = false;
                    return;
                }
            }
        }
        if (is_instr == false)
            outfile << "undifined instruction" << endl;
    }
    else
    {
        outfile << "undifined instruction" << endl;
    }
}

void judge::instr_add(void)
{
    write_buffer.append("00001");
    stream_v.erase(0, stream_v.find(" ") + 1);
    //判断第一个寄存器
    findn = stream_v.find(" ");
    FLAG=false;
    if (findn != string::npos)
    {
        buffer = stream_v.substr(0, findn);
        for (int cnt = 0; cnt < AR_NUM; cnt++)
        {
            if (buffer == AR[cnt])
            {
                FLAG = true;
                switch (cnt)
                {
                    case 0:
                        instr_add_casex1("00000");
                        return;
                    case 1:
                        instr_add_casex1("00001");
                        return;
                    case 2:
                        instr_add_casex1("00010");
                        return;
                    case 3:
                        instr_add_casex1("00011");
                        return;
                    case 4:
                        instr_add_casex1("00100");
                        return;
                    case 5:
                        instr_add_casex1("00101");
                        return;
                    case 6:
                        instr_add_casex1("00110");
                        return;
                    case 7:
                        instr_add_casex1("00111");
                        return;
                    default:
                        FLAG = false;
                        return;
                }
            }
        }
        if (FLAG == false)
            outfile << "undifined instruction" << endl;
    }
    else
    {
        outfile << "undifined instruction" << endl;
    }
}

void judge::instr_add_casex1(string mod)
{
    write_buffer.append(mod);
    stream_v.erase(0, stream_v.find(" ") + 1);
    findn = stream_v.find(" ");
    //判断第二个寄存器
    FLAG = false;
    if (findn != string::npos)
    {
        buffer = stream_v.substr(0, findn);
        for (int cnt = 0;cnt < AR_NUM;cnt++)
        {   
            if (buffer == AR[cnt])
            {
                FLAG = true;
                switch (cnt)
                {
                case 0:
                    instr_add_casex2("000");
                    return;
                case 1:
                    instr_add_casex2("001");
                    return;
                case 2:
                    instr_add_casex2("010");
                    return;
                case 3:
                    instr_add_casex2("011");
                    return;
                case 4:
                    instr_add_casex2("100");
                    return;
                case 5:
                    instr_add_casex2("101");
                    return;
                case 6:
                    instr_add_casex2("110");
                    return;
                case 7:
                    instr_add_casex2("111");
                    return;
                }
            }
        }
    }
    else
    {
        outfile << "undifined instruction" << endl;
    }
}

void judge::instr_add_casex2(string mod)
{
    write_buffer.append(mod);
    stream_v.erase(0, stream_v.find(" ") + 1);
    findn = stream_v.find(";");
    //判断第三个寄存器
    FLAG = false;
    if (findn != string::npos)
    {
        buffer = stream_v.substr(0, findn);
        for (int cnt = 0;cnt < AR_NUM;cnt++)
        {
            if (buffer == AR[cnt])
            {
                FLAG = true;
                switch (cnt)
                {
                case 0:
                    write_buffer.append("000");
                    return;
                case 1:
                    write_buffer.append("001");
                    return;
                case 2:
                    write_buffer.append("010");
                    return;
                case 3:
                    write_buffer.append("011");
                    return;
                case 4:
                    write_buffer.append("100");
                    return;
                case 5:
                    write_buffer.append("101");
                    return;
                case 6:
                    write_buffer.append("110");
                    return;
                case 7:
                    write_buffer.append("111");
                    return;
                default:
                    FLAG = false;
                    return;
                }
            }
        }
    }
    else
    {
        outfile << "undifined instruction" << endl;
    }
}

int main()
{
    infile.open(".//input.txt");
    outfile.open(".//output.txt");
    outfile.clear();
    while (getline(infile, stream_v))
    {
        judge judge_object;
        judge_object.judgeinstr();
        if (judge_object.FLAG != false)
        {
            // outfile << judge_object.write_buffer;
            // outfile << endl;

            //二进制转十六进制
            string hex;
            stringstream ss;
            ss << std::hex << stoi(judge_object.write_buffer, nullptr, 2);
            ss >> hex;
            transform(hex.begin(), hex.end(), hex.begin(), ::toupper);
            if (hex.length() < 4)
                hex.insert(0, "0");
            outfile << hex << endl;
        }
    }
    infile.close();
    outfile.close();
    return 0;
}