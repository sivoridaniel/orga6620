#define MAXIMO 4096
#define MINIMO 2

#define CAMPO_VACIO 0
#define INICIO_VALOR 1
#define INICIO_ARRAY 2

#define TODO_OK 0
#define ERROR_FUERA_DE_RANGO 1
#define ERROR_COMANDO_INVALIDO 2

#define CORRECTO 0
#define OPCION 1
#define OPCION_1 2
#define ENTERO_POS_2 2
#define ENTERO_POS_3 3
#define DOS_ARGUMENTOS 2
#define TRES_ARGUMENTOS 3
#define TODOS_LOS_ARGUMENTOS 4

//Pre: Se ingresa el tope hasta el cual se calcularán los números primos y un arreglo de enteros no inicializado.
//Pos: El arreglo se encuentra cargado con todos los números correspondientes hasta el valor tope. 
void inicializarNumerosPrimos(int tope, int arreglo[]);

//Pre: Se ingresa el arreglo y su cantidad máxima de elementos.
//Pos: Los valores distintos a cero en el rreglo serán los números primos buscados. 
void encontrarNumerosPrimos(int tope, int arreglo[]);


//Pre: Se ingresa el arreglo y su cantidad máxima de elementos.
//Pos: Se imprimen por pantalla los números primos.
void imprimirPorPantalla(int tope, int arreglo[]);

//Pre: Se ingresa el arreglo y su cantidad máxima de elementos.
//Pos: Se crea un archivo de texto en el cual se guardarán los números primos.
void generarArchivo(int tope, int arreglo[]);

//Imprime por pantalla las instrucciones de uso de erat
void mostrarAyuda();

//Imprime por pantalla la versión de erat
void mostrarVersion();

//Verifica que los argumentos sean -h, -V, -o N, - N; donde N es un entero mayor que 2 y menor que el máximo (yo puse 4096).
//Devuelve: 1 si el entero se escapa del rango predeterminado.
//			2 si no se ingresaron comando válidos.
//			0 si todos los argumentos son válidos y se puede proceder.
int validarArgumentos(int argc, char **argv);

//Realizará alguna de las acciones:
//	-h muestra el menú de ayuda.
//	-V muestra la versión.
//	-o muestra por pantalla y crea un archivo.
//	-  muestra por pantalla.
void realizarAccion(int argc, char **argv);
