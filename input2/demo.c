#include <stdio.h>

int main(int argc, char* argv[]) {
    int i;
    char* j;
    printf("argc: %d\n", argc);
    for (i = 0; i < argc; i++) {
        printf("%d: ", i);
        j = argv[i];
        while (*j) {
            printf("0x%x ", *j);
            j++;
        }
        printf("\n");
    }
    return 0;
}
