#include <stdio.h>
#include <map>
#include <utility>
#include <string>

std::map<std::string,int> TotalInstructionsCount;
int total=0;

void CountInstructionsOverall(char* instructionName, int instructionCount) 
{
    printf("hmmmm");

    std::string instruction_Name(instructionName);
    if(TotalInstructionsCount.find(instruction_Name) == TotalInstructionsCount.end())
    {
        TotalInstructionsCount[instruction_Name]=instructionCount;
        total+=instructionCount;

    }
    else
    {
        TotalInstructionsCount[instruction_Name]= TotalInstructionsCount[instruction_Name]+ instructionCount;
        total+=instructionCount;
        
    }

    

}

void print()
{
    for(std::map<std::string, int>:: const_iterator i=TotalInstructionsCount.begin();i!=TotalInstructionsCount.end();i++)
    {
        printf("%s %d\n", (i->first).c_str(), i->second);
            
    }
    printf("Total %d\n", total);
}