#include <stdio.h>

int main() {
    char buf1[10];
    char buf2[10];

    scanf("%10s", buf1);
    scanf("%10s", buf2);

    printf("buf1: %s | buf2: %s\n", buf1, buf2);

    return 0;
}

