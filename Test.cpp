#include <iostream>

void getArrayPointer(int* array, int size)
{
	for(int i = 0;i < size;i++)
	{
		std::cout << array[i] << std::endl;
	}
}

void getArrayBracket(int array[], int size)
{
	for(int i = 0;i < size;i++)
	{
		std::cout << array[i] << std::endl;
	}
}

int main(int argc, char* argv[])
{
	std::cout << "Test" << std::endl;

	int foo[5] = {1, 2, 3, 4, 5};
	getArray(foo, 5);
	getArrayBracket(foo, 5);
	
	return 0;
}
