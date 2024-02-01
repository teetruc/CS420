#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int * arrayPtr = (int *) malloc(sizeof(int) * (argc - 1));
    int var = 255; //the color white
    int var2 = 0; //the color black

    // Read elements from the comment line and convert into an integer
    for (int arg = 1; arg < argc; arg++) {
        arrayPtr[arg-1] = atoi(argv[arg]);
    }

    // Checks each element to see if it passes the threshold, if it does, then it will print 255. If it doesn't it will print 0.
    for (int i = 0; i < argc-1; i++) {
        if (arrayPtr[i] > 170) {
            printf("%d ", var);
        }
        else {
            printf("%d ", var2);
        }
    }

    // Free dynamically allocated memory
    free(arrayPtr);
    return 0;
}
