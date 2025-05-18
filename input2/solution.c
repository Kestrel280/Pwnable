#include <fcntl.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>

// port hardcoded at 17280 to avoid some annoying sprintf nonsense

int main() {
    char* args[100];
    pid_t pid;
    int i, j;
    int fd;
    FILE* fp;
    int fd1[2], fd2[2];
    int sockfd;
    struct sockaddr_in serv_addr;
    struct hostent* server;
    char* envp[] = {"\xde\xad\xbe\xef=\xca\xfe\xba\xbe", "PATH=/tmp/k280_input2:/home/input2", NULL};

    printf("starting solver\n");

    if (pipe(fd1)) {
        perror("failure in pipe: ");
        exit(1);
    }
    if (pipe(fd2)) {
        perror("failure in pipe: ");
        exit(1);
    }

    printf("opened pipes\n");

    //fd = open("/tmp/k280_input2/\x0a", O_RDWR | O_CREAT, 0777);
    fd = open("\x0a", O_RDWR | O_CREAT, 0777);
    if (fd == -1) {
        perror("failure with opening xoa: ");
        exit(1);
    }
    write(fd, "\x00\x00\x00\x00", 4);
    close(fd);
    printf("created and populated file x0a\n");

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd == -1) {
        perror("failure creating socket: ");
        exit(1);
    }
    memset(&serv_addr, 0, sizeof(serv_addr));
    server = gethostbyname("127.0.0.1");
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(17280);
    memcpy((char*) server->h_addr, (char*) &serv_addr.sin_addr.s_addr, server->h_length);
    printf("created client port\n");

//    fp = fdopen(fd, "w+");
//    if (fp == NULL) {
//        perror("failure with associating xoa with a FILE*: ");
//        exit(1);
//    }
    
    for (i = 0; i < 100; i++) { args[i] = ""; }
    args['B'] = "\x20\x0a\x0d\x00";
    args['C'] = "17280";
    printf("established arguments\n");

    pid = fork();
    if (pid) {  // Child
        close(fd1[1]);
        close(fd2[1]);
        dup2(fd1[0], 0);
        dup2(fd2[0], 2);
        close(fd1[0]);
        close(fd2[0]);
        
        if (execle("/home/input2/input2", args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26], args[27], args[28], args[29], args[30], args[31], args[32], args[33], args[34], args[35], args[36], args[37], args[38], args[39], args[40], args[41], args[42], args[43], args[44], args[45], args[46], args[47], args[48], args[49], args[50], args[51], args[52], args[53], args[54], args[55], args[56], args[57], args[58], args[59], args[60], args[61], args[62], args[63], args[64], args[65], args[66], args[67], args[68], args[69], args[70], args[71], args[72], args[73], args[74], args[75], args[76], args[77], args[78], args[79], args[80], args[81], args[82], args[83], args[84], args[85], args[86], args[87], args[88], args[89], args[90], args[91], args[92], args[93], args[94], args[95], args[96], args[97], args[98], args[99], NULL, envp)) {
            perror("failure in execl: "); 
        }

        printf("UNREACHABLE CODE ENCOUNTERED IN CHILD\n");
        exit(1);
    }

    close(fd1[0]);
    close(fd2[0]);
    write(fd1[1], "\x00\x0a\x00\xff", 4);
    write(fd2[1], "\x00\x0a\x02\xff", 4);
    close(fd1[1]);
    close(fd2[1]);
    
    for (i = 0; i < 1000; i++) {
        for (j = 0; j < 1000000; j++) {
        }
    }

    printf("parent: attempting to connect to socket\n");
    if (connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) {
        perror("parent: error while connecting: ");
        exit(1);
    }
    printf("parent: connected to socket\n");
    write(sockfd, "\xde\xad\xbe\xef", 4);
    printf("parent: delivered payload in socket\n");

    for (i = 0; i < 1000; i++) {
        for (j = 0; j < 1000000; j++) {
        }
    }

    printf("parent process reached end\n");
    
    return 0;
}
