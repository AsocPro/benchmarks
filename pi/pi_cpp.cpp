#include <iostream>
#include <iomanip>
#include <stdlib.h>

int main(int argc, char* argv[]) {
    long lim = 999999,
         inside = 0,
		 seed = 0;

	char *LIMIT = getenv("LIMIT");
	if (LIMIT)
		lim = (long)atol(LIMIT);

	char *SEED = getenv("SEED");
	if (SEED)
		seed = (long)atol(SEED);

    srand48(seed);

    for (int i = 0; i < lim; ++i) {
        double x = drand48();
        double y = drand48();
        if (x * x + y * y <= 1.0)
            inside++;
    }

	std::cout << "pi ~ "
		<< std::setprecision(16)
		<< (((double)inside / (double)lim) * 4)
		<< std::endl;

    return 0;
}
