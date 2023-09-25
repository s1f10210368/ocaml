以下の関数をSSA変換せよ
Φ関数は phi(x, y) のように書くこと
int sumrange(int x, int y)
{
    int result = 0;

    int i = x;
    while (i < y) {
        result += i;
        i++;
    }

    return result;
}


int sumrange(int x0, y0)
{
  int result0 = 0;
  int n = x0;
  int m = y0;

  int i1, i2, result1, result2, 
  while (i2 = phi(i0, i1) > 0), result2 = phi(result0, result1), i2 > 0{
    result1 = result2 + i2;
    i1 = i2 + 1
  }
}

