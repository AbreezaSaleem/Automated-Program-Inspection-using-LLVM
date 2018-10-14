#include <iostream>
#include <fstream>
#include <string>

using namespace std;

void insertionSort(int arr[], int n)
{
	int i;
	for (i= 1; i<n; i++)
	{
		int key = arr[i];
		int j = i-1;

		while(j >=0)
		{			
			if(key <= arr[j])
			{
				int temp = arr[j];
				arr[j] = key;
				arr[j + 1] = temp;
			}
			else
			{
				break;
			}
			j--;
		}
	}
	for (i=0; i < n; i++)
		cout << arr[i] + 1 << "\n";
}


int add(int x, int y)
{
	return x + y;
}

int mul(int x)
{
	return x + 6;
}

int div(int x)
{
	return x;
}

int main()
{
	int arr[] = {12, 11, 13, 5, 6};
	int n = sizeof(arr)/sizeof(arr[0]);
	insertionSort(arr, n);
	add(2, 3);
	mul(2);
	div(2);
}