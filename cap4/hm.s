.data
cadena: .asciz " Hola Mundo !\n "
cadenafin:
.text
.global main

main: push { r7, lr } //preservamos reg. 
movr0, #1 //salida est á ndar 
ldrr1, =cadena //cadena a enviar 
movr2, #cadenafin - cadena //longitud 
movr7, #4 //seleccionamos la 
swi#0 //llamada a sistema ’write ’
movr0, #0 //devolvemos ok */
pop{ r7, lr} //recuperamos reg.
bxlr //salimos de main
