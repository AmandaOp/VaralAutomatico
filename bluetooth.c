//Conectar m�dulo na placa
//Conectar bluetooth do celular com m�dulo
//Conectar no app do celular

volatile unsigned char flag = 0;
volatile unsigned char leitura;

void putchar(char c){
	SBUF0 = c;
	while(!TI0); // flag de interrupcao para transmissao RS-232 
	TI0=0;
	WDTCN = 0xa5;
}
 
// interrup??o - Comunica??o serial-UART0
void isr_UART0(void) __interrupt 4{ 
	if(RI0==1){
		flag=1; // setar variavel global que indica leitura
		leitura=SBUF0;
		RI0=0;
	}
}