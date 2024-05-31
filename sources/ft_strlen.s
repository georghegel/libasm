global _ft_strlen
 
section .text
_ft_strlen:
  xor rax, rax; take argument of a function
  jmp checker

increment:
  inc   rax

checker:
  cmp BYTE[rdi + rax], 0
  jne increment

done:
  ret
