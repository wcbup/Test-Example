#include <assert.h>
int array1(int i)
{
    int a[] = {0, 1, 9};
    return a[i];
}

int array2(int i)
{
    int a[] = {0, 1, 2};
    int b = 3, c = 4;
    if (i <= 2 && i >= 0)
    {
        return a[i] + (a[i + 1] + 1) * a[i + 2];
    }
    else
    {
        return 0;
    }
}

int array3(int i)
{
    int a[5], b, c;
    a[4] = 100;
    return a[i];
}

int array4(int i)
{
    assert(i > 0 && i < 4);
    int a[] = {1, 2, 3, 4};
    int b[] = {1, 2, 3, 4, 5};
    return a[i] + b[i + 1];
}

int array5(int x, int y)
{
    int a[] = {1, 2, 3, 4, 5, 6, 7};
    int index = 3;
    if (x > y)
    {
        index += y;
    }
    else
    {
        index += x;
    }
    return a[index];
}

int array6(int x, int y)
{
    assert(x < 7);
    int a[] = {1, 2, 3, 4, 5, 6, 7};
    int index = 3;
    if (x > y)
    {
        index += y;
    }
    else
    {
        index += x;
    }
    return a[index];
}