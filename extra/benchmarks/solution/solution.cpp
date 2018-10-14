#include <iostream>
#include <fstream>

using namespace std;

int arr[] = {12, 11, 13, 5, 6};
int n = sizeof(arr)/sizeof(arr[0]);

void insertionSort(int arr[], int n)
{
	int i, key, j;
	for (i = 1; i < n; i++)
	{
		key = arr[i];
		j = i-1;
		while (j >= 0 && arr[j] > key)
		{
			arr[j+1] = arr[j];
			j = j-1;
		}
		arr[j+1] = key;
	}

	for(i = 0; i < n; i++)
		cout << arr[i] << "\n";
}

int add(int x, int y)
{
	return x + y;
}

int mul(int x)
{
	return x * 2;
}

int div(int x)
{
	return x;
}

void test1(std::ofstream& outfile)
{
	insertionSort(arr, n);
	cout << endl;
}

void test2(std::ofstream& outfile)
{
	cout << add(2, 3) * mul(2);
	cout << endl;
}


void test3(std::ofstream& outfile)
{
	cout << add(2, 3) * div(2);
	cout << endl;
}


void useless(std::ofstream& outfile)
{
}

int main()
{
	ofstream outfile;
	outfile.open("outputss/fml.txt", std::ofstream::app);
	test1(outfile);
	test2(outfile);
	test3(outfile);
	//test4(outfile);
	return 0;
}