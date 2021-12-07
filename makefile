#Makefile generico para los programas de ensamblador


#programa:
  #g++ programa.s -g -o programa
  
#run:
  #./programa
  
#debugg:
  #gdb programa
  
#clean:
  #rm programa

sumavectores:
  g++ sumavectores.s -g -o sumavectores
  
run:
  ./sumavectores
  
debugg:
  gdb sumavectores
  
clean:
  rm sumavectores
