int sumrange(int n, int m)
{
    int sum = 0;

    while (n <= m) {
        sum += n;
        n++;
    }

    return sum;
}

SSA変換

int sumrange(int n, int m) {
    int sum = 0;
    int t1 = n;
    int t2 = m;

    if (t1 > t2) 
    int t3 = sum;
    int t4 = t1;
    sum = t3 + t4;
    int t5 = t1;
    int t6 = 1;
    t1 = t5 + t6;

    int result = sum;
    return result;
}
