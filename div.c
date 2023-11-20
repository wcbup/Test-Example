#include <assert.h>

int div0(int a)
{
    int b = 0;
    return a / b;
}

int div1(int a)
{
    return a / 0;
}

int div_a_b1(int a, int b)
{
    return a / b;
}

int div_a_b2(int a, int b)
{
    assert(b != 0);
    return a / b;
}

int div_a_b3(int a, int b)
{
    int c = 9;
    c = a / c;
    if (c > b)
    {
        return c / b;
    }
    else
    {
        return a / b;
    }
}

int div_a_b4(int a, int b)
{
    int c = 9;
    while (a > b && c < 15)
    {
        a = b / c;
        c += 1;
    }
    return a;
}

int div_a_b5(int a, int b)
{
    int c = 9;
    a = c * b / (a + 3 - c * b);
    b = a * b + c;
    if (a > b)
    {
        return b + c / a;
    }
    return a;
}
