#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct CharMap;
void loadCharMap(const char* charmapFile, struct CharMap** charmap, size_t* charmapSize);
void decodeBinaryFile(const char* inputFile, const char* charmapFile, const char headerMode, const char footerMode);


int main(int argc, char *argv[]) {
    //system("chcp 65001 & cls");

    char *inputFile = NULL;
    char *charmapFile = NULL;
    char headerMode = 0;
    char footerMode = 0;

    if (argc == 1) {
        printf("No option, use \'transMsg.exe -help\' to see usage.\n");
        printf("Press Enter to exit...");
        getchar();
        return 1;
    }

    for(int i = 1; i < argc;i++)
    {
        if (strcmp(argv[i], "-i") == 0 && (i + 1) < argc) // 
        {
            inputFile = argv[i + 1];
            i++;
        }
        else if (strcmp(argv[i], "-c") == 0 && (i + 1) < argc) 
        {
            charmapFile = argv[i + 1];
            i++;
        }
        else if (strcmp(argv[i], "-h") == 0 && (i + 1) < argc) 
        {
            headerMode = strtol(argv[i + 1], NULL, 10);
            i++;
        }
        else if (strcmp(argv[i], "-f") == 0 && (i + 1) < argc) 
        {
            footerMode = strtol(argv[i + 1], NULL, 10);;
            i++;
        }
        else if ( i==1 && strcmp(argv[i], "-help") == 0) 
        {
            printf("TransMsg tool made by wokann.(Version 20240409)\n");
            printf("Usage:\n");
            printf("\n");
            printf("    transMsg.exe -i inputFile -c charmapFile -h headerMode -f footerMode\n");
            printf("\n");
            printf("Standard option:\n");
            printf("    -i [inputBinaryFile]        Files need to be decode.\n");
            printf("    -c [charmapFile]            Files used to transfer hex to char, must be utf-8 encoding.\n");
            printf("    -h [headerMode]             Modes which Files used in header.\n");
            printf("    -f [footerMode]             Modes which Files used in footer.\n");
            printf("Another option:\n");
            printf("    -help                       show commnd usage.\n");
            printf("Press Enter to exit...");
            getchar();
            return 1;
        }
        else 
        {
            printf("error option , use \'transMsg.exe -help\' to see usage.\n");
            printf("Press Enter to exit...");
            getchar();
            return 1;
        }
    }

    decodeBinaryFile(inputFile, charmapFile, headerMode, footerMode);

    return 0;
}

// 定义码表数据结构
struct CharMap
{
    unsigned int hexValue;
    char* utf8Char;
};

// 函数用于加载码表数据
void loadCharMap(const char* charmapFile, struct CharMap** charmap, size_t* charmapSize)
{
    FILE* file = fopen(charmapFile, "r");
    if (file == NULL)
    {
        perror("Charmap File open error.");
        exit(EXIT_FAILURE);
    }
    size_t size = 0;            //初始化码表大小
    struct CharMap* map = NULL; //初始化码表结构
    char line[256];
    while (fgets(line, sizeof(line), file) != NULL)
    {
        if (line[0] == '\n' || line[0] == '#'|| line[0] == ';')      // 跳过空行和注释
            continue;
        unsigned int hexValue;
        char utf8Char[256];
        char *newline = strchr(line, '\n');         // 寻找换行符
        if (newline != NULL)
            *newline = '\0';                        // 将换行符替换为字符串结束符
        char *delimiter = strchr(line, '=');        // 寻找等号分隔符
        if (delimiter != NULL)
        {
            *delimiter = '\0';                      // 将等号替换为字符串结束符
            if (sscanf(line, "%x", &hexValue) == 1) // 将等号前面的内容作为十六进制数值拷贝到hexValue
            {
                strcpy(utf8Char, delimiter + 1);    // 将等号后面的内容作为字符串拷贝到utf8Char
                size++;
                map = (struct CharMap*)realloc(map, size * sizeof(struct CharMap)); // 更新内存里map空间
                map[size - 1].hexValue = hexValue;  //存入码值
                map[size - 1].utf8Char = strdup(utf8Char); //存入码值对应字符
            }
        }
    }
    fclose(file);
    *charmap = map;         //写入码表
    *charmapSize = size;    //写入码表条数
}

