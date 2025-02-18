#include "def_pinos.h"

#define PORTB P3

unsigned char HOR[4] = {0x09,0x03,0x06,0x0C};    // Matriz dos bytes das Fases do Motor - sentido Hor�rio Full Step
unsigned char AHO[4] = {0x0C,0x06,0x03,0x09};    // Matriz dos bytes das Fases do Motor - sentido Anti-Hor�rio Full Step
int atraso_fase = 2 ;                   // Intervalo de tempo entre as fases em milisegundos - min 2 para Full Step 

// Movimento no sentido anti-hor�rio  
void Motor_AHO(){
	int i,j;
	for(i = 0; i < 512; i++){      // incrementa o contador i de 0 a 511 - uma volta
		for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
			PORTB = AHO[j];               // Carrega bytes da Matriz AHO na Porta B 
			delay_ms(atraso_fase);          // Atraso de tempo entre as fases em milisegundos
		}
	}    
}

void Motor_HOR(){                   // Movimento no sentido hor�rio 
	int i,j;
 	for(i = 0; i < 512; i++){      // incrementa o contador i de 0 a 511 - uma volta
	    for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
	      PORTB = HOR[j];               // Carrega bytes da Matriz HOR na Porta B 
	      delay_ms(atraso_fase);          // Atraso de tempo entre as fases em milisegundos
	    }
	}
}