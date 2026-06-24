#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>

#define NUM_THREADS 1

int running = 0;
int elapsed_time = 0;
int keep_alive = 1;

void *thread_function(void *thread_arg) {
    while (keep_alive) {
        if (running) {
            sleep(1);
            if (running) {
                elapsed_time++;
                printf("\n[Licznik] Czas: %d s\n> ", elapsed_time);
                fflush(stdout);
            }
        } else {
            usleep(100000);
        }
    }
    pthread_exit(NULL);
}

int main() {
    pthread_t threads[NUM_THREADS];
    char command[32];
    int i;

    for (i = 0; i < NUM_THREADS; i++) {
        pthread_create(&threads[i], NULL, thread_function, NULL);
    }

    printf("Dostępne komendy: start, stop, reset, exit\n");

    while (1) {
        printf("> ");
        fflush(stdout);
        if (scanf("%31s", command) == EOF) break;

        if (strcmp(command, "start") == 0) {
            running = 1;
            printf("Licznik uruchomiony.\n");
        } else if (strcmp(command, "stop") == 0) {
            running = 0;
            printf("Licznik zatrzymany na wartości: %d s\n", elapsed_time);
        } else if (strcmp(command, "reset") == 0) {
            elapsed_time = 0;
            printf("Licznik zresetowany.\n");
        } else if (strcmp(command, "exit") == 0) {
            keep_alive = 0;
            break;
        } else {
            printf("Nieznana komenda! Użyj: start, stop, reset, exit\n");
        }
    }

    for (i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    printf("Wszystkie wątki zakończyły pracę. Program kończy działanie.\n");
    return 0;
}
