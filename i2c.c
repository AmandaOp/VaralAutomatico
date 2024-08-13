#define R 1
#define W 0

unsigned char esc_byte_cntr(unsigned char end_disp, __bit RW){
	// Gerar start
	STA=1;
	SI=0;
	while(SI==0);
	
	// Verifica status
	if(SMB0STA != 0x08 && SMB0STA !=0x10){
		return(SMB0STA);
	}
	
	// Transmitir (escrever) end
	SMB0DAT=(end_disp & 0xfe) | RW;		//0xfe - zera bit menos significativo
	STA=0;
	SI=0;
	while(SI==0);
	
	// Verifica se eh escrita
	if(RW==W){
		if(SMB0STA != 0x18){	// escrita do end
			return(SMB0STA);
		}
	}else{
		if(SMB0STA != 0x40){	// leitura do en
			return(SMB0STA);
		}
	}
	return 0;

}


unsigned char esc_byte_dado(unsigned char dado){
	// Carrega dados
	SMB0DAT = dado;
	SI=0;
	while(SI==0);

	if(SMB0STA != 0x28){	// escrita do dado
		return(SMB0STA);
	}

	return 0;
}

unsigned char esc_byte_dado_float(float dado){
	// Carrega dados
	SMB0DAT = dado;
	SI=0;
	while(SI==0);

	if(SMB0STA != 0x28){	// escrita do dado
		return(SMB0STA);
	}

	return 0;
}

int esc_eeprom(unsigned char end_disp, unsigned char end, float dado){
	unsigned char erro_disp, erro;

	// Escrita do end
	erro_disp = esc_byte_cntr(end_disp, W);
	erro = esc_byte_dado(end);

	if(erro_disp==0 && erro==0){
		
		erro = esc_byte_dado_float(dado);
		if(erro!=0){
			return (-(int)SMB0STA);
		}
	
		// Stop
		STO=1;
		SI=0;
		while(STO==1);

		while(1){
			erro = esc_byte_cntr(end_disp, W);
			if(erro==0) break;
			if(erro!=0x20) return (-(int)erro);
		}
		return 0;
	}

	return (-(int)SMB0STA);
}

float le_eeprom(unsigned char end_disp, unsigned char end){
	unsigned char erro_disp, erro;
	float byte;

	// Escrita do end
	erro_disp = esc_byte_cntr(end_disp, W);
	erro = esc_byte_dado(end);

	if(erro_disp==0 && erro==0){
		erro_disp = esc_byte_cntr(end_disp, R);
		if(erro_disp==0){
			AA=0;
			SI=0;
			while(SI==0);

			byte = SMB0DAT;

			// Stop
			STO=1;
			SI=0;
			while(STO==1);

			return byte;
		}
	}

	return (-(int)SMB0STA);
}

void timer4_ISR (void) __interrupt 16
{
	SMB0CN &= ~0x40; // Desabilita SMBus
	SMB0CN |= 0x40; // Habilita SMBus
	TF4 = 0; // Zera flag de interrupcao do TC4
} 