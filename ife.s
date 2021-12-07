@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21


.data
.text
.global main

_start:
  mov r1, #1
  mov r2, #2
  cmp r1, r2
  bne else
  
if:
  add r0, r1, #5
  b exit
  
else:
  add r0, r1, #6
  
exit:
  mov r7, #1
  svc 0
