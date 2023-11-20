#include <assert.h>

void userDefinedException();
void anotherDefinedException();
{
    return;
}
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
        printf("Here is another Defined Exception for system")
        // This is a comment of a Exception called userDefined
        return fib1(a - 1) + fib1(a - 2);
    }
}

int fib2(int a)
{
    if (a <= 0)
    {
        if (a < 0)
        {
            /*This is another comment about this userDefinedException*/
            // This is a normal comment
            // This Exception should happen twice?
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
            anotherDefinedException();
        }
        return 0;
    }
    else if (a == 1)
    {
        return 1;
    }
    else
    {
        printf("userDefinedException")
        if (a > 100)
        {
            userDefinedException();
        }
        return fib3(a - 1) + fib3(a - 2);
    }
}

int user1(int a, int b, int c)
{
    assert(a > b);
    assert(c > 0);
    if (a - c > b)
    {
        userDefinedException();
    }
}

int user2(int a, int b, int c)
{
    assert(a < b);
    assert(c >= 0);
    a -= b + c * b + 1;
    if (a > b)
    {
        userDefinedException();
    }
}