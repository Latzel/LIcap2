@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21


.macro abs
  tst r0, r0
  negmi r0, r0
  
.endm
.data
var1: .asciz "%d\ n"
.text
.global main
//Salvo registros
main: push {r4, lr}
//Primera llamada abs 1
mov r0, #1
bl  abs
//Imprimo primera llamada
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
movr0, #3
blabs
movr1, r0
ldrr0, = var1
blprintf
//Cuarta llamada abs ( -4) e imprimo
movr0, #-4
blabs
movr1, r0
ldrr0, =var1
blprintf
pop{r4, lr}
bxlr
abs:tst r0, r0 //comprueba el flag de signo
negmir0, r0 //si es negativo, negamos de nuevo
bxlr
