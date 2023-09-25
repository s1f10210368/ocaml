int foo(int a, int b)
{
    int tmp1 = a - 1;
    int tmp2 = abs(tmp1);
    int tmp3 = b - 1;
    int tmp4 = abs(tmp3);
    int tmp5 = tmp2 + tmp4;
    return tmp5;
}

上記の関数をレジスタ割り当て

1. 呼び出し先の関数での改変が許されていない場合のレジスタ
→ 第一引数から順番に %rdi, %rsi, %rdx, %rcx, %r8

・%rで始まるレジスタ→64ビットレジスタ
・%eで始まるレジスタ→32ビットレジスタ

int foo(int %edi, int %esi)
{
  int %edi = %edi -1;
  Save(b, %edi);
  int %eax = abs(%edi);
  Restore(b, %edi);
  int %esi = %esi -1;
  Save(tmp, %esi);
  int %edx = abs(%esi);
  Restore(tmp, %esi);
  int %eax = %eax + %edx;
  return %eax;
}

int foo(int %edi, int %esi)
{
int %edi = %edi - 1;
Save(b, %esi);          bの値を%esiに保存
int %eax = abs(%edi);
Restore(b, %edi);       %ediの値をbに復元
int %edi = %edi - 1;
Save(tmp2, %eax);
int %eax = abs(%edi);
Restore(tmp2, %X);
int %eax = %eax + %X;
return %eax;
}