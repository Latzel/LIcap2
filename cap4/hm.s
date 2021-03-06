@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 12/12/21

.data
cadena: .asciz "Hola Mundo!\n "
cadenafin:
.text
.global main

main: push { r7, lr }            //preservamos reg. 
  mov r0, #1 
  ldr r1, =cadena                 //cadena a enviar 
  mov r2, #cadenafin - cadena     //longitud 
  mov r7, #4
  swi #0                          //llamada a sistema "write"
  mov r0, #0 //devolvemos ok
  pop {r7, lr}                    //recuperamos reg.
  bx  lr                          //salida
