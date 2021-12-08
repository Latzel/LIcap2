@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 6/12/21

.data
var1: .word 3
puntero_var1: var1
//Se define el puntero como var1


.text
.global main

main: ldr r0, =puntero_var1 /*Son necesarios dos ldr para accerder al valor del puntero*/
  ldr r1, [r0]
  ldr r2, [r1]
  //En este punto los valores de r1 y r3 son iguales
  ldr r3, =var1
  bx  lr