// 函数用于根据码表解码二进制文件并写入文本文件
void decodeBinaryFile(const char* inputFile, const char* charmapFile, const char headerMode, const char footerMode) 
{
    //加载码表
    size_t charmapSize;
    struct CharMap* charmap;
    loadCharMap(charmapFile, &charmap, &charmapSize);   //读取码表，存入码值及对应字符

    //打开文本文件
    FILE* input = fopen(inputFile, "rb");
    if (input == NULL) 
    {
        perror("Input File open error.");
        return;
    }
    //获得文本文件名并创建同名.s文件
    char inputFileName[256];
    char outputFile[256];
    strcpy(inputFileName, inputFile);       //获取bin文件名
    inputFileName[strlen(inputFile)-4]=0;   //去掉.bin后缀，获得纯文件名
    strcpy(outputFile,inputFileName);       //拷贝至新文件名
    strcat(outputFile,".s");                //添加.s后缀
    FILE* output = fopen(outputFile, "w");  //创建并打开.s文件
    if (output == NULL)
    {
        perror("Output File create error.");
        return;
    }

    //获得子文件数量
    unsigned char tempCount1,tempCount2;
    fseek(input, 2, SEEK_SET);
    tempCount1 = fgetc(input);
    tempCount2 = fgetc(input);
    unsigned int textsCount = ((tempCount2<<8)|tempCount1) / 2;
    //文件头
    fprintf(output, ";文件头\n");
    fprintf(output, ".hword (EndOf%s - 4);除文件头外文件大小\n",inputFileName);
    if(textsCount == 0)
        fprintf(output, ".hword 0 ;文本正文起始地址\n",inputFileName);
    else
        fprintf(output, ".hword (%s_000 - 4) ;文本正文起始地址\n",inputFileName);
    //循环写入子文本偏移地址
    fprintf(output, ";子文本偏移地址,总计%d条文本\n",textsCount);
    for(int i = 0;i<textsCount;i++)
        fprintf(output, ".hword (%s_%03d -%s_000)\n",inputFileName,i,inputFileName);
    //循环写入子文本数据
    fprintf(output, "\n;文本正文\n");
    unsigned int Filesize, TextStart;
    unsigned int OffsetNow,OffsetNext;
    unsigned char temp1,temp2;
    fseek(input, 0, SEEK_SET);
    temp1 = fgetc(input);
    temp2 = fgetc(input);
    Filesize = ((temp2 << 8)|temp1) + 4;
    fseek(input, 2, SEEK_SET);
    temp1 = fgetc(input);
    temp2 = fgetc(input);
    TextStart = ((temp2 << 8)|temp1) + 4;
    for(int i = 0;i<textsCount;i++)
    {
        //获取第n、n+1条文本地址
        fseek(input,i*2 + 4,SEEK_SET);
        temp1 = fgetc(input);
        temp2 = fgetc(input);
        OffsetNow = ((temp2 << 8)|temp1) + TextStart;
        fseek(input,(i+1)*2 + 4,SEEK_SET);
        temp1 = fgetc(input);
        temp2 = fgetc(input);
        OffsetNext = ((temp2 << 8)|temp1) + TextStart;
        if (i == textsCount - 1)
            OffsetNext = Filesize - 1;

        //循环转码文本
        fprintf(output, "%s_%03d:\n", inputFileName,i);
        fprintf(output, ";原文－－－－－－－－－－－－－－－－－－－－－－\n");
        for(int k = 0;k < 2;k++)
        {
            if(k==0)
                fprintf(output, ";   .strn \"");
            if(k==1)
                fprintf(output, "    .strn \"");
            fseek(input,OffsetNow,SEEK_SET);
            unsigned char buffer[3];
            size_t bytesRead;
            while ((bytesRead = fread(buffer, sizeof(buffer[0]), sizeof(buffer), input)) > 0)
            {
                //hex检索码表
                unsigned int hexValue;
                unsigned int Length = 0;
                if ( buffer[0] <= 0xEF || 
                    (buffer[0] >= 0xFA && buffer[0] <= 0xFF))
                {
                    hexValue = buffer[0];
                    Length = 1;
                }
                else if ((buffer[0] == 0xF0 && buffer[1] <= 0xFE) ||
                         (buffer[0] >= 0xF1 && buffer[0] <= 0xF8))
                {
                    hexValue = (buffer[0] << 8) | buffer[1];
                    Length = 2;
                }
                else if ((buffer[0] == 0xF0 && buffer[1] == 0xFF) ||
                          buffer[0] == 0xF9)
                {
                    hexValue = (buffer[0] << 16) | (buffer[1] << 8) | buffer[2];
                    Length = 3;
                }
                
                if((OffsetNow != Filesize - 1) && (OffsetNow != OffsetNext))
                {
                    char* utf8Char = NULL;
                    for (size_t j = 0; j < charmapSize; j++)
                    {
                        if (charmap[j].hexValue == hexValue)
                        {
                            utf8Char = charmap[j].utf8Char;
                            break;
                        }
                    }
                    //存在码表
                    if (utf8Char != NULL)
                            fprintf(output, "%s", utf8Char);
                    //不存在码表
                    else
                        fprintf(output, "[NoCharmap:0x%X]",hexValue);
                }
                //矫正指针位置
                fseek(input, Length - bytesRead, SEEK_CUR);
                //读取文本字符是否达到下一文本地址
                int offset = ftell(input);
                if (ftell(input) == OffsetNext || (OffsetNow == Filesize - 1)|| (OffsetNow == OffsetNext)/*|| hexValue == 0xFE*/)
                {
                    fprintf(output, "\"\n");
                    if(k==0)
                        fprintf(output, ";译文－－－－－－－－－－－－－－－－－－－－－－\n");
                    if(k==1)
                        fprintf(output, ";结束－－－－－－－－－－－－－－－－－－－－－－\n\n\n");
                    break;
                }
            }
        }
    }
    
    //文件尾
    fprintf(output, ";文件尾\n");
    fprintf(output, ".byte 0xFF\n");
    fprintf(output, ".func EndOf%s :: .endfunc\n",inputFileName);

    //子文件结束
    fclose(input);
    fclose(output);
    free(charmap);
    printf("%s.s 转码完成！\n",inputFileName);
    printf("\n");
}
