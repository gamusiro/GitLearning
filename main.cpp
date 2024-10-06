#include <iostream>

#ifdef _WIN32
#include <conio.h>
#endif

int main() {
	int a = 0;
	int b = 1;

#ifdef _WIN32
	std::cout << "Hello World for Windows" << std::endl;
	_getch();
#elif defined(__unix__) || defined(__linux__)
	std::cout << "Hello World for Linux or Unix" << std::endl;
#endif

	return 0;
}