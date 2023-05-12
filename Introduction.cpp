#include <iostream>

int main(int argc, char **argv)
{
	// Allocating using static array
	int foo[5];
	foo[5] = 10;
	std::cout << "foo[5]" << foo[5] << std::endl;

	// Allication using dynamic array
	int* bar = new int[5];
	bar[5] = 10;
	std::cout << "bar[5]" << bar[5] << std::endl;
	delete[] bar;

	return 0;
}
