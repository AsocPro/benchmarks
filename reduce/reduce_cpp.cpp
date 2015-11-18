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
	a.reserve(numlimit);	

	for(int i = 0; i < numlimit; i++){ 
		a[i] = i;
	}

	long sum = 0;

	for (int n = 0; n < numlimit; n++){
	    sum += n;
	}

	std::cout << sum << std::endl;
}

 
