CC = gcc
CFLAGS = -z execstack -m32 -fomit-frame-pointer -fno-stack-protector
DEBUG = -g
VERB = -v

shell: shell.c
	$(CC) $^ -o $@ $(CFLAGS)

debug: shell.c
	$(CC) $^ -o shell $(CFLAGS) $(DEBUG)

verb: shell.c
	$(CC) $^ -o shell $(VERB)

#shell64: shell.c
#	$(CC) $^ -o $@ $(CFLAGS)

# be careful because it will remove the source file
#clean:
#	rm shell*

clean:
	rm shell shell64
