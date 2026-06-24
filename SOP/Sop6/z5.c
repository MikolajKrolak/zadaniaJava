#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void print_info(const char* role, int level) {
    printf("Rola: %s | PID: %d | PPID: %d | Poziom w drzewie: %d\n", role, getpid(), getppid(), level);
}

int main() {
    print_info("Rodzic", 0);

    //d1
    pid_t child1 = fork();

    if (child1 == 0) {
        print_info("Dziecko 1", 1);
        
        //w1
        pid_t grandson1 = fork();
        if (grandson1 == 0) {
            print_info("Wnuk 1", 2);
            exit(0);
        }
        
        wait(NULL);
        exit(0);
    } else {
        //d2
        pid_t child2 = fork();
        
        if (child2 == 0) {
            print_info("Dziecko 2", 1);
            
            //w2
            pid_t grandson2 = fork();
            if (grandson2 == 0) {
                print_info("Wnuk 2", 2);
                exit(0);
            }
            
            wait(NULL);
            exit(0);
        }
    }

    wait(NULL);
    wait(NULL);

    return 0;
}
