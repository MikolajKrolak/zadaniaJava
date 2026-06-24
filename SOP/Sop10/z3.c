#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <semaphore.h>

#define NUM_READERS 3
#define NUM_WRITERS 2

int shared_data = 0;
int readers_count = 0;

sem_t rw_mutex;
pthread_mutex_t r_mutex;

void *reader_function(void *thread_arg) {
    int id = *(int *)thread_arg;
    int i;

    for (i = 0; i < 3; i++) {
        pthread_mutex_lock(&r_mutex);
        readers_count++;
        if (readers_count == 1) {
            sem_wait(&rw_mutex);
        }
        pthread_mutex_unlock(&r_mutex);

        printf("[Czytelnik %d] Czytam dane: %d (Aktywnych czytelników: %d)\n", id, shared_data, readers_count);
        usleep(100000);

        pthread_mutex_lock(&r_mutex);
        readers_count--;
        if (readers_count == 0) {
            sem_post(&rw_mutex);
        }
        pthread_mutex_unlock(&r_mutex);

        usleep(150000);
    }
    pthread_exit(NULL);
}

void *writer_function(void *thread_arg) {
    int id = *(int *)thread_arg;
    int i;

    for (i = 0; i < 2; i++) {
        sem_wait(&rw_mutex);

        shared_data += 5;
        printf("[Pisarz %d] !!! Zapisuję nowe dane: %d !!!\n", id, shared_data);
        usleep(200000);

        sem_post(&rw_mutex);

        usleep(300000);
    }
    pthread_exit(NULL);
}

int main() {
    pthread_t readers[NUM_READERS], writers[NUM_WRITERS];
    int reader_ids[NUM_READERS], writer_ids[NUM_WRITERS];
    int i;

    sem_init(&rw_mutex, 0, 1);
    pthread_mutex_init(&r_mutex, NULL);

    for (i = 0; i < NUM_WRITERS; i++) {
        writer_ids[i] = i + 1;
        pthread_create(&writers[i], NULL, writer_function, (void *)&writer_ids[i]);
    }

    for (i = 0; i < NUM_READERS; i++) {
        reader_ids[i] = i + 1;
        pthread_create(&readers[i], NULL, reader_function, (void *)&reader_ids[i]);
    }

    for (i = 0; i < NUM_WRITERS; i++) {
        pthread_join(writers[i], NULL);
    }
    for (i = 0; i < NUM_READERS; i++) {
        pthread_join(readers[i], NULL);
    }

    sem_destroy(&rw_mutex);
    pthread_mutex_destroy(&r_mutex);

    printf("Program zakończył działanie pomyślnie.\n");
    return 0;
}
