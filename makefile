test.out: test.o	
	gcc -o test.out test.o -g

test.o: test.c
	gcc	-c test.c

clean:
	rm *.o *.out

run:
	./test.out

