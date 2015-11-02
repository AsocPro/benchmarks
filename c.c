#include <stdio.h>
#include <stdlib.h>

int main(void) {
	long long unsigned int lim = 999999;
	long long unsigned int *a;

	char *LIMIT = getenv("LIMIT");
	if (LIMIT)
		lim = (long long unsigned int)atoll(LIMIT);

	if ((a = (void *)malloc(sizeof(long long unsigned int) * lim)) == NULL) {
		perror("malloc()");
		exit(1);
	}

	for (long long unsigned int i = 0; i <= lim; ++i)
		a[i] = i;

	long long unsigned int sum = 0;
	for (long long unsigned int i = 0; i <= lim; ++i)
		sum += a[i];

	printf("%llu\n", sum);
}
