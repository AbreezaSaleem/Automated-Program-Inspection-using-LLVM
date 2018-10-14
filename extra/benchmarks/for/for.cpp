#include <iostream>

using namespace std;

int wutevez(int a, int b)
{
	int i = 0;
	int sum = 0;
	for(int j = 0; j<2; j++)
	{
		if(i < 5)
		{
			if (a + 9 > 3)
				break;
			else if(b + 4 > 22)
				b = 6 + 44;
		}
		sum++;
	}
	return sum;
}

int main()
{
}