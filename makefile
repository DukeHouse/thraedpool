# CC:gcc
# CC:g++
# OPTION_1:-std=c++11
# OPTION_2:-lstd++
CC = clang++
OPTION_1 = -std=c++11
OPTION_2 = -stdlib=libstdc++
OPTION_3 = -stdlib=libc++
TARGET = pointParser
all:
	$(CC) $(OPTION_1) Thread.h Thread.cpp test.cpp
	mv a.out $(TARGET)
	rm *.gch 
clean:
	#rm *.gch *.out
	#rm -rf $(BUILD_DIR)
	rm $(TARGET)
run:
	./$(TARGET)
.PHONY:clean

