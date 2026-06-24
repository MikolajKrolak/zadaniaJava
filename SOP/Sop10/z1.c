#include <stdio.h>
#include <pthread.h>

#define NUM_THREADS 5
#define INCREMENTS 1000

int counter = 0;
pthread_mutex_t mutex;

void *thread_function(void *thread_arg) {
    int i;
    for (i = 0; i < INCREMENTS; i++) {
        pthread_mutex_lock(&mutex);
        counter++;
        pthread_mutex_unlock(&mutex);
    }
    pthread_exit(NULL);
}

int main() {
    pthread_t threads[NUM_THREADS];
    int i;

    pthread_mutex_init(&mutex, NULL);

    for (i = 0; i < NUM_THREADS; i++) {
        pthread_create(&threads[i], NULL, thread_function, NULL);
    }

    for (i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    pthread_mutex_destroy(&mutex);

    printf("Końcowa wartość licznika: %d (Oczekiwano: %d)\n", counter, NUM_THREADS * INCREMENTS);
    return 0;
}
