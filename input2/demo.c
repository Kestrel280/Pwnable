#include <stdio.h>
#include <unistd.h>

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

    char buf[4];
    read(0, buf, 4);
    printf("read from stdin: \n");
    for (i = 0; i < 4; i++) {
        printf("0x%x ", buf[i]);
    }
    printf("\n");

    read(2, buf, 4);
    printf("read from stderr: \n");
    for (i = 0; i < 4; i++) {
        printf("0x%x ", buf[i]);
    }
    printf("\n");
    return 0;
}
