  .set GPBASE, 0x20200000
  .set GPFSEL0, 0x00
  .set GPSET0, 0x1c
  .set GPCLR0, 0x28
  .set STBASE, 0x20003000
  .set STCLO, 0x04
  
.text
ldrr0, =GPBASE
//guia bits xx999888777666555444333222111000
movr1, #0b00001000000000000000000000000000
strr1, [r0, #GPFSEL0] //Configura GPIO 9
//guia bits 10987654321098765432109876543210
movr1, #0b00000000000000000000001000000000
ldrr2, =STBASE
bucle: blespera //Salta a rutina de espera
strr1, [r0, #GPSET0]
blespera //salta a rutina de espera
strr1, [r0, #GPCLR0 ]
bbucle
//rutina que espera medio segundo
espera:ldrr3, [r2, #STCLO ] //Lee contador en r3
ldrr4, =500000
addr4, r3 //r4= r3+ medio millón
ret1:ldrr3, [r2, #STCLO]
cmpr3,r4 //leemos CLO hasta alcanzar
bneret1 //el valor de r4
bxlr
