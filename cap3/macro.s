@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 8/12/21


.macro abs
  tst r0, r0
  negmi r0, r0
  
.endm
.data
var1: .asciz "%d\n"
.text
.global main
//Salvo registros
main: push {r4, lr}
//Primera llamada abs 1
  mov r0, #1
  bl  abs
  mov r1, r0
  ldr r0, =var1
  bl  printf

//Segunda llamada abs (-2)
  mov r0, #-2
  bl  abs
  mov r1, r0
  ldr r0, =var1
  bl  printf

//Tercera llamada abs (3)
  mov r0, #3
  bl  abs
  mov r1, r0
  ldr r0, = var1
  bl  printf

//Cuarta llamada abs (-4)
  mov r0, #-4
  bl  abs
  mov r1, r0
  ldr r0, =var1
  bl  printf
  pop {r4, lr}
  bx  lr

abs:  tst r0, r0 //comprueba el flag de signo
  negmi r0, r0 //si es negativo, negamos de nuevo
  bx  lr
