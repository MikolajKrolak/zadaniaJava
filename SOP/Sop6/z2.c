#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid1, pid2;

    if ((pid1 = fork()) == 0) {
        printf("Jestem procesem 1 (PID: %d)\n", getpid());
        sleep(1);
        exit(1);
    }

    if ((pid2 = fork()) == 0) {
        sleep(2);
        printf("Jestem procesem 2 (PID: %d)\n", getpid());
        exit(2);
    }

    int status;
    pid_t first_finished = waitpid(-1, &status, 0);
    int first_status = WEXITSTATUS(status);

    pid_t second_finished = waitpid(-1, &status, 0);
    int second_status = WEXITSTATUS(status);

    printf("[Rodzic] Jako pierwszy zakończył się proces o PID: %d (Zwrócił: %d)\n", first_finished, first_status);
    printf("[Rodzic] Jako drugi zakończył się proces o PID: %d (Zwrócił: %d)\n", second_finished, second_status);

    return 0;
}
