#include "config.c"
#include "def_pinos.h"
#include "utils.c"
#include "stdio.h"
#include "RAM_SPI.c"
#include "ADC.c"
#include "bluetooth.c"

#define noite 1
#define dia 0
#define acende 1
#define apaga 0

#define PORTB P3

volatile unsigned char autom;
volatile unsigned char manual;
volatile unsigned char estado_varal;

unsigned char HOR[4] = {0x09,0x03,0x06,0x0C};    // Matriz dos bytes das Fases do Motor - sentido Horário Full Step
unsigned char AHO[4] = {0x0C,0x06,0x03,0x09};    // Matriz dos bytes das Fases do Motor - sentido Anti-Horário Full Step


// Movimento no sentido anti-horário  
void exporVaral(){
	int i,j;
	printf_fast_f("MOTOR_AHO \n");
	for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
		for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
			PORTB = AHO[j];               // Carrega bytes da Matriz AHO na Porta B 
			delay_ms(3);          // Atraso de tempo entre as fases em milisegundos
		}
	}    
}

void recolherVaral(){                   // Movimento no sentido horário 
	int i,j;
	printf_fast_f("MOTOR_HOR \n");
 	for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
	    for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
	      PORTB = HOR[j];               // Carrega bytes da Matriz HOR na Porta B 
	      delay_ms(3);          // Atraso de tempo entre as fases em milisegundos
	    }
	}
}

void controlaLuzes(void){
	unsigned int read;

	read = le_adc0(AIN0_1, gain05);
	//printf_fast_f("ADC0 = %d    \n", read);	

	if(read < 1000){
		//printf_fast_f("NOITE \n");
		//printf_fast_f("%u \n",read);
		P0_5=noite;
	}else{
		//printf_fast_f("DIA \n");
		//printf_fast_f("%u \n",read);
		P0_5=dia;
	}
	delay_ms(2);
}

void modoAutomatico(void){
	autom=1; //le_RAM_SPI(1);
	printf_fast_f("Automatico \n");
	while(autom){
		if(flag){
			if(leitura=='M'){
				printf_fast_f("Alterando para manual \n");
				esc_RAM_SPI(1,0);
				autom=0;
			}
			
			flag=0;
		}
		WDTCN = 0xa5;
		// Implementacao automatico
		estado_varal = le_RAM_SPI(2);
		if(!P1_0){
			if(estado_varal){
				esc_RAM_SPI(2,0);
				printf_fast_f("varal recolhido automaticamente \n");
				// recolher
				recolherVaral();

			}
		}else{
			if(!estado_varal){
				esc_RAM_SPI(2,1);
				printf_fast_f("varal exposto automaticamente \n");
				//expor
				exporVaral();
			}
		}
		WDTCN = 0xa5;

		// Acender ou apagar luzes
		controlaLuzes();
	}

	delay_ms(500);
	
}

void modoManual(void){
	manual=1;
	printf_fast_f("Manual \n");

	printf_fast_f("MENU DE COMANDOS: \n");
	printf_fast_f("E) Expor varal \n");
	printf_fast_f("R) Recolher varal \n");
	printf_fast_f("A) Modo automatico \n");
	
	while(manual){
		if(flag){
			estado_varal = le_RAM_SPI(2);
			WDTCN = 0xa5;
			if(leitura=='A'){
				// Comando A para setar modo (estado) Automatico
				printf_fast_f("Alterando para automatico \n");
				esc_RAM_SPI(1,1);
				manual=0;
			}

			else if(leitura=='E'){
				// Comando E para expor o varal
				//printf_fast_f("Varal sendo exposto.\n");
				if(!estado_varal){
					esc_RAM_SPI(2,1);
					printf_fast_f("Varal exposto manualmente \n");
					//expor
					exporVaral();
				}else{
					printf_fast_f("O varal ja esta exposto.\n");
				}
			}

			else if(leitura=='R'){
				// Comando R para recolher o varal
				//printf_fast_f("Varal sendo recolhido.\n");
				if(estado_varal){
					esc_RAM_SPI(2,0);
					printf_fast_f("Varal recolhido manualmente \n");
					//recolhe
					recolherVaral();
				}else{
					printf_fast_f("O varal ja esta recolhido.\n");
				}
			}

			else if(leitura=='H'){
				// Comando H para acessar o menu que apresenta comandos validos
				printf_fast_f("MENU DE COMANDOS: \n");
				printf_fast_f("E) Expor varal \n");
				printf_fast_f("R) Recolher varal \n");
				printf_fast_f("A) Modo automatico \n");
			}

			else{
				printf_fast_f("Comando invalido. \n");
				printf_fast_f("Pressione H para comandos validos. \n");
			}

			flag=0;		
		}
		// Acender ou apagar luzes
		controlaLuzes();
	}

	delay_ms(500);	
}


void main(void){
	unsigned char dado;

	Init_Device();
	SFRPAGE=LEGACY_PAGE;

	printf_fast_f("COMECOU \n");

	// RAM_SPI
	preenche_RAM_SPI();

	while(1){
		dado = le_RAM_SPI(1);
		WDTCN = 0xa5;
		if(dado){
			modoAutomatico();
		}else{
			modoManual();
		}
	}
}



	/*
	Modo manual - 0;
	Modo automatico - 1;
	*/
	
	/* MENU 
	1. Comando R para recolher o varal;
	2. Comando E para expor o varal;
	3. Comando M para setar modo (estado) Manual; ok
	4. Comando A para setar modo (estado) Automatico; ok
	5. Comando H para acessar o menu que apresenta comandos validos;
	*/
	

/*
P0_5 - Led
P1_1 - Laser
P1_0 - Sensor Chuva
AIN0_1 - LDR telhado
*/