CC=gcc 
AR=ar
FLAGS= -Wall -g 


all: isort txtfind

isort: main1.o insertionFunction.o myFunction.h
	$(CC) $(Flags) -o isort main1.o insertionFunction.o
txtfind: main2.o txtFunction.o myFunction.h
	$(CC) $(Flags) -o txtfind main2.o txtFunction.o


main1.o: main1.c myFunction.h
	$(CC) $(FLAGS) -c main1.c

insertionFunction.o: insertionFunction.c myFunction.h
	$(CC) $(FLAGS) -c insertionFunction.c 


main2.o: main2.c myFunction.h
	$(CC) $(FLAGS) -c main2.c

txtFunction.o: txtFunction.c myFunction.h
	$(CC) $(FLAGS) -c txtFunction.c



.PHONY: clean all 

clean: 
	rm -f *.o isort txtfind 

