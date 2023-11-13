#include <stdio.h>

int max_of_three(int x, int y, int z) {
    if (x > y + z) {
        return x;
    } else if (y > x + z) {
        return y;
    } else if (z > x + y) {
        return z;
    } else {
        return abs(x + y + z - (x > y ? (x > z ? x : z) : (y > z ? y : z)));
    }
}

int main() {
    int x = 1;
    int y = -2;
    int z = 0.5;

    int result = max_of_three(x, y, z);
    printf("Результат: %d\n", result);

    return 0;
}