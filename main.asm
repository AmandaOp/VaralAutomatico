;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _le_adc0_PARM_2
	.globl _esc_RAM_SPI_PARM_2
	.globl _main
	.globl _modoManual
	.globl _modoAutomatico
	.globl _controlaLuzes
	.globl _recolherVaral
	.globl _exporVaral
	.globl _isr_UART0
	.globl _le_adc0
	.globl _preenche_RAM_SPI
	.globl _le_RAM_SPI
	.globl _esc_RAM_SPI
	.globl _printf_fast_f
	.globl _delay_ms
	.globl _Init_Device
	.globl _Interrupts_Init
	.globl _Oscillator_Init
	.globl _Port_IO_Init
	.globl _Voltage_Reference_Init
	.globl _DAC_Init
	.globl _ADC_Init
	.globl _SPI_Init
	.globl _SMBus_Init
	.globl _UART_Init
	.globl _Timer_Init
	.globl _P7_7
	.globl _P7_6
	.globl _P7_5
	.globl _P7_4
	.globl _P7_3
	.globl _P7_2
	.globl _P7_1
	.globl _P7_0
	.globl _P6_7
	.globl _P6_6
	.globl _P6_5
	.globl _P6_4
	.globl _P6_3
	.globl _P6_2
	.globl _P6_1
	.globl _P6_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _CANTEST
	.globl _CANCCE
	.globl _CANDAR
	.globl _CANIF
	.globl _CANEIE
	.globl _CANSIE
	.globl _CANIE
	.globl _CANINIT
	.globl _SPIEN
	.globl _TXBMT
	.globl _NSSMD0
	.globl _NSSMD1
	.globl _RXOVRN
	.globl _MODF
	.globl _WCOL
	.globl _SPIF
	.globl _AD2WINT
	.globl _AD2CM0
	.globl _AD2CM1
	.globl _AD2CM2
	.globl _AD2BUSY
	.globl _AD2INT
	.globl _AD2TM
	.globl _AD2EN
	.globl _AD0LJST
	.globl _AD0WINT
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _AD0TM
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CPRL4
	.globl _CT4
	.globl _TR4
	.globl _EXEN4
	.globl _EXF4
	.globl _TF4
	.globl _CPRL3
	.globl _CT3
	.globl _TR3
	.globl _EXEN3
	.globl _EXF3
	.globl _TF3
	.globl _CPRL2
	.globl _CT2
	.globl _TR2
	.globl _EXEN2
	.globl _EXF2
	.globl _TF2
	.globl _LEC0
	.globl _LEC1
	.globl _LEC2
	.globl _TXOK
	.globl _RXOK
	.globl _EPASS
	.globl _EWARN
	.globl _BOFF
	.globl _SMBTOE
	.globl _SMBFTE
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _ENSMB
	.globl _BUSY
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _EA
	.globl _RI1
	.globl _TI1
	.globl _RB81
	.globl _TB81
	.globl _REN1
	.globl _MCE1
	.globl _S1MODE
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _SM20
	.globl _SM10
	.globl _SM00
	.globl _CP2HYN0
	.globl _CP2HYN1
	.globl _CP2HYP0
	.globl _CP2HYP1
	.globl _CP2FIF
	.globl _CP2RIF
	.globl _CP2OUT
	.globl _CP2EN
	.globl _CP1HYN0
	.globl _CP1HYN1
	.globl _CP1HYP0
	.globl _CP1HYP1
	.globl _CP1FIF
	.globl _CP1RIF
	.globl _CP1OUT
	.globl _CP1EN
	.globl _CP0HYN0
	.globl _CP0HYN1
	.globl _CP0HYP0
	.globl _CP0HYP1
	.globl _CP0FIF
	.globl _CP0RIF
	.globl _CP0OUT
	.globl _CP0EN
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl __XPAGE
	.globl _DP
	.globl _ADC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _TMR4
	.globl _TMR3
	.globl _TMR2
	.globl _RCAP4
	.globl _RCAP3
	.globl _RCAP2
	.globl _DAC1
	.globl _DAC0
	.globl _CAN0DAT
	.globl _PCA0CP5
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _WDTCN
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _P7
	.globl _CAN0CN
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _P6
	.globl _ADC2CN
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _XBR3
	.globl _XBR2
	.globl _XBR1
	.globl _PCA0CPH5
	.globl _XBR0
	.globl _PCA0CPL5
	.globl _ACC
	.globl _PCA0CPM5
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _CAN0TST
	.globl _PCA0CPM1
	.globl _CAN0ADR
	.globl _PCA0CPM0
	.globl _CAN0DATH
	.globl _PCA0MD
	.globl _P5
	.globl _CAN0DATL
	.globl _PCA0CN
	.globl _HVA0CN
	.globl _DAC1CN
	.globl _DAC0CN
	.globl _DAC1H
	.globl _DAC0H
	.globl _DAC1L
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TMR4H
	.globl _TMR3H
	.globl _TMR2H
	.globl _TMR4L
	.globl _TMR3L
	.globl _TMR2L
	.globl _RCAP4H
	.globl _RCAP3H
	.globl _RCAP2H
	.globl _RCAP4L
	.globl _RCAP3L
	.globl _RCAP2L
	.globl _TMR4CF
	.globl _TMR3CF
	.globl _TMR2CF
	.globl _P4
	.globl _TMR4CN
	.globl _TMR3CN
	.globl _TMR2CN
	.globl _ADC0LTH
	.globl _ADC2LT
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC2GT
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _CAN0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC2
	.globl _ADC0L
	.globl _ADC2CF
	.globl _ADC0CF
	.globl _AMX2SL
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _AMX0PRT
	.globl _AMX2CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P3
	.globl _P3MDIN
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _SADDR1
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _EMI0CF
	.globl _EMI0CN
	.globl _EMI0TC
	.globl _P2
	.globl _P7MDOUT
	.globl _P6MDOUT
	.globl _P5MDOUT
	.globl _SPI0CKR
	.globl _P4MDOUT
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF1
	.globl _SBUF0
	.globl _SCON1
	.globl _SCON0
	.globl _CLKSEL
	.globl _SFRPGCN
	.globl _SSTA0
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _OSCXCN
	.globl _TH0
	.globl _OSCICL
	.globl _TL1
	.globl _OSCICN
	.globl _TL0
	.globl _CPT2MD
	.globl _CPT1MD
	.globl _CPT0MD
	.globl _TMOD
	.globl _CPT2CN
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _TCON
	.globl _PCON
	.globl _SFRLAST
	.globl _SFRNEXT
	.globl _SFRPAGE
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _AHO
	.globl _HOR
	.globl _estado_varal
	.globl _manual
	.globl _autom
	.globl _leitura
	.globl _flag
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$SFRPAGE$0$0 == 0x0084
_SFRPAGE	=	0x0084
G$SFRNEXT$0$0 == 0x0085
_SFRNEXT	=	0x0085
G$SFRLAST$0$0 == 0x0086
_SFRLAST	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$CPT0CN$0$0 == 0x0088
_CPT0CN	=	0x0088
G$CPT1CN$0$0 == 0x0088
_CPT1CN	=	0x0088
G$CPT2CN$0$0 == 0x0088
_CPT2CN	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$CPT0MD$0$0 == 0x0089
_CPT0MD	=	0x0089
G$CPT1MD$0$0 == 0x0089
_CPT1MD	=	0x0089
G$CPT2MD$0$0 == 0x0089
_CPT2MD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$OSCICN$0$0 == 0x008a
_OSCICN	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$OSCICL$0$0 == 0x008b
_OSCICL	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$OSCXCN$0$0 == 0x008c
_OSCXCN	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SSTA0$0$0 == 0x0091
_SSTA0	=	0x0091
G$SFRPGCN$0$0 == 0x0096
_SFRPGCN	=	0x0096
G$CLKSEL$0$0 == 0x0097
_CLKSEL	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SCON1$0$0 == 0x0098
_SCON1	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SBUF1$0$0 == 0x0099
_SBUF1	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$P4MDOUT$0$0 == 0x009c
_P4MDOUT	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$P5MDOUT$0$0 == 0x009d
_P5MDOUT	=	0x009d
G$P6MDOUT$0$0 == 0x009e
_P6MDOUT	=	0x009e
G$P7MDOUT$0$0 == 0x009f
_P7MDOUT	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CN$0$0 == 0x00a2
_EMI0CN	=	0x00a2
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$SADDR1$0$0 == 0x00a9
_SADDR1	=	0x00a9
G$P1MDIN$0$0 == 0x00ad
_P1MDIN	=	0x00ad
G$P2MDIN$0$0 == 0x00ae
_P2MDIN	=	0x00ae
G$P3MDIN$0$0 == 0x00af
_P3MDIN	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$FLSCL$0$0 == 0x00b7
_FLSCL	=	0x00b7
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX2CF$0$0 == 0x00ba
_AMX2CF	=	0x00ba
G$AMX0PRT$0$0 == 0x00bd
_AMX0PRT	=	0x00bd
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$AMX2SL$0$0 == 0x00bb
_AMX2SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC2CF$0$0 == 0x00bc
_ADC2CF	=	0x00bc
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC2$0$0 == 0x00be
_ADC2	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$CAN0STA$0$0 == 0x00c0
_CAN0STA	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC2GT$0$0 == 0x00c4
_ADC2GT	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC2LT$0$0 == 0x00c6
_ADC2LT	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$TMR3CN$0$0 == 0x00c8
_TMR3CN	=	0x00c8
G$TMR4CN$0$0 == 0x00c8
_TMR4CN	=	0x00c8
G$P4$0$0 == 0x00c8
_P4	=	0x00c8
G$TMR2CF$0$0 == 0x00c9
_TMR2CF	=	0x00c9
G$TMR3CF$0$0 == 0x00c9
_TMR3CF	=	0x00c9
G$TMR4CF$0$0 == 0x00c9
_TMR4CF	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP3L$0$0 == 0x00ca
_RCAP3L	=	0x00ca
G$RCAP4L$0$0 == 0x00ca
_RCAP4L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$RCAP3H$0$0 == 0x00cb
_RCAP3H	=	0x00cb
G$RCAP4H$0$0 == 0x00cb
_RCAP4H	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR3L$0$0 == 0x00cc
_TMR3L	=	0x00cc
G$TMR4L$0$0 == 0x00cc
_TMR4L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$TMR3H$0$0 == 0x00cd
_TMR3H	=	0x00cd
G$TMR4H$0$0 == 0x00cd
_TMR4H	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC1L$0$0 == 0x00d2
_DAC1L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC1H$0$0 == 0x00d3
_DAC1H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1CN$0$0 == 0x00d4
_DAC1CN	=	0x00d4
G$HVA0CN$0$0 == 0x00d6
_HVA0CN	=	0x00d6
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$CAN0DATL$0$0 == 0x00d8
_CAN0DATL	=	0x00d8
G$P5$0$0 == 0x00d8
_P5	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$CAN0DATH$0$0 == 0x00d9
_CAN0DATH	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$CAN0ADR$0$0 == 0x00da
_CAN0ADR	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$CAN0TST$0$0 == 0x00db
_CAN0TST	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$PCA0CPM5$0$0 == 0x00df
_PCA0CPM5	=	0x00df
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$PCA0CPL5$0$0 == 0x00e1
_PCA0CPL5	=	0x00e1
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$PCA0CPH5$0$0 == 0x00e2
_PCA0CPH5	=	0x00e2
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$XBR3$0$0 == 0x00e4
_XBR3	=	0x00e4
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$ADC2CN$0$0 == 0x00e8
_ADC2CN	=	0x00e8
G$P6$0$0 == 0x00e8
_P6	=	0x00e8
G$PCA0CPL2$0$0 == 0x00e9
_PCA0CPL2	=	0x00e9
G$PCA0CPH2$0$0 == 0x00ea
_PCA0CPH2	=	0x00ea
G$PCA0CPL3$0$0 == 0x00eb
_PCA0CPL3	=	0x00eb
G$PCA0CPH3$0$0 == 0x00ec
_PCA0CPH3	=	0x00ec
G$PCA0CPL4$0$0 == 0x00ed
_PCA0CPL4	=	0x00ed
G$PCA0CPH4$0$0 == 0x00ee
_PCA0CPH4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$CAN0CN$0$0 == 0x00f8
_CAN0CN	=	0x00f8
G$P7$0$0 == 0x00f8
_P7	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPL1$0$0 == 0x00fd
_PCA0CPL1	=	0x00fd
G$PCA0CPH1$0$0 == 0x00fe
_PCA0CPH1	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA0CP1$0$0 == 0xfefd
_PCA0CP1	=	0xfefd
G$PCA0CP2$0$0 == 0xeae9
_PCA0CP2	=	0xeae9
G$PCA0CP3$0$0 == 0xeceb
_PCA0CP3	=	0xeceb
G$PCA0CP4$0$0 == 0xeeed
_PCA0CP4	=	0xeeed
G$PCA0CP5$0$0 == 0xe2e1
_PCA0CP5	=	0xe2e1
G$CAN0DAT$0$0 == 0xd9d8
_CAN0DAT	=	0xd9d8
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd3d2
_DAC1	=	0xd3d2
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$RCAP3$0$0 == 0xcbca
_RCAP3	=	0xcbca
G$RCAP4$0$0 == 0xcbca
_RCAP4	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$TMR3$0$0 == 0xcdcc
_TMR3	=	0xcdcc
G$TMR4$0$0 == 0xcdcc
_TMR4	=	0xcdcc
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$_XPAGE$0$0 == 0x00a2
__XPAGE	=	0x00a2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$CP0EN$0$0 == 0x008f
_CP0EN	=	0x008f
G$CP0OUT$0$0 == 0x008e
_CP0OUT	=	0x008e
G$CP0RIF$0$0 == 0x008d
_CP0RIF	=	0x008d
G$CP0FIF$0$0 == 0x008c
_CP0FIF	=	0x008c
G$CP0HYP1$0$0 == 0x008b
_CP0HYP1	=	0x008b
G$CP0HYP0$0$0 == 0x008a
_CP0HYP0	=	0x008a
G$CP0HYN1$0$0 == 0x0089
_CP0HYN1	=	0x0089
G$CP0HYN0$0$0 == 0x0088
_CP0HYN0	=	0x0088
G$CP1EN$0$0 == 0x008f
_CP1EN	=	0x008f
G$CP1OUT$0$0 == 0x008e
_CP1OUT	=	0x008e
G$CP1RIF$0$0 == 0x008d
_CP1RIF	=	0x008d
G$CP1FIF$0$0 == 0x008c
_CP1FIF	=	0x008c
G$CP1HYP1$0$0 == 0x008b
_CP1HYP1	=	0x008b
G$CP1HYP0$0$0 == 0x008a
_CP1HYP0	=	0x008a
G$CP1HYN1$0$0 == 0x0089
_CP1HYN1	=	0x0089
G$CP1HYN0$0$0 == 0x0088
_CP1HYN0	=	0x0088
G$CP2EN$0$0 == 0x008f
_CP2EN	=	0x008f
G$CP2OUT$0$0 == 0x008e
_CP2OUT	=	0x008e
G$CP2RIF$0$0 == 0x008d
_CP2RIF	=	0x008d
G$CP2FIF$0$0 == 0x008c
_CP2FIF	=	0x008c
G$CP2HYP1$0$0 == 0x008b
_CP2HYP1	=	0x008b
G$CP2HYP0$0$0 == 0x008a
_CP2HYP0	=	0x008a
G$CP2HYN1$0$0 == 0x0089
_CP2HYN1	=	0x0089
G$CP2HYN0$0$0 == 0x0088
_CP2HYN0	=	0x0088
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$S1MODE$0$0 == 0x009f
_S1MODE	=	0x009f
G$MCE1$0$0 == 0x009d
_MCE1	=	0x009d
G$REN1$0$0 == 0x009c
_REN1	=	0x009c
G$TB81$0$0 == 0x009b
_TB81	=	0x009b
G$RB81$0$0 == 0x009a
_RB81	=	0x009a
G$TI1$0$0 == 0x0099
_TI1	=	0x0099
G$RI1$0$0 == 0x0098
_RI1	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$BOFF$0$0 == 0x00c7
_BOFF	=	0x00c7
G$EWARN$0$0 == 0x00c6
_EWARN	=	0x00c6
G$EPASS$0$0 == 0x00c5
_EPASS	=	0x00c5
G$RXOK$0$0 == 0x00c4
_RXOK	=	0x00c4
G$TXOK$0$0 == 0x00c3
_TXOK	=	0x00c3
G$LEC2$0$0 == 0x00c2
_LEC2	=	0x00c2
G$LEC1$0$0 == 0x00c1
_LEC1	=	0x00c1
G$LEC0$0$0 == 0x00c0
_LEC0	=	0x00c0
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$TF3$0$0 == 0x00cf
_TF3	=	0x00cf
G$EXF3$0$0 == 0x00ce
_EXF3	=	0x00ce
G$EXEN3$0$0 == 0x00cb
_EXEN3	=	0x00cb
G$TR3$0$0 == 0x00ca
_TR3	=	0x00ca
G$CT3$0$0 == 0x00c9
_CT3	=	0x00c9
G$CPRL3$0$0 == 0x00c8
_CPRL3	=	0x00c8
G$TF4$0$0 == 0x00cf
_TF4	=	0x00cf
G$EXF4$0$0 == 0x00ce
_EXF4	=	0x00ce
G$EXEN4$0$0 == 0x00cb
_EXEN4	=	0x00cb
G$TR4$0$0 == 0x00ca
_TR4	=	0x00ca
G$CT4$0$0 == 0x00c9
_CT4	=	0x00c9
G$CPRL4$0$0 == 0x00c8
_CPRL4	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF5$0$0 == 0x00dd
_CCF5	=	0x00dd
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$AD2EN$0$0 == 0x00ef
_AD2EN	=	0x00ef
G$AD2TM$0$0 == 0x00ee
_AD2TM	=	0x00ee
G$AD2INT$0$0 == 0x00ed
_AD2INT	=	0x00ed
G$AD2BUSY$0$0 == 0x00ec
_AD2BUSY	=	0x00ec
G$AD2CM2$0$0 == 0x00eb
_AD2CM2	=	0x00eb
G$AD2CM1$0$0 == 0x00ea
_AD2CM1	=	0x00ea
G$AD2CM0$0$0 == 0x00e9
_AD2CM0	=	0x00e9
G$AD2WINT$0$0 == 0x00e8
_AD2WINT	=	0x00e8
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$NSSMD1$0$0 == 0x00fb
_NSSMD1	=	0x00fb
G$NSSMD0$0$0 == 0x00fa
_NSSMD0	=	0x00fa
G$TXBMT$0$0 == 0x00f9
_TXBMT	=	0x00f9
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$CANINIT$0$0 == 0x00f8
_CANINIT	=	0x00f8
G$CANIE$0$0 == 0x00f9
_CANIE	=	0x00f9
G$CANSIE$0$0 == 0x00fa
_CANSIE	=	0x00fa
G$CANEIE$0$0 == 0x00fb
_CANEIE	=	0x00fb
G$CANIF$0$0 == 0x00fc
_CANIF	=	0x00fc
G$CANDAR$0$0 == 0x00fd
_CANDAR	=	0x00fd
G$CANCCE$0$0 == 0x00fe
_CANCCE	=	0x00fe
G$CANTEST$0$0 == 0x00ff
_CANTEST	=	0x00ff
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$P4_0$0$0 == 0x00c8
_P4_0	=	0x00c8
G$P4_1$0$0 == 0x00c9
_P4_1	=	0x00c9
G$P4_2$0$0 == 0x00ca
_P4_2	=	0x00ca
G$P4_3$0$0 == 0x00cb
_P4_3	=	0x00cb
G$P4_4$0$0 == 0x00cc
_P4_4	=	0x00cc
G$P4_5$0$0 == 0x00cd
_P4_5	=	0x00cd
G$P4_6$0$0 == 0x00ce
_P4_6	=	0x00ce
G$P4_7$0$0 == 0x00cf
_P4_7	=	0x00cf
G$P5_0$0$0 == 0x00d8
_P5_0	=	0x00d8
G$P5_1$0$0 == 0x00d9
_P5_1	=	0x00d9
G$P5_2$0$0 == 0x00da
_P5_2	=	0x00da
G$P5_3$0$0 == 0x00db
_P5_3	=	0x00db
G$P5_4$0$0 == 0x00dc
_P5_4	=	0x00dc
G$P5_5$0$0 == 0x00dd
_P5_5	=	0x00dd
G$P5_6$0$0 == 0x00de
_P5_6	=	0x00de
G$P5_7$0$0 == 0x00df
_P5_7	=	0x00df
G$P6_0$0$0 == 0x00e8
_P6_0	=	0x00e8
G$P6_1$0$0 == 0x00e9
_P6_1	=	0x00e9
G$P6_2$0$0 == 0x00ea
_P6_2	=	0x00ea
G$P6_3$0$0 == 0x00eb
_P6_3	=	0x00eb
G$P6_4$0$0 == 0x00ec
_P6_4	=	0x00ec
G$P6_5$0$0 == 0x00ed
_P6_5	=	0x00ed
G$P6_6$0$0 == 0x00ee
_P6_6	=	0x00ee
G$P6_7$0$0 == 0x00ef
_P6_7	=	0x00ef
G$P7_0$0$0 == 0x00f8
_P7_0	=	0x00f8
G$P7_1$0$0 == 0x00f9
_P7_1	=	0x00f9
G$P7_2$0$0 == 0x00fa
_P7_2	=	0x00fa
G$P7_3$0$0 == 0x00fb
_P7_3	=	0x00fb
G$P7_4$0$0 == 0x00fc
_P7_4	=	0x00fc
G$P7_5$0$0 == 0x00fd
_P7_5	=	0x00fd
G$P7_6$0$0 == 0x00fe
_P7_6	=	0x00fe
G$P7_7$0$0 == 0x00ff
_P7_7	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$flag$0$0==.
_flag::
	.ds 1
