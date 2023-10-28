int array1(int i)
{
    int a[] = {0, 1, 2};
    return a[i];
}

int array2(int i)
{
    int a[] = {0, 1, 2};
    if (i <= 2 && i >= 0)
    {
        return a[i];
    }
    else
    {
        return 0;
    }
}

