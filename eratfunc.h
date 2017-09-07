#define MAXIMO 4096
#define MINIMO 2

#define CAMPO_VACIO 0
#define INICIO_VALOR 1
#define INICIO_ARRAY 2

#define TODO_OK 0
#define ERROR_FUERA_DE_RANGO 1
#define ERROR_COMANDO_INVALIDO 2
#define ERROR_NOMBRE_ARCH_INVALIDO 4

#define CORRECTO 0
#define OPCION 1
#define OPCION_1 2
#define ENTERO_POS_2 2
#define ENTERO_POS_3 3
#define DOS_ARGUMENTOS 2
#define TRES_ARGUMENTOS 3
#define TODOS_LOS_ARGUMENTOS 4

#define ALGUN_PROBLEMA 0

//Pre: Se ingresa el tope hasta el cual se calcularan los numeros primos y un arreglo de enteros no inicializado.
//Pos: El arreglo se encuentra cargado con todos los numeros correspondientes hasta el valor tope. 
void inicializarNumerosPrimos(int tope, int arreglo[]);

//Pre: Se ingresa el arreglo y su cantidad maxima de elementos.
//Pos: Los valores distintos a cero en el rreglo seran los numeros primos buscados. 
void encontrarNumerosPrimos(int tope, int arreglo[]);


//Pre: Se ingresa el arreglo y su cantidad maxima de elementos.
//Pos: Se imprimen por pantalla los numeros primos.
void imprimirPorPantalla(int tope, int arreglo[]);

//Pre: Se ingresa el arreglo y su cantidad maxima de elementos.
//Pos: Se crea un archivo de texto en el cual se guardaran los numeros primos.
int generarArchivo(int tope, int arreglo[], const char* name);

//Imprime por pantalla las instrucciones de uso de erat
void mostrarAyuda();

//Imprime por pantalla la version de erat
void mostrarVersion();

//Verifica que los argumentos sean -h, -V, -o N, - N; donde N es un entero mayor que 2 y menor que el maximo (yo puse 4096).
//Devuelve: 1 si el entero se escapa del rango predeterminado.
//			2 si no se ingresaron comando validos.
//			0 si todos los argumentos son validos y se puede proceder.
int validarArgumentos(int argc, char **argv);

//Realizara alguna de las acciones:
//	-h muestra el menu de ayuda.
//	-V muestra la version.
//	-o muestra por pantalla y crea un archivo.
//	-  muestra por pantalla.
int realizarAccion(int argc, char **argv);
