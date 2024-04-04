test.out: test.o	
	gcc test.o -o test.out -s

test.o: test.c	
	gcc -c test.c 

clean:
	rm -rf *.o *.out

run: 
	./test.out
