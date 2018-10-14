#include <iostream>
#include <stdio.h>
#include <string>
#include <map>

using namespace std;

std::map<std::string, int> results;
std::map<std::string, int>::iterator it;
int total = 0; 

int update(char* name, double count) 
{
	it = results.find(name);
	total = total + count;
	if (it == results.end())
		results[name] = count;
	else
		results[name] = it -> second + count;

	return 0;
}

int print(char* print_this)
{
	cout << "Result: \n";
	for ( it = results.begin(); it != results.end(); it++ )
	{
		cout << it->first << ':' << it->second << endl ;
	}
	cout << "Total: " << total << endl;
	return 0;
}