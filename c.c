#include <stdio.h>
#include <stdlib.h>

int main(void) {
	long long unsigned int lim = 999999;

	char *LIMIT = getenv("LIMIT");
	if (LIMIT)
		lim = (long long unsigned int)atoll(LIMIT);

	long long unsigned int sum = 0;
	for (long long unsigned int i = 0; i <= lim; ++i)
		sum += i;

	printf("%llu\n", sum);
}
