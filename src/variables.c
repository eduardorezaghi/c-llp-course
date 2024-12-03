#include <stdio.h>

int main() {
    int a = 5;
    int b = 10;
    int c = a + b;
    printf("The sum of %d and %d is %d\n", a, b, c);

    // Pointers
    int* p = &c;
    printf("The address of c is %p\n", p);
    printf("The value of c is %d\n", *p);
    return 0;
}