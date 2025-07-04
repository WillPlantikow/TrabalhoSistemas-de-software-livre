CXX = g++
CXXFLAGS = -Wall -Wextra

all: primo vetor matriz

primo: primo.cpp
	$(CXX) $(CXXFLAGS) primo.cpp -o primo

vetor: vetor.cpp
	$(CXX) $(CXXFLAGS) vetor.cpp -o vetor

matriz: matriz.cpp
	$(CXX) $(CXXFLAGS) matriz.cpp -o matriz

clean:
	rm -f primo vetor matriz *.o
