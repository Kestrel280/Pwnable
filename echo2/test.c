#include <stdlib.h>
#include <stdio.h>

int main() {
    int i;
    char test[8];
    for (i = 0; i < 8; i++) {
        test[i] = ' ';
    }

    fgets(test, 8, stdin);

    printf("%d", test[0]);
    for (i = 1; i < 8; i++) {
        printf(" | %d", test[i]);
    }

    exit(0);
}
