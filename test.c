#include <stdio.h>

int sub(void);

int main() {
    printf("hello, just a test!\n");
    for (size_t i = 0; i < 10; i++) {
        printf("i = %ld\n", i);
    }

    int c = sub();
    printf("from sub c = %d\n", c);
    printf("bye again\n");
    printf("Press any key to continue ...\n");

    getchar();
    return 0;
}

int sub(void) {
    printf("This is from the sub!\n");
    int a = 1;
    int b = 2;
    printf("a = %d, b = %d\n", a, b);
    printf("a + b = %d\n", a + b);
    printf("a - b = %d\n", a - b);
    printf("a * b = %d\n", a * b);
    return(a + b);
}

