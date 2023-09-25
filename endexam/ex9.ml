以下の関数を x64 の呼び出し規約に従ってレジスタ割り当てせよ
int型は32ビット整数であるものとする (すなわち、%eax, %edi 等のレジスタを用いること)
この問題では、caller-save register のみを利用すること
可能な限り register coalescing を行い、最適なレジスタ割り当てを行うこと
レジスタ r に割り当てられた変数 x のスタックフレームへの退避/復帰はそれぞれ Save(x, r), Restore(x, r) と書くこと
int sin2(int x)
{
    int tmp1 = sin(x);
    int tmp2 = 2 * tmp1;
    int tmp3 = cos(x);
    int tmp4 = tmp2 * tmp3;
    return tmp4;
}

int sin2(int %edi)
{
  Save(x, %edi);
  int %eax = sin(%edi);
  Restore(x, %edi);
  int %esi = %eax * 2;
  Save(x, %esi);
  int %edx = cos(%eax);
  Restore(x, %esi);
  int %eax = %eax * %edx;
  return %eax;
}