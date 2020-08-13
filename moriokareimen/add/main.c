#include <stdio.h>
extern int asm_add(int a, int b);

int main() {
    int a, b;
    a = 1;
    b = 2;
    int ans = asm_add(a, b);
    printf("%d\n", ans);

    return 0;
}
