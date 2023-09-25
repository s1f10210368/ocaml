int foo(int a, int b)
{
    int a2, b2, c2, c;

    a2 = a : a;
    b2 = b * b;
    c2 = c * c;
    c = sqrt(c2);
    return c;
}

int foo(int a, int b)
{
  %r0 = a*a;
  %r1 = b*b;
  %r2 = c*c;
  Save(a, %r0);
  %r0 = sqrt(%r2);
  Restore(a, %r2);
  ret
}
