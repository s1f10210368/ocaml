x = 1; y = 2;

if (y!= 1){
  x = x + 1;
  x = x * 2;
}
else{
  x = y;
}

return x;

上記の関数をSSA変換

x0 = 1; y0 = 2;


if (y0 != 1){
  int x1, x2;
  x1 = x0 + 1;
  x2 = x1 * 2;
}else{
  x3 = y0;
}
x4 = phi(x2, x3)

return x;