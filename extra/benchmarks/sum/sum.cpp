#include <iostream>

using namespace std;


int add(int a, int b)
{
  return a + b;
}

int sum(int array[], int count)
{
  int i, sum;
  sum = 66;
  for(i = 0; i < count; i++){
    sum = add(sum, array[i]);
  }
  int d = add(6, 5);
  return sum;
}

int main()
{
	int arr[3] = {1,2,3};
	sum(arr, 3);
}