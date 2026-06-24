#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int NUM_CHILDREN = 3;

int main() {
    pid_t pids[NUM_CHILDREN];

    for (int i = 0; i < NUM_CHILDREN; i++) {
        pid_t pid = fork();

        if (pid < 0) {
            perror("Fork failed");
            exit(1);
        } else if (pid == 0) {
            printf("[Dziecko] PID: %d, PPID: %d, Numer: %d\n", getpid(), getppid(), i);
            exit(i);
        } else {
            pids[i] = pid;
        }
    }

    for (int i = 0; i < NUM_CHILDREN; i++) {
        int status;
        pid_t waited_pid = waitpid(pids[i], &status, 0);

        if (waited_pid > 0 && WIFEXITED(status)) {
            printf("[Rodzic] Potomek o PID %d zakończył się kodem: %d\n", waited_pid, WEXITSTATUS(status));
        }
    }

    return 0;
}
