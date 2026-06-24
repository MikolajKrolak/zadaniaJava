#include <stdio.h>
#include <pthread.h>

#define NUM_THREADS 1

void *thread_function(void *thread_arg) {
    int i;
    for (i = 0; i < 10; i++) {
        printf("[Wątek] print numer %d\n", i + 1);
    }
    pthread_exit(NULL);
}

int main() {
    pthread_t threads[NUM_THREADS];
    int i;

    for (i = 0; i < NUM_THREADS; i++) {
        pthread_create(&threads[i], NULL, thread_function, NULL);
    }

    for (i = 0; i < 10; i++) {
        printf("[Main] print numer %d\n", i + 1);
    }

    for (i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    printf("Wszystkie wątki zakończyły pracę. Program kończy działanie.\n");
    return 0;
}
