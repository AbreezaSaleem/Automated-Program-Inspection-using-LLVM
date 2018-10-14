#include <iostream>

using namespace std;


int main()
{
	int* pls;
	int d = 45;
	pls = &d;
	int** hmm;
	hmm = &pls;
	int s = *(*hmm);
}