#include <assert.h>

void userDefinedException();


int fib1(int a)
{
    if (a <= 0)
    {
        return 0;
    }
    else if (a == 1)
    {
        return 1;
    }
    else
    {
        return fib1(a - 1) + fib1(a - 2);
    }
}

int fib2(int a)
{
    if (a <= 0)
    {
        if (a < 0)
        {
            userDefinedException();
        }
        return 0;
    }
    else if (a == 1)
    {
        return 1;
    }
    else
    {
        return fib2(a - 1) + fib2(a - 2);
    }
}

int fib3(int a)
{
    assert(a >= 0);
    if (a <= 0)
    {
        if (a < 0)
        {
            userDefinedException();
        }
        return 0;
    }
    else if (a == 1)
    {
        return 1;
    }
    else
    {
        return fib3(a - 1) + fib3(a - 2);
    }
}