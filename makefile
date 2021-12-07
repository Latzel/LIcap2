#Makefile generico para los programas de ensamblador


#programa:
  #g++ programa.s -g -o programa
  
#run:
  #./programa
  
#debugg:
  #gdb programa
  
#clean:
  #rm programa

ejemplofor:
  g++ ejemplofor.s -g -o ejemplofor
  
run:
  ./ejemplofor
  
debugg:
  gdb ejemplofor
  
clean:
  rm ejemplofor
