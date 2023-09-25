以下のレジスタ割り当て後のコード断片を x64 アセンブリに変換せよ。


if (%eax == %ebx) {
   %ecx = %ecx + 2;
}
else {
   %ecx = %ecx - 3;
}

  cmp %eax, &ebx
  jne .L1
  add $1, %ecx
  jmp .L2
.L1:
  sub $1, %ecx
.L2: