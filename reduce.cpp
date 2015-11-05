#include <iostream>
#include <vector>
#include <cstdlib>

int main(){
	char* limit = std::getenv ("LIMIT");
	int numlimit = std::atoi(limit);
	std::vector<int> a;

	a.reserve(numlimit);	

	int sum = 0;

	for (int n : a){
		sum += n;
	}

	std::cout << sum << std::endl;
}

 
