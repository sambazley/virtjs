CFLAGS += -Wall -Wextra -Wpedantic -Werror
CFLAGS += $(shell pkgconf --cflags libevdev)
LDLIBS += $(shell pkgconf --libs libevdev)

virtjs: virtjs.o

clean:
	rm -f virtjs virtjs.o