G$leitura$0$0==.
_leitura::
	.ds 1
G$autom$0$0==.
_autom::
	.ds 1
G$manual$0$0==.
_manual::
	.ds 1
G$estado_varal$0$0==.
_estado_varal::
	.ds 1
G$HOR$0$0==.
_HOR::
	.ds 4
G$AHO$0$0==.
_AHO::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Lmain.esc_RAM_SPI$dado$1$29==.
_esc_RAM_SPI_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Lmain.le_adc0$ganho$1$35==.
_le_adc0_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_isr_UART0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$bluetooth.c$5$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:5: volatile unsigned char flag = 0;
	mov	_flag,#0x00
	C$main.c$20$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:20: unsigned char HOR[4] = {0x09,0x03,0x06,0x0C};    // Matriz dos bytes das Fases do Motor - sentido Horário Full Step
	mov	_HOR,#0x09
	mov	(_HOR + 0x0001),#0x03
	mov	(_HOR + 0x0002),#0x06
	mov	(_HOR + 0x0003),#0x0c
	C$main.c$21$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:21: unsigned char AHO[4] = {0x0C,0x06,0x03,0x09};    // Matriz dos bytes das Fases do Motor - sentido Anti-Horário Full Step
	mov	_AHO,#0x0c
	mov	(_AHO + 0x0001),#0x06
	mov	(_AHO + 0x0002),#0x03
	mov	(_AHO + 0x0003),#0x09
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$config.c$10$0$0 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:10: void Timer_Init()
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$config.c$12$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:12: SFRPAGE   = TIMER01_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$13$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:13: TCON      = 0x41;
	mov	_TCON,#0x41
	C$config.c$14$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:14: TMOD      = 0x20;
	mov	_TMOD,#0x20
	C$config.c$15$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:15: CKCON     = 0x18;
	mov	_CKCON,#0x18
	C$config.c$16$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:16: TH1       = 0xAF;
	mov	_TH1,#0xaf
	C$config.c$17$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:17: SFRPAGE   = TMR2_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$18$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:18: TMR2CN    = 0x04;
	mov	_TMR2CN,#0x04
	C$config.c$19$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:19: TMR2CF    = 0x0A;
	mov	_TMR2CF,#0x0a
	C$config.c$20$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:20: RCAP2L    = 0x3C;
	mov	_RCAP2L,#0x3c
	C$config.c$21$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:21: RCAP2H    = 0xF6;
	mov	_RCAP2H,#0xf6
	C$config.c$22$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:22: SFRPAGE   = TMR4_PAGE;
	mov	_SFRPAGE,#0x02
	C$config.c$23$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:23: TMR4CN    = 0x04;
	mov	_TMR4CN,#0x04
	C$config.c$24$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:24: TMR4CF    = 0x02;
	mov	_TMR4CF,#0x02
	C$config.c$25$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:25: RCAP4L    = 0x8D;
	mov	_RCAP4L,#0x8d
	C$config.c$26$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:26: RCAP4H    = 0x34;
	mov	_RCAP4H,#0x34
	C$config.c$27$1$1 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
	G$UART_Init$0$0 ==.
	C$config.c$29$1$1 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:29: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
	C$config.c$31$1$2 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:31: SFRPAGE   = UART0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$32$1$2 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:32: SCON0     = 0x70;
	mov	_SCON0,#0x70
	C$config.c$33$1$2 ==.
	XG$UART_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_Init'
