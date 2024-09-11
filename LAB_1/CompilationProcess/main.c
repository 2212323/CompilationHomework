#include <stdio.h>

int main() {
    int a, b, i, t, n;

    a = 0;
    b = 1;
    i = 1;
    
    scanf("%d", &n);//输入n的值
    printf("%d\n", a);//输出a的值
    printf("%d\n", b);//输出b的值
    while (i < n) {
        t = b;
        b = a + b;
        printf("%d\n", b);
        a = t;
        i = i + 1;
    }

    return 0;
}
