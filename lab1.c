#include <stdio.h>
#include <math.h>

int main() 
{
    float x, y, z;
    printf("Enter x: ");
    scanf("%f", &x);
    printf("Enter y: ");
    scanf("%f", &y);
    printf("Enter z: ");
    scanf("%f", &z);

    float sum = x + y + z;

    if (x > sum - x && x > sum - y && x > sum - z) {
        printf("Наибольшее значение: %.2f\n", x);
    } else if (y > sum - x && y > sum - y && y > sum - z) {
        printf("Наибольшее значение: %.2f\n", y);
    } else if (z > sum - x && z > sum - y && z > sum - z) {
        printf("Наибольшее значение: %.2f\n", z);
    } else {
        float difference = sum - (x > y ? x : y) - (x > z ? x : z);
printf("Разность между суммой двух других параметров и наибольшим значением: %.2f\n", difference);
}

return 0;
}