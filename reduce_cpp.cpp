#include <iostream>
#include <vector>
#include <cstdlib>
#include <algorithm>

int main(){
	int numlimit = 999999;
	const char* limit = std::getenv ("LIMIT");

	if(limit){
		int numlimit = std::atoi(limit);
	}
	std::vector<int> a;
	std::vector<int>::iterator it;
	a.reserve(numlimit);	

	it = a.begin();
	it = a.insert(it,0,numlimit);

	int sum = 0;

	std::for_each(a.begin(), a.end(), [&] (int n) {
	    sum += n;
	});

	std::cout << sum << std::endl;
}

 
