#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid < 0) {
        perror("Fork failed");
        exit(1);
    } else if (pid == 0) {
        // Proces Dziecko
        pid_t grandson_pid = fork();

        if (grandson_pid < 0) {
            perror("Grandson fork failed");
            exit(1);
        } else if (grandson_pid == 0) {
            // Proces Wnuk
            printf("[Wnuk] Wnuk działa (PID: %d, PPID: %d)\n", getpid(), getppid());
            sleep(2);
            exit(5);
        } else {
            // Proces Dziecko czeka na Wnuka
            int status;
            pid_t waited_grandson = wait(&status);
            
            if (waited_grandson > 0 && WIFEXITED(status)) {
                printf("[Dziecko] PID: %d zakończył działanie ze statusem: %d\n", waited_grandson, WEXITSTATUS(status));
            }
            exit(0);
        }
    } else {
        printf("[Rodzic] Kończę natychmiast.\n");
        exit(0);
    }
}
