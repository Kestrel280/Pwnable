#include <stdlib.h>
#include <stdio.h>

int main() {
    int i;
    char test1[8];
    char test2[8];
    for (i = 0; i < 8; i++) {
        test1[i] = ' ';
        test2[i] = ' ';
    }

    fgets(test1, 8, stdin);
    printf("\nfgets: %d", test1[0]);
    for (i = 1; i < 8; i++) {
        printf(" | %d", test1[i]);
    }
    printf("\n");

    scanf("%8s", test2);
    printf("\nscanf: %d", test2[0]);
    for (i = 1; i < 8; i++) {
        printf(" | %d", test2[i]);
    }
    printf("\n");

    printf("getc: %d", getc(stdin));

    printf("\n");

    char buf[32];
    printf("scanf into buf (32 bytes): ");
    scanf("%32s", buf);

    printf("printf(buf): ");
    printf(buf);
    printf("\n");

    exit(0);
}
