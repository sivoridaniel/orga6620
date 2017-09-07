#include <stdio.h>
#include "eratfunc.h"


int main(int argc, char **argv){
	int alerta = validarArgumentos(argc, argv);
	if (alerta == TODO_OK){
		alerta = realizarAccion(argc, argv);
	}	
	return alerta;
}


