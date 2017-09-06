#!/bin/bash
echo ""
echo "==========================COMIENZO PRUEBAS==============================="
echo ""
echo "=============================TEST 1======================================"
echo "Test 1: Mostramos el mensaje de ayuda usando la opcion -h."
./erat -h
echo ""
echo "============================FIN TEST 1===================================="
echo ""
echo "=============================TEST 2======================================"
echo "Test 2: Se retorna un codigo de error por haber ingresado un numero negativo."
./erat -o - -5
echo ""
echo "============================FIN TEST 2===================================="
echo ""
echo "=============================TEST 3======================================"
echo "Test 3: Mostramos por stdout los numeros primos menores que 1."
./erat -o - 1 
echo "============================FIN TEST 3===================================="
echo ""
echo "=============================TEST 4======================================"
echo "Test 4: Mostramos por stdout los numeros primos menores que 10."
./erat -o - 10 
echo "============================FIN TEST 4===================================="
echo ""
echo "=============================TEST 5======================================"
echo "Test 5: Mostramos por stdout los numeros primos menores que 50."
./erat -o - 50
echo "============================FIN TEST 5===================================="
echo ""
echo "=============================TEST 6======================================"
echo "Test 6: Mostramos por stodut los numeros primos menores que 100."
./erat -o - 100
echo "============================FIN TEST 6===================================="
echo ""
echo "============================TEST 7======================================="
echo "Test 7: Mostramos en un archivo (out.txt) los nros primos menores que 20."
./erat -o out.txt 20
echo "============================FIN TEST 7===================================="
echo ""
echo "============================TEST 8======================================="
echo "Test 8: Mostramos la versión del Erat usando la opción -V."
./erat -V
echo "============================FIN TEST 8===================================="
echo ""
echo "============================TEST 9======================================="
echo "Test 9: Ingresamos un comando invalido (./erat -i 10)."
./erat -i 10
echo "============================FIN TEST 9===================================="
echo ""
echo "============================TEST 10======================================="
echo "Test 10: Ingresamos un argumento extra en la opción -h (./erat -h 10)."
./erat -h 10
echo "============================FIN TEST 10===================================="
echo ""
echo "============================TEST 11======================================="
echo "Test 11: Ingresamos un comando invalido (./erat aaa - ccc )."
./erat aaa bbb ccc
echo "============================FIN TEST 11===================================="
echo ""
echo "============================TEST 12======================================="
echo "Test 12: No pasamos ningún parámetro (./erat)."
./erat
echo "============================FIN TEST 12===================================="
echo ""
echo "============================TEST 13======================================="
echo "Test 13: No pasamos el parámetro número en la opción -o (./erat -o)."
./erat -o
echo "============================FIN TEST 13===================================="
echo ""
echo "============================TEST 14======================================="
echo "Test 14: No pasamos el nombre del archivo en la opción -o (./erat -o 100)."
./erat -o 100
echo "============================FIN TEST 14===================================="
echo ""
echo "============================TEST 15======================================="
echo "Test 15: Pasamos letras en lugar del número (./erat -o - sss)."
./erat -o - sss
echo "============================FIN TEST 15===================================="
echo ""
echo "===========================FIN PRUEBAS==================================="
echo ""
