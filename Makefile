CPPFLAGS = -std=c++11 -Wall -pedantic-errors -fsanitize=address,leak,undefined

all: clean pa1.exe
	./pa1.exe

pa1.exe: decimal.o main.cpp
	g++-10 -o $@ $(CPPFLAGS) $^

%.o: %.cpp
	g++-10 $(CPPFLAGS) -c $< -o $@ 

clean:
	rm -f *.o *.exe
# On Windows, use: del *.o *.exe
# On Linux or MacOS, use: rm -f *.o *.exe