;------------------------------------------------------------
	G$SMBus_Init$0$0 ==.
	C$config.c$35$1$2 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:35: void SMBus_Init()
;	-----------------------------------------
;	 function SMBus_Init
;	-----------------------------------------
_SMBus_Init:
	C$config.c$37$1$3 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:37: SFRPAGE   = SMB0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$38$1$3 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:38: SMB0CN    = 0x41;
	mov	_SMB0CN,#0x41
	C$config.c$39$1$3 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:39: SMB0CR    = 0xE9;
	mov	_SMB0CR,#0xe9
	C$config.c$40$1$3 ==.
	XG$SMBus_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Init'
;------------------------------------------------------------
	G$SPI_Init$0$0 ==.
	C$config.c$42$1$3 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:42: void SPI_Init()
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	C$config.c$44$1$4 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:44: SFRPAGE   = SPI0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$45$1$4 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:45: SPI0CFG   = 0x40;
	mov	_SPI0CFG,#0x40
	C$config.c$46$1$4 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:46: SPI0CN    = 0x01;
	mov	_SPI0CN,#0x01
	C$config.c$47$1$4 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:47: SPI0CKR   = 0x7C;
	mov	_SPI0CKR,#0x7c
	C$config.c$48$1$4 ==.
	XG$SPI_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$config.c$50$1$4 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:50: void ADC_Init()
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$config.c$52$1$5 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:52: SFRPAGE   = ADC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$53$1$5 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:53: ADC0CN    = 0x80;
	mov	_ADC0CN,#0x80
	C$config.c$54$1$5 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAC_Init'
