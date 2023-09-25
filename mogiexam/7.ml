int polynomial(int a, int b, int c, int x)
{
    return a * a * x + b * x + c;
}

k正規化

int polynomial(int a, int b, int c, int x)
{
    int tmp1, tmp2, tmp3, tmp4, result
    tmp1 = a * a;
    tmp2 = tmp1 * x;
    tmp3 = b * x;
    tmp4 = tmp2 + tmp3;
    result = tmp4 + c;
    return result;
}