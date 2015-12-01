#include <iostream>
#include <vector>
#include <cstdlib>
#include <algorithm>

int main(){
	int numlimit = 999999;
	const char* limit = std::getenv ("LIMIT");

	if(limit){
		numlimit = std::atoi(limit);
	}
	std::vector<int> a;
	a.reserve(numlimit + 1);

	for (int i = 0; i <= numlimit; i++) {
		a.push_back(i);
	}

	long sum = 0;

	for (std::vector<int>::iterator it = a.begin(); it != a.end(); ++it) {
	    sum += *it;
	}

	std::cout << sum << std::endl;
}

 
