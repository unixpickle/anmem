CFILES = $(wildcard src/*.c)
override INCLUDES += -I./include -I./lib/analloc/src -I./lib/anpages/src

objects: build
	for file in $(CFILES); do \
		gcc $(CFLAGS) $(INCLUDES) -c $$file -o build/`basename $$file .c`.o; \
	done

build:
	mkdir build

clean:
	rm -rf build
