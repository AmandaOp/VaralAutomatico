// Barramento SPI
#define SCK P0_2
#define MISO P0_3
#define MOSI P0_4
#define CS P2_3

void esc_RAM_SPI (unsigned int end, unsigned char dado){
	unsigned char end_l, end_h;
	WDTCN = 0xa5;
	end_l = end;
	end_h = end >> 8;

	CS=0;

	SPI0DAT = 0x02;
	while(!TXBMT);

	SPI0DAT = end_h;	//Pega 8 bits mais significativos
	while(!TXBMT);

	SPI0DAT = end_l;	//Pega 8 bits menos significativos
	while(!TXBMT);

	WDTCN = 0xa5;

	SPI0DAT = dado;		//Passa dado
	while(!TXBMT);

	SPIF=0;
	while(!SPIF);
	SPIF=0;

	CS=1;
	WDTCN = 0xa5;
}

unsigned char le_RAM_SPI (unsigned int end){
	unsigned char end_l, end_h;
	WDTCN = 0xa5;
	end_l = end;
	end_h = end >> 8;

	CS=0;

	SPI0DAT = 0x03;
	while(!TXBMT);

	SPI0DAT = end_h;	//Pega 8 bits mais significativos
	while(!TXBMT);

	SPI0DAT = end_l;	//Pega 8 bits menos significativos
	while(!TXBMT);
	
	WDTCN = 0xa5;

	SPI0DAT = 0x00;		//Passa lixo de memoria
	while(!TXBMT);

	SPIF=0;
	while(!SPIF);
	SPIF=0;

	CS=1;

	WDTCN = 0xa5;
	return(SPI0DAT);
}

// posicao 1 -> 0 (manual)
// posicao 2 -> 0 (varal recolhido)
void preenche_RAM_SPI() {
	unsigned int i;
	
	for(i=0;i<255;i++){
		WDTCN = 0xa5;
		esc_RAM_SPI(i, 0);
	}

}