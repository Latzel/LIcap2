@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21

.data
var1: .word 3
puntero_var1: var1


.text
.global main

main: ldr r0, =puntero_var1 
  ldr r1, [r0]
  ldr r2, [r1]
  ldr r3, =var1
  bx  lr
