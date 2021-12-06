@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21


.data
.text
.global main

main:
  ldr r1, =a
  ldr r1, [r1]
  ldr r2, =b
  ldr r2, [r2]
  cmp r1, r2
  
sisi:
  mov r1, #1
  b final
  
sino:
  mov r1, #0
  
final:  bx lr
