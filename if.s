@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21


.data
.text
.global main

main:
  ldr r1, =a //r1 es a
  ldr r1, [r1]
  ldr r2, =b //r2 es b
  ldr r2, [r2]
  cmp r1, r2 //se comparan
  
sisi: //en caso de que se cumpla, r1 se hace 1
  mov r1, #1
  b final
  
sino: //en caso de no cumplirse r1 es 0
  mov r1, #0
  
final:  bx lr //imprimimos el valor final
