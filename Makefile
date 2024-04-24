SRC = exif.c sample_main.c
OBJ = $(SRC:.c=.o)
TARGET = exif
CFLAGS = -Wall -std=c99
CC = afl-gcc

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $^

.c.o:
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJ) $(TARGET)

