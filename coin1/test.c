#include <stdio.h>

int main() {
    char inbuf[100];
    printf("test program running\n");
    scanf("%100s", inbuf);
    inbuf[100] = '\0';
    printf("echoing %s\n", inbuf);
    printf("spinning for a couple seconds\n");
    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < 1000000000; j++) {}
    }
    printf("test program done\n");
    return 0;
}
