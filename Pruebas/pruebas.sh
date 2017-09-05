#!/bin/bash
echo "==========================COMIENZO PRUEBAS==============================="
echo "=============================TEST 1======================================"
echo "Test 1: Mostramos el mensaje de ayuda usando la opcion -h."
../erat -h
echo ""
echo "============================FIN TEST1===================================="
echo "========================================================================="
echo "=============================TEST 2======================================"
echo "Test 2: Mostramos por stdout los numeros primos menores que -5."
../erat -o - -5
echo ""
echo "============================FIN TEST2===================================="
echo "========================================================================="
echo "=============================TEST 3======================================"
echo "Test 3: Mostramos por stdout los numeros primos menores que 1."
../erat -o - 1 
echo "============================FIN TEST3===================================="
echo "========================================================================="
echo "=============================TEST 4======================================"
echo "Test 4: Mostramos por stdout los numeros primos menores que 10."
../erat -o - 10 
echo "============================FIN TEST4===================================="
echo "========================================================================="
echo "=============================TEST 5======================================"
echo "Test 5: Mostramos por stdout los numeros primos menores que 50."
../erat -o -50
echo "============================FIN TEST5===================================="
echo "========================================================================="
echo "=============================TEST 6======================================"
echo "Test 6: Mostramos por stodut los numeros primos menores que 100."
../erat -o - 100
echo "============================FIN TEST6===================================="
echo "========================================================================="
echo "============================TEST 7======================================="
echo "Test 7: Mostramos en un archivo (out.txt) los nros primos menores que 20."
../erat -o out.txt 20
echo "============================FIN TEST7===================================="
echo "========================================================================="
echo "============================TEST 8======================================="
echo "Test 8: Ingresamos un comando invalido."
../erat - i 10
echo "============================FIN TEST8===================================="
echo "===========================FIN PRUEBAS==================================="