;------------------------------------------------------------
	G$DAC_Init$0$0 ==.
	C$config.c$56$1$5 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:56: void DAC_Init()
;	-----------------------------------------
;	 function DAC_Init
;	-----------------------------------------
_DAC_Init:
	C$config.c$58$1$6 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:58: SFRPAGE   = DAC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$59$1$6 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:59: DAC0CN    = 0x04;
	mov	_DAC0CN,#0x04
	C$config.c$60$1$6 ==.
	XG$DAC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Voltage_Reference_Init'
;------------------------------------------------------------
	G$Voltage_Reference_Init$0$0 ==.
	C$config.c$62$1$6 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:62: void Voltage_Reference_Init()
;	-----------------------------------------
;	 function Voltage_Reference_Init
;	-----------------------------------------
_Voltage_Reference_Init:
	C$config.c$64$1$7 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:64: SFRPAGE   = ADC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$65$1$7 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:65: REF0CN    = 0x03;
	mov	_REF0CN,#0x03
	C$config.c$66$1$7 ==.
	XG$Voltage_Reference_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_IO_Init'
;------------------------------------------------------------
	G$Port_IO_Init$0$0 ==.
	C$config.c$68$1$7 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:68: void Port_IO_Init()
;	-----------------------------------------
;	 function Port_IO_Init
;	-----------------------------------------
_Port_IO_Init:
	C$config.c$106$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:106: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$config.c$107$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:107: P0MDOUT   = 0xF5;
	mov	_P0MDOUT,#0xf5
	C$config.c$108$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:108: P1MDOUT   = 0xFE;
	mov	_P1MDOUT,#0xfe
	C$config.c$109$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:109: P2MDOUT   = 0xFF;
	mov	_P2MDOUT,#0xff
	C$config.c$110$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:110: P3MDOUT   = 0xFF;
	mov	_P3MDOUT,#0xff
	C$config.c$111$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:111: XBR0      = 0x06;
	mov	_XBR0,#0x06
	C$config.c$112$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:112: XBR2      = 0x40;
	mov	_XBR2,#0x40
	C$config.c$113$1$8 ==.
	XG$Port_IO_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Oscillator_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Oscillator_Init$0$0 ==.
	C$config.c$115$1$8 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:115: void Oscillator_Init()
