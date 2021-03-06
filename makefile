GPP = g++ -O3 -Wall -std=c++11

A = main.cc
B = using_socket.cc

Aprog: $A
	$(GPP) -o Aprog $A

main.o: main.h main.cc
	$(GPP) -c main.cc
	
Aprog2: $B
	$(GPP) -o Aprog2 $B
	
using_socket.o: using_socket.h using_socket.cc
	$(GPP) -c using_socket.cc

clean:
	rm ./Aprog ./Aprog2