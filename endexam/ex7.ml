double heron(double s, double a, double b, double c)
{
    return sqrt(s * (s-a) * (s-b) * (s-c));
}

上記の関数をk正規か

double heron(double s, double a, double b, double c)
{
  double x1, x2, x3, x4, result;
  x1 = s;
  x2 = s - a;
  x3 = s - b;
  x4 = s - c;
  result = x1 * x2 * x3 * x4;
  return result;
}