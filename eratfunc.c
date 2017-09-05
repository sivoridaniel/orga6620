#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "eratfunc.h"

//Llena el arreglo con los números necesarios del 2 al máximo estipulado.
void inicializarNumerosPrimos(int tope, int arreglo[]){
	
	int valor = INICIO_VALOR;
        int posicion;
	for (posicion = INICIO_ARRAY; posicion <= tope; posicion++){
		valor++;
		arreglo[posicion] = valor;
	}
}

//Realiza el proceso de la Criba de Eratóstenes para encontrar los números primos.
void encontrarNumerosPrimos(int tope, int arreglo[]){
	
	inicializarNumerosPrimos(tope, arreglo);
	int posicionPivote;
	for(posicionPivote = INICIO_ARRAY; (posicionPivote * posicionPivote) <= tope; posicionPivote++) {
       if(arreglo[posicionPivote] != CAMPO_VACIO) {
	   int posicionMovil;
           for( posicionMovil = INICIO_ARRAY; (posicionPivote * posicionMovil) <= tope; posicionMovil++){
				arreglo[posicionPivote*posicionMovil] = CAMPO_VACIO;
			}
		}
	}
}

void imprimirPorPantalla(int tope, int arreglo[]){
	int i;
	for (i = INICIO_ARRAY; i <= tope; i++){
		if (arreglo[i] != CAMPO_VACIO){
			printf("%d  ", arreglo[i]);
		}
	}
	printf("\n");
}

int generarArchivo(int tope, int arreglo[],const char* name){
	FILE *archivo;
	archivo = fopen (name, "w");
	if(archivo != 0){
		int i;
		for (i = INICIO_ARRAY; i <= tope; i++){
			if (arreglo[i] != CAMPO_VACIO){
				fprintf ( archivo, "%d\n", arreglo[i]);
			}
		}
		fclose(archivo);
	   return TODO_OK;
	}else{
	   return ERROR_NOMBRE_ARCH_INVALIDO;
	}
}

void mostrarVersion(){
	printf("ERAT version 1.0 \n");	
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

int validarArgumentos(int argc, char **argv){
	if (strcmp(argv[OPCION], "-h") != CORRECTO){
		if (strcmp(argv[OPCION], "-V") != CORRECTO){
			if (strcmp(argv[OPCION], "-o") != CORRECTO){
				if (strcmp(argv[OPCION], "-") != CORRECTO) {
					return ERROR_COMANDO_INVALIDO;
				}
			}
		}
	}

	if (argc == TODOS_LOS_ARGUMENTOS){
		if ((atoi(argv[ENTERO_POS_3]) > MAXIMO) || (atoi(argv[ENTERO_POS_3]) < MINIMO)){
			return ERROR_FUERA_DE_RANGO;
		}
	}
	
	return TODO_OK;		
}		


int realizarAccion(int argc, char **argv){

	if (strcmp(argv[OPCION], "-h") == CORRECTO){ 
		mostrarAyuda();
		return TODO_OK;
	} 
	else {
		if (strcmp(argv[OPCION], "-V") == CORRECTO){
			mostrarVersion();
			return TODO_OK;
		}
		else {
				int cantArgumentos = (argc-1);
				char qPos2=((cantArgumentos)==2)?*argv[ENTERO_POS_2]:0;
				char qPos3=((cantArgumentos)==3)?*argv[ENTERO_POS_3]:0;
                                int posEntero = (qPos2>=48&&qPos2<=57)?2:((qPos3>=48&&qPos3<=57)?3:0);
				int tope = (posEntero!=0)?atoi(((posEntero==2)?argv[ENTERO_POS_2]:argv[ENTERO_POS_3])):0;
                                if(posEntero!=0){
					int arreglo[tope];
					encontrarNumerosPrimos(tope,arreglo);
					if ((strcmp(argv[OPCION], "-o") == CORRECTO)
					    && (strcmp(argv[OPCION_1], "-") == CORRECTO)){
					        imprimirPorPantalla(tope,arreglo);
                                                return TODO_OK;
					}else if(strcmp(argv[OPCION],"-o") == CORRECTO){
						return generarArchivo(tope,arreglo,argv[OPCION_1]);
					}
				}
		}
	}
	return ERROR_COMANDO_INVALIDO;
} 		
