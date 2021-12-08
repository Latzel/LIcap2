@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 6/12/21


.text
.global _start

_start:
  mov r1, #1 //r1 toma valor de 1
  mov r2, #2 //r2 toma el valor de 2
  cmp r1, r2 //se hace la comparacion
  bne else //llamada al metodo else
  
if:
  add r0, r1, #5 //Se suma r5 y r1 y se guardan en r0
  b exit
  
else:
  add r0, r1, #6 //Se suma r6 y r1 y se guardan en r0
  
exit: //salida
  mov r7, #1
  svc 0
