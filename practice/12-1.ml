int foo(int n)
{
    int sum = 0;

    while (n > 0){
      if ((n % 2) == 0){
        sum += n * n;
      }else{
        sum -= n * n;
      }
      n--;
    }
    return sum;
}