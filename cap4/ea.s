@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 12/12/21
 
  .set GPBASE, 0x20200000
  .set GPFSEL0, 0x00
  .set GPSET0, 0x1c
  .set GPCLR0, 0x28
  
.text
 ldr r0, =GPBASE
//guia bits xx999888777666555444333222111000
 mov r1, #0b00001000000000000000000000000000
 str r1, [r0, #GPFSEL0] //Configura como salida
//guia bits 10987654321098765432109876543210 
bucle: mov  r1, #0b00000000000000000000001000000000
 str r1, [r0, #GPSET0] //Enciende
 mov r1, #0b00000000000000000000001000000000
 str r1, [r0,  #GPCLR0] //Apaga
 b bucle
