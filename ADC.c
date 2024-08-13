// Seta AIN0
#define AIN0_0 0
#define AIN0_1 1
#define AIN0_2 2
#define AIN0_3 3

#define HVDA 4
#define AGND 5
#define P3EVEN 6
#define P3ODD 7
#define TEMP_SENSOR 8

// Gain ADC
#define gain1 0
#define gain2 1
#define gain4 2
#define gain8 3
#define gain16 4
#define gain05 7

unsigned int le_adc0(unsigned char canal, unsigned char ganho){
	// Seta ganho
	ADC0CF = (ADC0CF & 0XF8) | ganho;

	// Seta canal
	AMX0SL = canal;
	
	
	// Seta Busy Bit - Inicia conversao AD
	AD0BUSY = 1;
	NOP();

	while(AD0BUSY);

	return (ADC0H<<8 | ADC0L);
}