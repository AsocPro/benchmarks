CFLAGS = -std=gnu11

test:
	@zsh -c 'for b in *.sh; do for (( i=0; i <= 4; ++i )) LIMIT=999999 =time ./$$b; done'

.PHONY: test
