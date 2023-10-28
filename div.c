#include <assert.h>

int div0(int a)
{
    int b = 0;
    return a / b;
}


int div_a_b1(int a, int b)
{
    return a / b;
}

int div_a_b2(int a, int b)
{
    assert(a != 0);
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
    while (a > b)
    {
        a = b / c;
    }
    return a;
}
