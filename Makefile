# gcc test.c -o test $(pkg-config --cflags --libs gtk4)

TARGET = sticky
SOURCES = sticky.c

$(TARGET): $(SOURCES) 
	gcc $(SOURCES) -o $(TARGET) `pkg-config --cflags --libs gtk4`

.PHONY: clean 
clean:
	rm -f $(TARGET)