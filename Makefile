PLATFORM = $(shell uname)
ifeq ($(PLATFORM), Darwin)
CC = clang++
FLAGS = -std=c++14 -stdlib=libc++
#CC = g++-5.1.0
#FLAGS = -Wall -std=c++14 -pedantic
endif
ifeq ($(PLATFORM), Linux)
CC = g++
FLAGS = -std=c++14
endif

LIBS = -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_objdetect
SRC = circle_detect.cpp
EXEC = circle_detect

# Create the executable
all:
	$(CC) $(FLAGS) $(SRC) -o $(EXEC) $(LIBS)

clean:
	rm -f $(EXEC)

