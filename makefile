#Makefile generico para los programas de ensamblador


#programa:
  #g++ programa.s -g -o programa
  
#run:
  #./programa
  
#debugg:
  #gdb programa
  
#clean:
  #rm programa

programa:
  g++ programa.s -g -o programa
  
run:
  ./programa
  
debugg:
  gdb programa
  
clean:
  rm programa
