#include <stdio.h>

void main()
{
    printf("Average Finding App:");
    int scores[3];
    scores[0] = 77;
    scores[1] = 88;
    scores[2] = 99;
    double average = (scores[0] + scores[1] + scores[2]) / 3;
    printf("%f\n", average);
}