;	-----------------------------------------
;	 function Oscillator_Init
;	-----------------------------------------
_Oscillator_Init:
	C$config.c$118$1$9 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:118: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$config.c$119$1$9 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:119: OSCXCN    = 0x67;
	mov	_OSCXCN,#0x67
	C$config.c$120$1$9 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:120: for (i = 0; i < 3000; i++);  // Wait 1ms for initialization
	mov	r6,#0xb8
	mov	r7,#0x0b
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$config.c$121$1$9 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:121: while ((OSCXCN & 0x80) == 0);
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$config.c$122$1$9 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:122: CLKSEL    = 0x01;
	mov	_CLKSEL,#0x01
	C$config.c$123$1$9 ==.
	XG$Oscillator_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupts_Init'
;------------------------------------------------------------
	G$Interrupts_Init$0$0 ==.
	C$config.c$125$1$9 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:125: void Interrupts_Init()
;	-----------------------------------------
;	 function Interrupts_Init
;	-----------------------------------------
_Interrupts_Init:
	C$config.c$127$1$10 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:127: IE        = 0x90;
	mov	_IE,#0x90
	C$config.c$128$1$10 ==.
	XG$Interrupts_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Device'
;------------------------------------------------------------
	G$Init_Device$0$0 ==.
	C$config.c$132$1$10 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:132: void Init_Device(void)
