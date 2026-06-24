#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *thread_function(void *thread_arg) {
    while (1) {
        printf("jestem wątkiem\n");
        usleep(500);
    }
    pthread_exit(NULL);
}

int main() {
    pthread_t thread;

    if (pthread_create(&thread, NULL, thread_function, NULL) != 0) {
        return 1;
    }

    while (1) {
        printf("jestem mainem\n");
        usleep(2500);
    }

    return 0;
}
