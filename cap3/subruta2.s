@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Axel Josue De La Rosa Lopez @nickname: Latzel
@@ Fecha de revision: 26/11/21


.data
var1 : .asciz " %d\ n"
seed : .word 1
const1 : .word 1103515245
const2 : .word 12345

.text
.global main

//se guardan los registros
main : push { r4, r5 }
//llamado a mysrand con parametro 42
  mov r0, #42
