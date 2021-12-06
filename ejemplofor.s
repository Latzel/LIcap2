@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21

.data
var1: .asciz "%d\012"

.text
.global main
main: 
  push  {r4, lr}
  mov r4, #0 //Se asigna el valor de 0 a r4
  
bfor: //aqui inicia el ciclo
  mov r1, r4
  ldr r0, =var1
  add r4, r4, #1 //el valor de r4 se convierte a r4 + 1
  bl  printf
  cmp r4, #6 //Comparacion para el ciclo
  bne bfor
  pop {r4, pc}
  pop {r4, pc} 
  /* 
  Se utilizo la simplificacion de:
  pop {r4, lr}
  bx  lr
  
  por:
  pop {r4, pc}
  */
