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
    printf("bye again!\n");
    getchar();
    return 0;
}

int sub(void) {
    printf("This is from the sub!\n");
    int a = 1;
    int b = 2;
    return(a + b);
}

