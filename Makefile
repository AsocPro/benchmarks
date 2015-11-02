CFLAGS = -std=gnu11

c: c.c

test:
	@zsh -c 'for b in *.sh; do for (( i=0; i <= 4; ++i )) LIMIT=999999 =time ./$$b; done'

clean:
	-rm c

.PHONY: test clean
