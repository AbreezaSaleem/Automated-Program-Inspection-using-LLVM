#include <iostream>
#include <fstream>
#include <string>

using namespace std;

void insertionSort(int arr[], int n)
{
	int sum = 0;
	for(int i = 0; i < n; i++)
		sum += i;

}

int meh()
{
	return 34;
}

int main()
{
	int arr[] = {12, 11, 13, 5, 6};
	int n = sizeof(arr)/sizeof(arr[0]);
	insertionSort(arr, n);
	//meh();
}