;	-----------------------------------------
;	 function Init_Device
;	-----------------------------------------
_Init_Device:
	C$config.c$134$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:134: Timer_Init();
	lcall	_Timer_Init
	C$config.c$135$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:135: UART_Init();
	lcall	_UART_Init
	C$config.c$136$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:136: SMBus_Init();
	lcall	_SMBus_Init
	C$config.c$137$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:137: SPI_Init();
	lcall	_SPI_Init
	C$config.c$138$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:138: ADC_Init();
	lcall	_ADC_Init
	C$config.c$139$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:139: DAC_Init();
	lcall	_DAC_Init
	C$config.c$140$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:140: Voltage_Reference_Init();
	lcall	_Voltage_Reference_Init
	C$config.c$141$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:141: Port_IO_Init();
	lcall	_Port_IO_Init
	C$config.c$142$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:142: Oscillator_Init();
	lcall	_Oscillator_Init
	C$config.c$143$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:143: Interrupts_Init();
	lcall	_Interrupts_Init
	C$config.c$144$1$12 ==.
	XG$Init_Device$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$delay_ms$0$0 ==.
	C$utils.c$6$1$12 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:6: void delay_ms(unsigned int t){
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
	C$utils.c$7$1$14 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:7: TMOD |= 0x01;
	orl	_TMOD,#0x01
	C$utils.c$8$1$14 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:8: TMOD &= ~0x02;
	anl	_TMOD,#0xfd
00106$:
	C$utils.c$9$1$14 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:9: for(;t>0;t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
	C$utils.c$10$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:10: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$utils.c$11$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:11: TR0 = 0;
	clr	_TR0
	C$utils.c$12$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:12: TF0 = 0;
	clr	_TF0
	C$utils.c$13$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:13: TL0 = 0x58;
	mov	_TL0,#0x58
	C$utils.c$14$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:14: TH0 = 0x9E;
	mov	_TH0,#0x9e
	C$utils.c$15$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:15: TR0 = 1;
	setb	_TR0
	C$utils.c$16$2$15 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:16: while(TF0 == 0);
00101$:
	jnb	_TF0,00101$
	C$utils.c$9$1$14 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:9: for(;t>0;t--){
	dec	r6
	cjne	r6,#0xff,00127$
	dec	r7
00127$:
	sjmp	00106$
00108$:
	C$utils.c$18$1$14 ==.
	XG$delay_ms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'esc_RAM_SPI'
;------------------------------------------------------------
;dado                      Allocated with name '_esc_RAM_SPI_PARM_2'
;end                       Allocated to registers r6 r7 
;end_l                     Allocated to registers r5 
;end_h                     Allocated to registers r7 
;------------------------------------------------------------
	G$esc_RAM_SPI$0$0 ==.
	C$RAM_SPI.c$7$1$14 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:7: void esc_RAM_SPI (unsigned int end, unsigned char dado){
;	-----------------------------------------
;	 function esc_RAM_SPI
;	-----------------------------------------
_esc_RAM_SPI:
	mov	r6,dpl
	mov	r7,dph
	C$RAM_SPI.c$9$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:9: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$10$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:10: end_l = end;
	mov	ar5,r6
	C$RAM_SPI.c$11$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:11: end_h = end >> 8;
	C$RAM_SPI.c$13$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:13: CS=0;
	clr	_P2_3
	C$RAM_SPI.c$15$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:15: SPI0DAT = 0x02;
	mov	_SPI0DAT,#0x02
	C$RAM_SPI.c$16$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:16: while(!TXBMT);
00101$:
	jnb	_TXBMT,00101$
	C$RAM_SPI.c$18$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:18: SPI0DAT = end_h;	//Pega 8 bits mais significativos
	mov	_SPI0DAT,r7
	C$RAM_SPI.c$19$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:19: while(!TXBMT);
00104$:
	jnb	_TXBMT,00104$
	C$RAM_SPI.c$21$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:21: SPI0DAT = end_l;	//Pega 8 bits menos significativos
	mov	_SPI0DAT,r5
	C$RAM_SPI.c$22$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:22: while(!TXBMT);
00107$:
	jnb	_TXBMT,00107$
	C$RAM_SPI.c$24$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:24: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$26$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:26: SPI0DAT = dado;		//Passa dado
	mov	_SPI0DAT,_esc_RAM_SPI_PARM_2
	C$RAM_SPI.c$27$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:27: while(!TXBMT);
00110$:
	jnb	_TXBMT,00110$
	C$RAM_SPI.c$29$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:29: SPIF=0;
	clr	_SPIF
	C$RAM_SPI.c$30$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:30: while(!SPIF);
00113$:
	C$RAM_SPI.c$31$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:31: SPIF=0;
	jbc	_SPIF,00152$
	sjmp	00113$
00152$:
	C$RAM_SPI.c$33$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:33: CS=1;
	setb	_P2_3
	C$RAM_SPI.c$34$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:34: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$35$1$30 ==.
	XG$esc_RAM_SPI$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'le_RAM_SPI'
;------------------------------------------------------------
;end                       Allocated to registers r6 r7 
;end_l                     Allocated to registers r5 
;end_h                     Allocated to registers r7 
;------------------------------------------------------------
	G$le_RAM_SPI$0$0 ==.
	C$RAM_SPI.c$37$1$30 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:37: unsigned char le_RAM_SPI (unsigned int end){
;	-----------------------------------------
;	 function le_RAM_SPI
;	-----------------------------------------
_le_RAM_SPI:
	mov	r6,dpl
	mov	r7,dph
	C$RAM_SPI.c$39$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:39: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$40$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:40: end_l = end;
	mov	ar5,r6
	C$RAM_SPI.c$41$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:41: end_h = end >> 8;
	C$RAM_SPI.c$43$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:43: CS=0;
	clr	_P2_3
	C$RAM_SPI.c$45$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:45: SPI0DAT = 0x03;
	mov	_SPI0DAT,#0x03
	C$RAM_SPI.c$46$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:46: while(!TXBMT);
00101$:
	jnb	_TXBMT,00101$
	C$RAM_SPI.c$48$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:48: SPI0DAT = end_h;	//Pega 8 bits mais significativos
	mov	_SPI0DAT,r7
	C$RAM_SPI.c$49$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:49: while(!TXBMT);
00104$:
	jnb	_TXBMT,00104$
	C$RAM_SPI.c$51$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:51: SPI0DAT = end_l;	//Pega 8 bits menos significativos
	mov	_SPI0DAT,r5
	C$RAM_SPI.c$52$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:52: while(!TXBMT);
00107$:
	jnb	_TXBMT,00107$
	C$RAM_SPI.c$54$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:54: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$56$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:56: SPI0DAT = 0x00;		//Passa lixo de memoria
	mov	_SPI0DAT,#0x00
	C$RAM_SPI.c$57$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:57: while(!TXBMT);
00110$:
	jnb	_TXBMT,00110$
	C$RAM_SPI.c$59$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:59: SPIF=0;
	clr	_SPIF
	C$RAM_SPI.c$60$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:60: while(!SPIF);
00113$:
	C$RAM_SPI.c$61$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:61: SPIF=0;
	jbc	_SPIF,00152$
	sjmp	00113$
00152$:
	C$RAM_SPI.c$63$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:63: CS=1;
	setb	_P2_3
	C$RAM_SPI.c$65$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:65: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$66$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:66: return(SPI0DAT);
	mov	dpl,_SPI0DAT
	C$RAM_SPI.c$67$1$32 ==.
	XG$le_RAM_SPI$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'preenche_RAM_SPI'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$preenche_RAM_SPI$0$0 ==.
	C$RAM_SPI.c$71$1$32 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:71: void preenche_RAM_SPI() {
;	-----------------------------------------
;	 function preenche_RAM_SPI
;	-----------------------------------------
_preenche_RAM_SPI:
	C$RAM_SPI.c$74$1$33 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:74: for(i=0;i<255;i++){
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
	C$RAM_SPI.c$75$2$34 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:75: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$RAM_SPI.c$76$2$34 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:76: esc_RAM_SPI(i, 0);
	mov	_esc_RAM_SPI_PARM_2,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_esc_RAM_SPI
	pop	ar6
	pop	ar7
	C$RAM_SPI.c$74$1$33 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:74: for(i=0;i<255;i++){
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00110$:
	clr	c
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	subb	a,#0x00
	jc	00102$
	C$RAM_SPI.c$79$1$33 ==.
	XG$preenche_RAM_SPI$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'le_adc0'
;------------------------------------------------------------
;ganho                     Allocated with name '_le_adc0_PARM_2'
;canal                     Allocated to registers r7 
;------------------------------------------------------------
	G$le_adc0$0$0 ==.
	C$ADC.c$21$1$33 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:21: unsigned int le_adc0(unsigned char canal, unsigned char ganho){
;	-----------------------------------------
;	 function le_adc0
;	-----------------------------------------
_le_adc0:
	mov	r7,dpl
	C$ADC.c$23$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:23: ADC0CF = (ADC0CF & 0XF8) | ganho;
	mov	a,#0xf8
	anl	a,_ADC0CF
	orl	a,_le_adc0_PARM_2
	mov	_ADC0CF,a
	C$ADC.c$26$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:26: AMX0SL = canal;
	mov	_AMX0SL,r7
	C$ADC.c$30$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:30: AD0BUSY = 1;
	setb	_AD0BUSY
	C$ADC.c$31$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:31: NOP();
	NOP	
	C$ADC.c$33$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:33: while(AD0BUSY);
00101$:
	jb	_AD0BUSY,00101$
	C$ADC.c$35$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:35: return (ADC0H<<8 | ADC0L);
	mov	r7,_ADC0H
	mov	r6,#0x00
	mov	r4,_ADC0L
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	dpl,a
	mov	a,r5
	orl	a,r7
	mov	dph,a
	C$ADC.c$36$1$36 ==.
	XG$le_adc0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$bluetooth.c$8$1$36 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:8: void putchar(char c){
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	_SBUF0,dpl
	C$bluetooth.c$10$1$38 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:10: while(!TI0); // flag de interrupcao para transmissao RS-232 
00101$:
	C$bluetooth.c$11$1$38 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:11: TI0=0;
	jbc	_TI0,00112$
	sjmp	00101$
00112$:
	C$bluetooth.c$12$1$38 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:12: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$bluetooth.c$13$1$38 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_UART0'
;------------------------------------------------------------
	G$isr_UART0$0$0 ==.
	C$bluetooth.c$16$1$38 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:16: void isr_UART0(void) __interrupt 4{ 
;	-----------------------------------------
;	 function isr_UART0
;	-----------------------------------------
_isr_UART0:
	C$bluetooth.c$17$1$40 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:17: if(RI0==1){
	jnb	_RI0,00103$
	C$bluetooth.c$18$2$41 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:18: flag=1; // setar variavel global que indica leitura
	mov	_flag,#0x01
	C$bluetooth.c$19$2$41 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:19: leitura=SBUF0;
	mov	_leitura,_SBUF0
	C$bluetooth.c$20$2$41 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:20: RI0=0;
	clr	_RI0
00103$:
	C$bluetooth.c$22$1$40 ==.
	XG$isr_UART0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'exporVaral'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
	G$exporVaral$0$0 ==.
	C$main.c$25$1$40 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:25: void exporVaral(){
;	-----------------------------------------
;	 function exporVaral
;	-----------------------------------------
_exporVaral:
	C$main.c$27$1$42 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:27: printf_fast_f("MOTOR_AHO \n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$28$3$44 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:28: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
	mov	r6,#0x00
	mov	r7,#0x00
	C$main.c$29$1$42 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:29: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
00109$:
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	C$main.c$30$3$44 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:30: PORTB = AHO[j];               // Carrega bytes da Matriz AHO na Porta B 
	mov	a,r4
	add	a,#_AHO
	mov	r1,a
	mov	_P3,@r1
	C$main.c$31$3$44 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:31: delay_ms(3);          // Atraso de tempo entre as fases em milisegundos
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$29$2$43 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:29: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
	inc	r4
	cjne	r4,#0x00,00120$
	inc	r5
00120$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
	C$main.c$28$1$42 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:28: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
	inc	r6
	cjne	r6,#0x00,00122$
	inc	r7
00122$:
	clr	c
	mov	a,r6
	subb	a,#0xb6
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jc	00109$
	C$main.c$34$1$42 ==.
	XG$exporVaral$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'recolherVaral'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
	G$recolherVaral$0$0 ==.
	C$main.c$36$1$42 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:36: void recolherVaral(){                   // Movimento no sentido horário 
;	-----------------------------------------
;	 function recolherVaral
;	-----------------------------------------
_recolherVaral:
	C$main.c$38$1$45 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:38: printf_fast_f("MOTOR_HOR \n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$39$3$47 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:39: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
	mov	r6,#0x00
	mov	r7,#0x00
	C$main.c$40$1$45 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:40: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
00109$:
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	C$main.c$41$3$47 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:41: PORTB = HOR[j];               // Carrega bytes da Matriz HOR na Porta B 
	mov	a,r4
	add	a,#_HOR
	mov	r1,a
	mov	_P3,@r1
	C$main.c$42$3$47 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:42: delay_ms(3);          // Atraso de tempo entre as fases em milisegundos
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$40$2$46 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:40: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
	inc	r4
	cjne	r4,#0x00,00120$
	inc	r5
00120$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
	C$main.c$39$1$45 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:39: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
	inc	r6
	cjne	r6,#0x00,00122$
	inc	r7
00122$:
	clr	c
	mov	a,r6
	subb	a,#0xb6
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x83
	jc	00109$
	C$main.c$45$1$45 ==.
	XG$recolherVaral$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'controlaLuzes'
;------------------------------------------------------------
;read                      Allocated to registers r6 r7 
;------------------------------------------------------------
	G$controlaLuzes$0$0 ==.
	C$main.c$47$1$45 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:47: void controlaLuzes(void){
;	-----------------------------------------
;	 function controlaLuzes
;	-----------------------------------------
_controlaLuzes:
	C$main.c$50$1$49 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:50: read = le_adc0(AIN0_1, gain05);
	mov	_le_adc0_PARM_2,#0x07
	mov	dpl,#0x01
	lcall	_le_adc0
	mov	r6,dpl
	mov	r7,dph
	C$main.c$53$1$49 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:53: if(read < 1000){
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jnc	00102$
	C$main.c$56$2$50 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:56: P0_5=noite;
	setb	_P0_5
	sjmp	00103$
00102$:
	C$main.c$60$2$51 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:60: P0_5=dia;
	clr	_P0_5
00103$:
	C$main.c$62$1$49 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:62: delay_ms(2);
	mov	dptr,#0x0002
	lcall	_delay_ms
	C$main.c$63$1$49 ==.
	XG$controlaLuzes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'modoAutomatico'
;------------------------------------------------------------
	G$modoAutomatico$0$0 ==.
	C$main.c$65$1$49 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:65: void modoAutomatico(void){
;	-----------------------------------------
;	 function modoAutomatico
;	-----------------------------------------
_modoAutomatico:
	C$main.c$66$1$53 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:66: autom=1; //le_RAM_SPI(1);
	mov	_autom,#0x01
	C$main.c$67$1$53 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:67: printf_fast_f("Automatico \n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$68$4$56 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:68: while(autom){
00112$:
	mov	a,_autom
	jnz	00138$
	ljmp	00114$
00138$:
	C$main.c$69$2$54 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:69: if(flag){
	mov	a,_flag
	jz	00104$
	C$main.c$70$3$55 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:70: if(leitura=='M'){
	mov	a,#0x4d
	cjne	a,_leitura,00102$
	C$main.c$71$4$56 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:71: printf_fast_f("Alterando para manual \n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$72$4$56 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:72: esc_RAM_SPI(1,0);
	mov	_esc_RAM_SPI_PARM_2,#0x00
	mov	dptr,#0x0001
	lcall	_esc_RAM_SPI
	C$main.c$73$4$56 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:73: autom=0;
	mov	_autom,#0x00
00102$:
	C$main.c$76$3$55 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:76: flag=0;
	mov	_flag,#0x00
00104$:
	C$main.c$78$2$54 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:78: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$main.c$80$2$54 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:80: estado_varal = le_RAM_SPI(2);
	mov	dptr,#0x0002
	lcall	_le_RAM_SPI
	mov	_estado_varal,dpl
	C$main.c$81$2$54 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:81: if(!P1_0){
	jb	_P1_0,00110$
	C$main.c$82$3$57 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:82: if(estado_varal){
	mov	a,_estado_varal
	jz	00111$
	C$main.c$83$4$58 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:83: esc_RAM_SPI(2,0);
	mov	_esc_RAM_SPI_PARM_2,#0x00
	mov	dptr,#0x0002
	lcall	_esc_RAM_SPI
	C$main.c$84$4$58 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:84: printf_fast_f("varal recolhido automaticamente \n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$86$4$58 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:86: recolherVaral();
	lcall	_recolherVaral
	sjmp	00111$
00110$:
	C$main.c$90$3$59 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:90: if(!estado_varal){
	mov	a,_estado_varal
	jnz	00111$
	C$main.c$91$4$60 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:91: esc_RAM_SPI(2,1);
	mov	_esc_RAM_SPI_PARM_2,#0x01
	mov	dptr,#0x0002
	lcall	_esc_RAM_SPI
	C$main.c$92$4$60 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:92: printf_fast_f("varal exposto automaticamente \n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$94$4$60 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:94: exporVaral();
	lcall	_exporVaral
00111$:
	C$main.c$97$2$54 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:97: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$main.c$100$2$54 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:100: controlaLuzes();
	lcall	_controlaLuzes
	ljmp	00112$
00114$:
	C$main.c$103$1$53 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:103: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	C$main.c$105$1$53 ==.
	XG$modoAutomatico$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'modoManual'
;------------------------------------------------------------
	G$modoManual$0$0 ==.
	C$main.c$107$1$53 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:107: void modoManual(void){
;	-----------------------------------------
;	 function modoManual
;	-----------------------------------------
_modoManual:
	C$main.c$108$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:108: manual=1;
	mov	_manual,#0x01
	C$main.c$109$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:109: printf_fast_f("Manual \n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$111$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:111: printf_fast_f("MENU DE COMANDOS: \n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$112$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:112: printf_fast_f("E) Expor varal \n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$113$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:113: printf_fast_f("R) Recolher varal \n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$114$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:114: printf_fast_f("A) Modo automatico \n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$116$4$73 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:116: while(manual){
00121$:
	mov	a,_manual
	jnz	00153$
	ljmp	00123$
00153$:
	C$main.c$117$2$63 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:117: if(flag){
	mov	a,_flag
	jnz	00154$
	ljmp	00120$
00154$:
	C$main.c$118$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:118: estado_varal = le_RAM_SPI(2);
	mov	dptr,#0x0002
	lcall	_le_RAM_SPI
	mov	_estado_varal,dpl
	C$main.c$119$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:119: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$main.c$120$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:120: if(leitura=='A'){
	mov	a,#0x41
	cjne	a,_leitura,00117$
	C$main.c$122$4$65 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:122: printf_fast_f("Alterando para automatico \n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$123$4$65 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:123: esc_RAM_SPI(1,1);
	mov	_esc_RAM_SPI_PARM_2,#0x01
	mov	dptr,#0x0001
	lcall	_esc_RAM_SPI
	C$main.c$124$4$65 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:124: manual=0;
	mov	_manual,#0x00
	ljmp	00118$
00117$:
	C$main.c$127$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:127: else if(leitura=='E'){
	mov	a,#0x45
	cjne	a,_leitura,00114$
	C$main.c$130$4$66 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:130: if(!estado_varal){
	mov	a,_estado_varal
	jnz	00102$
	C$main.c$131$5$67 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:131: esc_RAM_SPI(2,1);
	mov	_esc_RAM_SPI_PARM_2,#0x01
	mov	dptr,#0x0002
	lcall	_esc_RAM_SPI
	C$main.c$132$5$67 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:132: printf_fast_f("Varal exposto manualmente \n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$134$5$67 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:134: exporVaral();
	lcall	_exporVaral
	ljmp	00118$
00102$:
	C$main.c$136$5$68 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:136: printf_fast_f("O varal ja esta exposto.\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	ljmp	00118$
00114$:
	C$main.c$140$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:140: else if(leitura=='R'){
	mov	a,#0x52
	cjne	a,_leitura,00111$
	C$main.c$143$4$69 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:143: if(estado_varal){
	mov	a,_estado_varal
	jz	00105$
	C$main.c$144$5$70 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:144: esc_RAM_SPI(2,0);
	mov	_esc_RAM_SPI_PARM_2,#0x00
	mov	dptr,#0x0002
	lcall	_esc_RAM_SPI
	C$main.c$145$5$70 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:145: printf_fast_f("Varal recolhido manualmente \n");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$147$5$70 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:147: recolherVaral();
	lcall	_recolherVaral
	sjmp	00118$
00105$:
	C$main.c$149$5$71 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:149: printf_fast_f("O varal ja esta recolhido.\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	sjmp	00118$
00111$:
	C$main.c$153$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:153: else if(leitura=='H'){
	mov	a,#0x48
	cjne	a,_leitura,00108$
	C$main.c$155$4$72 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:155: printf_fast_f("MENU DE COMANDOS: \n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$156$4$72 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:156: printf_fast_f("E) Expor varal \n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$157$4$72 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:157: printf_fast_f("R) Recolher varal \n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$158$4$72 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:158: printf_fast_f("A) Modo automatico \n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	sjmp	00118$
00108$:
	C$main.c$162$4$73 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:162: printf_fast_f("Comando invalido. \n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$163$4$73 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:163: printf_fast_f("Pressione H para comandos validos. \n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
00118$:
	C$main.c$166$3$64 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:166: flag=0;		
	mov	_flag,#0x00
00120$:
	C$main.c$169$2$63 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:169: controlaLuzes();
	lcall	_controlaLuzes
	ljmp	00121$
00123$:
	C$main.c$172$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:172: delay_ms(500);	
	mov	dptr,#0x01f4
	lcall	_delay_ms
	C$main.c$173$1$62 ==.
	XG$modoManual$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;dado                      Allocated to registers r7 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$176$1$62 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:176: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$179$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:179: Init_Device();
	lcall	_Init_Device
	C$main.c$180$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:180: SFRPAGE=LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$main.c$182$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:182: printf_fast_f("COMECOU \n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$185$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:185: preenche_RAM_SPI();
	lcall	_preenche_RAM_SPI
	C$main.c$187$1$75 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:187: while(1){
00105$:
	C$main.c$188$2$76 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:188: dado = le_RAM_SPI(1);
	mov	dptr,#0x0001
	lcall	_le_RAM_SPI
	mov	r7,dpl
	C$main.c$189$2$76 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:189: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$main.c$190$2$76 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:190: if(dado){
	mov	a,r7
	jz	00102$
	C$main.c$191$3$77 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:191: modoAutomatico();
	lcall	_modoAutomatico
	sjmp	00105$
00102$:
	C$main.c$193$3$78 ==.
;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:193: modoManual();
	lcall	_modoManual
	sjmp	00105$
	C$main.c$196$1$75 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0$0 == .
___str_0:
	.ascii "MOTOR_AHO "
	.db 0x0a
	.db 0x00
Fmain$__str_1$0$0 == .
___str_1:
	.ascii "MOTOR_HOR "
	.db 0x0a
	.db 0x00
Fmain$__str_2$0$0 == .
___str_2:
	.ascii "Automatico "
	.db 0x0a
	.db 0x00
Fmain$__str_3$0$0 == .
___str_3:
	.ascii "Alterando para manual "
	.db 0x0a
	.db 0x00
Fmain$__str_4$0$0 == .
___str_4:
	.ascii "varal recolhido automaticamente "
	.db 0x0a
	.db 0x00
Fmain$__str_5$0$0 == .
___str_5:
	.ascii "varal exposto automaticamente "
	.db 0x0a
	.db 0x00
Fmain$__str_6$0$0 == .
___str_6:
	.ascii "Manual "
	.db 0x0a
	.db 0x00
Fmain$__str_7$0$0 == .
___str_7:
	.ascii "MENU DE COMANDOS: "
	.db 0x0a
	.db 0x00
Fmain$__str_8$0$0 == .
___str_8:
	.ascii "E) Expor varal "
	.db 0x0a
	.db 0x00
Fmain$__str_9$0$0 == .
___str_9:
	.ascii "R) Recolher varal "
	.db 0x0a
	.db 0x00
Fmain$__str_10$0$0 == .
___str_10:
	.ascii "A) Modo automatico "
	.db 0x0a
	.db 0x00
Fmain$__str_11$0$0 == .
___str_11:
	.ascii "Alterando para automatico "
	.db 0x0a
	.db 0x00
Fmain$__str_12$0$0 == .
___str_12:
	.ascii "Varal exposto manualmente "
	.db 0x0a
	.db 0x00
Fmain$__str_13$0$0 == .
___str_13:
	.ascii "O varal ja esta exposto."
	.db 0x0a
	.db 0x00
Fmain$__str_14$0$0 == .
___str_14:
	.ascii "Varal recolhido manualmente "
	.db 0x0a
	.db 0x00
Fmain$__str_15$0$0 == .
___str_15:
	.ascii "O varal ja esta recolhido."
	.db 0x0a
	.db 0x00
Fmain$__str_16$0$0 == .
___str_16:
	.ascii "Comando invalido. "
	.db 0x0a
	.db 0x00
Fmain$__str_17$0$0 == .
___str_17:
	.ascii "Pressione H para comandos validos. "
	.db 0x0a
	.db 0x00
Fmain$__str_18$0$0 == .
___str_18:
	.ascii "COMECOU "
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
