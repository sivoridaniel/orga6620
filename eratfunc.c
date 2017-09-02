#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "eratfunc.h"

//Llena el arreglo con los números necesarios del 2 al máximo estipulado.
void inicializarNumerosPrimos(int tope, int arreglo[]){
	
	int valor = INICIO_VALOR;
	for (int posicion = INICIO_ARRAY; posicion <= tope; posicion++){
		valor++;
		arreglo[posicion] = valor;
	}
}

//Realiza el proceso de la Criba de Eratóstenes para encontrar los números primos.
void encontrarNumerosPrimos(int tope, int arreglo[]){
	
	inicializarNumerosPrimos(tope, arreglo);
	for(int posicionPivote = INICIO_ARRAY; (posicionPivote * posicionPivote) <= tope; posicionPivote++) {
       if(arreglo[posicionPivote] != CAMPO_VACIO) {
           for( int posicionMovil = INICIO_ARRAY; (posicionPivote * posicionMovil) <= tope; posicionMovil++){
				arreglo[posicionPivote*posicionMovil] = CAMPO_VACIO;
			}
		}
	}
}

void imprimirPorPantalla(int tope, int arreglo[]){
	for (int i = INICIO_ARRAY; i <= tope; i++){
		if (arreglo[i] != CAMPO_VACIO){
			printf("%d  ", arreglo[i]);
		}
	}
	printf("\n");
}

void generarArchivo(int tope, int arreglo[]){
	FILE *archivo;
	archivo = fopen ("Numeros Primos.txt", "w");
	
	for (int i = INICIO_ARRAY; i <= tope; i++){
		if (arreglo[i] != CAMPO_VACIO){
			fprintf ( archivo, "%d\n", arreglo[i]);
		}
	}
	
	fclose(archivo);
}

void mostrarVersion(){
	printf("ERAT version 1.1 \n");	
}

void mostrarAyuda(){
	printf("Usage: \n");
	printf("	erat -h\n");
	printf("	erat -V\n");
	printf("	erat [options] N\n");
	printf("Options:\n");
	printf("	-h,		--help		Prints usage information.\n");
	printf("	-V,		--version	Prints version information.\n");
	printf("	-o,		--output	Path to output file.;\n");	
}

//Se verifica que los parámetros ingresados sigan el formato predeterminado
int validarArgumentos(int argc, char **argv){
	if ((argc > TODOS_LOS_ARGUMENTOS) || (argc < DOS_ARGUMENTOS)){
		return ERROR_COMANDO_INVALIDO;
	}
	
	if (strcmp(argv[OPCION], "-h") != CORRECTO){
		if (strcmp(argv[OPCION], "-V") != CORRECTO){
			if (strcmp(argv[OPCION], "-o") != CORRECTO){
				return ERROR_COMANDO_INVALIDO;
			}
		}
	}
	else {
		if (argc > DOS_ARGUMENTOS) {
			return ERROR_COMANDO_INVALIDO;
		}
	}
	
	if (argc == TODOS_LOS_ARGUMENTOS){
		if (strcmp(argv[ENTERO_POS_2], "-") != CORRECTO){
			return ERROR_COMANDO_INVALIDO;
		}
		if ((atoi(argv[ENTERO_POS_3]) > MAXIMO) || (atoi(argv[ENTERO_POS_3]) < MINIMO)){
			return ERROR_FUERA_DE_RANGO;
		}
	}
	
	if (argc == TRES_ARGUMENTOS){
		if ((atoi(argv[ENTERO_POS_2]) > MAXIMO) || (atoi(argv[ENTERO_POS_2]) < MINIMO)){
			return ERROR_FUERA_DE_RANGO;
		}
	}
	return TODO_OK;		
}		

//Se realiza la acción previamente validada, ya sea mostrar la versión, la ayuda o hallar los números primos.
void realizarAccion(int argc, char **argv){
	if (strcmp(argv[OPCION], "-h") == CORRECTO){ 
		mostrarAyuda();
	} 
	else {
		if (strcmp(argv[OPCION], "-V") == CORRECTO){
			mostrarVersion();
		}
		else {
			int tope;
			if (argc == TRES_ARGUMENTOS){
				tope = atoi(argv[ENTERO_POS_2]);
			}
			else {
				tope = atoi(argv[ENTERO_POS_3]);
			}
			int arreglo[tope];
			encontrarNumerosPrimos(tope,arreglo);
			if ((strcmp(argv[OPCION], "-o") == CORRECTO) && (strcmp(argv[OPCION_1], "-") == CORRECTO)){
					imprimirPorPantalla(tope,arreglo);
			}
			else {
				if(strcmp(argv[OPCION],"-o") == CORRECTO){
					generarArchivo(tope,arreglo);
				}
			}
		}
	}
}
	
