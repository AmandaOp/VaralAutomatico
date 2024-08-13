                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _le_adc0_PARM_2
                                     12 	.globl _esc_RAM_SPI_PARM_2
                                     13 	.globl _main
                                     14 	.globl _modoManual
                                     15 	.globl _modoAutomatico
                                     16 	.globl _controlaLuzes
                                     17 	.globl _recolherVaral
                                     18 	.globl _exporVaral
                                     19 	.globl _isr_UART0
                                     20 	.globl _le_adc0
                                     21 	.globl _preenche_RAM_SPI
                                     22 	.globl _le_RAM_SPI
                                     23 	.globl _esc_RAM_SPI
                                     24 	.globl _printf_fast_f
                                     25 	.globl _delay_ms
                                     26 	.globl _Init_Device
                                     27 	.globl _Interrupts_Init
                                     28 	.globl _Oscillator_Init
                                     29 	.globl _Port_IO_Init
                                     30 	.globl _Voltage_Reference_Init
                                     31 	.globl _DAC_Init
                                     32 	.globl _ADC_Init
                                     33 	.globl _SPI_Init
                                     34 	.globl _SMBus_Init
                                     35 	.globl _UART_Init
                                     36 	.globl _Timer_Init
                                     37 	.globl _P7_7
                                     38 	.globl _P7_6
                                     39 	.globl _P7_5
                                     40 	.globl _P7_4
                                     41 	.globl _P7_3
                                     42 	.globl _P7_2
                                     43 	.globl _P7_1
                                     44 	.globl _P7_0
                                     45 	.globl _P6_7
                                     46 	.globl _P6_6
                                     47 	.globl _P6_5
                                     48 	.globl _P6_4
                                     49 	.globl _P6_3
                                     50 	.globl _P6_2
                                     51 	.globl _P6_1
                                     52 	.globl _P6_0
                                     53 	.globl _P5_7
                                     54 	.globl _P5_6
                                     55 	.globl _P5_5
                                     56 	.globl _P5_4
                                     57 	.globl _P5_3
                                     58 	.globl _P5_2
                                     59 	.globl _P5_1
                                     60 	.globl _P5_0
                                     61 	.globl _P4_7
                                     62 	.globl _P4_6
                                     63 	.globl _P4_5
                                     64 	.globl _P4_4
                                     65 	.globl _P4_3
                                     66 	.globl _P4_2
                                     67 	.globl _P4_1
                                     68 	.globl _P4_0
                                     69 	.globl _P3_7
                                     70 	.globl _P3_6
                                     71 	.globl _P3_5
                                     72 	.globl _P3_4
                                     73 	.globl _P3_3
                                     74 	.globl _P3_2
                                     75 	.globl _P3_1
                                     76 	.globl _P3_0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _P0_7
                                     94 	.globl _P0_6
                                     95 	.globl _P0_5
                                     96 	.globl _P0_4
                                     97 	.globl _P0_3
                                     98 	.globl _P0_2
                                     99 	.globl _P0_1
                                    100 	.globl _P0_0
                                    101 	.globl _CANTEST
                                    102 	.globl _CANCCE
                                    103 	.globl _CANDAR
                                    104 	.globl _CANIF
                                    105 	.globl _CANEIE
                                    106 	.globl _CANSIE
                                    107 	.globl _CANIE
                                    108 	.globl _CANINIT
                                    109 	.globl _SPIEN
                                    110 	.globl _TXBMT
                                    111 	.globl _NSSMD0
                                    112 	.globl _NSSMD1
                                    113 	.globl _RXOVRN
                                    114 	.globl _MODF
                                    115 	.globl _WCOL
                                    116 	.globl _SPIF
                                    117 	.globl _AD2WINT
                                    118 	.globl _AD2CM0
                                    119 	.globl _AD2CM1
                                    120 	.globl _AD2CM2
                                    121 	.globl _AD2BUSY
                                    122 	.globl _AD2INT
                                    123 	.globl _AD2TM
                                    124 	.globl _AD2EN
                                    125 	.globl _AD0LJST
                                    126 	.globl _AD0WINT
                                    127 	.globl _AD0CM0
                                    128 	.globl _AD0CM1
                                    129 	.globl _AD0BUSY
                                    130 	.globl _AD0INT
                                    131 	.globl _AD0TM
                                    132 	.globl _AD0EN
                                    133 	.globl _CCF0
                                    134 	.globl _CCF1
                                    135 	.globl _CCF2
                                    136 	.globl _CCF3
                                    137 	.globl _CCF4
                                    138 	.globl _CCF5
                                    139 	.globl _CR
                                    140 	.globl _CF
                                    141 	.globl _P
                                    142 	.globl _F1
                                    143 	.globl _OV
                                    144 	.globl _RS0
                                    145 	.globl _RS1
                                    146 	.globl _F0
                                    147 	.globl _AC
                                    148 	.globl _CY
                                    149 	.globl _CPRL4
                                    150 	.globl _CT4
                                    151 	.globl _TR4
                                    152 	.globl _EXEN4
                                    153 	.globl _EXF4
                                    154 	.globl _TF4
                                    155 	.globl _CPRL3
                                    156 	.globl _CT3
                                    157 	.globl _TR3
                                    158 	.globl _EXEN3
                                    159 	.globl _EXF3
                                    160 	.globl _TF3
                                    161 	.globl _CPRL2
                                    162 	.globl _CT2
                                    163 	.globl _TR2
                                    164 	.globl _EXEN2
                                    165 	.globl _EXF2
                                    166 	.globl _TF2
                                    167 	.globl _LEC0
                                    168 	.globl _LEC1
                                    169 	.globl _LEC2
                                    170 	.globl _TXOK
                                    171 	.globl _RXOK
                                    172 	.globl _EPASS
                                    173 	.globl _EWARN
                                    174 	.globl _BOFF
                                    175 	.globl _SMBTOE
                                    176 	.globl _SMBFTE
                                    177 	.globl _AA
                                    178 	.globl _SI
                                    179 	.globl _STO
                                    180 	.globl _STA
                                    181 	.globl _ENSMB
                                    182 	.globl _BUSY
                                    183 	.globl _PX0
                                    184 	.globl _PT0
                                    185 	.globl _PX1
                                    186 	.globl _PT1
                                    187 	.globl _PS0
                                    188 	.globl _PT2
                                    189 	.globl _EX0
                                    190 	.globl _ET0
                                    191 	.globl _EX1
                                    192 	.globl _ET1
                                    193 	.globl _ES0
                                    194 	.globl _ET2
                                    195 	.globl _EA
                                    196 	.globl _RI1
                                    197 	.globl _TI1
                                    198 	.globl _RB81
                                    199 	.globl _TB81
                                    200 	.globl _REN1
                                    201 	.globl _MCE1
                                    202 	.globl _S1MODE
                                    203 	.globl _RI0
                                    204 	.globl _TI0
                                    205 	.globl _RB80
                                    206 	.globl _TB80
                                    207 	.globl _REN0
                                    208 	.globl _SM20
                                    209 	.globl _SM10
                                    210 	.globl _SM00
                                    211 	.globl _CP2HYN0
                                    212 	.globl _CP2HYN1
                                    213 	.globl _CP2HYP0
                                    214 	.globl _CP2HYP1
                                    215 	.globl _CP2FIF
                                    216 	.globl _CP2RIF
                                    217 	.globl _CP2OUT
                                    218 	.globl _CP2EN
                                    219 	.globl _CP1HYN0
                                    220 	.globl _CP1HYN1
                                    221 	.globl _CP1HYP0
                                    222 	.globl _CP1HYP1
                                    223 	.globl _CP1FIF
                                    224 	.globl _CP1RIF
                                    225 	.globl _CP1OUT
                                    226 	.globl _CP1EN
                                    227 	.globl _CP0HYN0
                                    228 	.globl _CP0HYN1
                                    229 	.globl _CP0HYP0
                                    230 	.globl _CP0HYP1
                                    231 	.globl _CP0FIF
                                    232 	.globl _CP0RIF
                                    233 	.globl _CP0OUT
                                    234 	.globl _CP0EN
                                    235 	.globl _IT0
                                    236 	.globl _IE0
                                    237 	.globl _IT1
                                    238 	.globl _IE1
                                    239 	.globl _TR0
                                    240 	.globl _TF0
                                    241 	.globl _TR1
                                    242 	.globl _TF1
                                    243 	.globl __XPAGE
                                    244 	.globl _DP
                                    245 	.globl _ADC0
                                    246 	.globl _ADC0LT
                                    247 	.globl _ADC0GT
                                    248 	.globl _TMR4
                                    249 	.globl _TMR3
                                    250 	.globl _TMR2
                                    251 	.globl _RCAP4
                                    252 	.globl _RCAP3
                                    253 	.globl _RCAP2
                                    254 	.globl _DAC1
                                    255 	.globl _DAC0
                                    256 	.globl _CAN0DAT
                                    257 	.globl _PCA0CP5
                                    258 	.globl _PCA0CP4
                                    259 	.globl _PCA0CP3
                                    260 	.globl _PCA0CP2
                                    261 	.globl _PCA0CP1
                                    262 	.globl _PCA0CP0
                                    263 	.globl _PCA0
                                    264 	.globl _WDTCN
                                    265 	.globl _PCA0CPH1
                                    266 	.globl _PCA0CPL1
                                    267 	.globl _PCA0CPH0
                                    268 	.globl _PCA0CPL0
                                    269 	.globl _PCA0H
                                    270 	.globl _PCA0L
                                    271 	.globl _P7
                                    272 	.globl _CAN0CN
                                    273 	.globl _SPI0CN
                                    274 	.globl _EIP2
                                    275 	.globl _EIP1
                                    276 	.globl _B
                                    277 	.globl _RSTSRC
                                    278 	.globl _PCA0CPH4
                                    279 	.globl _PCA0CPL4
                                    280 	.globl _PCA0CPH3
                                    281 	.globl _PCA0CPL3
                                    282 	.globl _PCA0CPH2
                                    283 	.globl _PCA0CPL2
                                    284 	.globl _P6
                                    285 	.globl _ADC2CN
                                    286 	.globl _ADC0CN
                                    287 	.globl _EIE2
                                    288 	.globl _EIE1
                                    289 	.globl _XBR3
                                    290 	.globl _XBR2
                                    291 	.globl _XBR1
                                    292 	.globl _PCA0CPH5
                                    293 	.globl _XBR0
                                    294 	.globl _PCA0CPL5
                                    295 	.globl _ACC
                                    296 	.globl _PCA0CPM5
                                    297 	.globl _PCA0CPM4
                                    298 	.globl _PCA0CPM3
                                    299 	.globl _PCA0CPM2
                                    300 	.globl _CAN0TST
                                    301 	.globl _PCA0CPM1
                                    302 	.globl _CAN0ADR
                                    303 	.globl _PCA0CPM0
                                    304 	.globl _CAN0DATH
                                    305 	.globl _PCA0MD
                                    306 	.globl _P5
                                    307 	.globl _CAN0DATL
                                    308 	.globl _PCA0CN
                                    309 	.globl _HVA0CN
                                    310 	.globl _DAC1CN
                                    311 	.globl _DAC0CN
                                    312 	.globl _DAC1H
                                    313 	.globl _DAC0H
                                    314 	.globl _DAC1L
                                    315 	.globl _DAC0L
                                    316 	.globl _REF0CN
                                    317 	.globl _PSW
                                    318 	.globl _SMB0CR
                                    319 	.globl _TMR4H
                                    320 	.globl _TMR3H
                                    321 	.globl _TMR2H
                                    322 	.globl _TMR4L
                                    323 	.globl _TMR3L
                                    324 	.globl _TMR2L
                                    325 	.globl _RCAP4H
                                    326 	.globl _RCAP3H
                                    327 	.globl _RCAP2H
                                    328 	.globl _RCAP4L
                                    329 	.globl _RCAP3L
                                    330 	.globl _RCAP2L
                                    331 	.globl _TMR4CF
                                    332 	.globl _TMR3CF
                                    333 	.globl _TMR2CF
                                    334 	.globl _P4
                                    335 	.globl _TMR4CN
                                    336 	.globl _TMR3CN
                                    337 	.globl _TMR2CN
                                    338 	.globl _ADC0LTH
                                    339 	.globl _ADC2LT
                                    340 	.globl _ADC0LTL
                                    341 	.globl _ADC0GTH
                                    342 	.globl _ADC2GT
                                    343 	.globl _ADC0GTL
                                    344 	.globl _SMB0ADR
                                    345 	.globl _SMB0DAT
                                    346 	.globl _SMB0STA
                                    347 	.globl _CAN0STA
                                    348 	.globl _SMB0CN
                                    349 	.globl _ADC0H
                                    350 	.globl _ADC2
                                    351 	.globl _ADC0L
                                    352 	.globl _ADC2CF
                                    353 	.globl _ADC0CF
                                    354 	.globl _AMX2SL
                                    355 	.globl _AMX0SL
                                    356 	.globl _AMX0CF
                                    357 	.globl _AMX0PRT
                                    358 	.globl _AMX2CF
                                    359 	.globl _SADEN0
                                    360 	.globl _IP
                                    361 	.globl _FLACL
                                    362 	.globl _FLSCL
                                    363 	.globl _P3
                                    364 	.globl _P3MDIN
                                    365 	.globl _P2MDIN
                                    366 	.globl _P1MDIN
                                    367 	.globl _SADDR1
                                    368 	.globl _SADDR0
                                    369 	.globl _IE
                                    370 	.globl _P3MDOUT
                                    371 	.globl _P2MDOUT
                                    372 	.globl _P1MDOUT
                                    373 	.globl _P0MDOUT
                                    374 	.globl _EMI0CF
                                    375 	.globl _EMI0CN
                                    376 	.globl _EMI0TC
                                    377 	.globl _P2
                                    378 	.globl _P7MDOUT
                                    379 	.globl _P6MDOUT
                                    380 	.globl _P5MDOUT
                                    381 	.globl _SPI0CKR
                                    382 	.globl _P4MDOUT
                                    383 	.globl _SPI0DAT
                                    384 	.globl _SPI0CFG
                                    385 	.globl _SBUF1
                                    386 	.globl _SBUF0
                                    387 	.globl _SCON1
                                    388 	.globl _SCON0
                                    389 	.globl _CLKSEL
                                    390 	.globl _SFRPGCN
                                    391 	.globl _SSTA0
                                    392 	.globl _P1
                                    393 	.globl _PSCTL
                                    394 	.globl _CKCON
                                    395 	.globl _TH1
                                    396 	.globl _OSCXCN
                                    397 	.globl _TH0
                                    398 	.globl _OSCICL
                                    399 	.globl _TL1
                                    400 	.globl _OSCICN
                                    401 	.globl _TL0
                                    402 	.globl _CPT2MD
                                    403 	.globl _CPT1MD
                                    404 	.globl _CPT0MD
                                    405 	.globl _TMOD
                                    406 	.globl _CPT2CN
                                    407 	.globl _CPT1CN
                                    408 	.globl _CPT0CN
                                    409 	.globl _TCON
                                    410 	.globl _PCON
                                    411 	.globl _SFRLAST
                                    412 	.globl _SFRNEXT
                                    413 	.globl _SFRPAGE
                                    414 	.globl _DPH
                                    415 	.globl _DPL
                                    416 	.globl _SP
                                    417 	.globl _P0
                                    418 	.globl _AHO
                                    419 	.globl _HOR
                                    420 	.globl _estado_varal
                                    421 	.globl _manual
                                    422 	.globl _autom
                                    423 	.globl _leitura
                                    424 	.globl _flag
                                    425 	.globl _putchar
                                    426 ;--------------------------------------------------------
                                    427 ; special function registers
                                    428 ;--------------------------------------------------------
                                    429 	.area RSEG    (ABS,DATA)
      000000                        430 	.org 0x0000
                           000080   431 G$P0$0$0 == 0x0080
                           000080   432 _P0	=	0x0080
                           000081   433 G$SP$0$0 == 0x0081
                           000081   434 _SP	=	0x0081
                           000082   435 G$DPL$0$0 == 0x0082
                           000082   436 _DPL	=	0x0082
                           000083   437 G$DPH$0$0 == 0x0083
                           000083   438 _DPH	=	0x0083
                           000084   439 G$SFRPAGE$0$0 == 0x0084
                           000084   440 _SFRPAGE	=	0x0084
                           000085   441 G$SFRNEXT$0$0 == 0x0085
                           000085   442 _SFRNEXT	=	0x0085
                           000086   443 G$SFRLAST$0$0 == 0x0086
                           000086   444 _SFRLAST	=	0x0086
                           000087   445 G$PCON$0$0 == 0x0087
                           000087   446 _PCON	=	0x0087
                           000088   447 G$TCON$0$0 == 0x0088
                           000088   448 _TCON	=	0x0088
                           000088   449 G$CPT0CN$0$0 == 0x0088
                           000088   450 _CPT0CN	=	0x0088
                           000088   451 G$CPT1CN$0$0 == 0x0088
                           000088   452 _CPT1CN	=	0x0088
                           000088   453 G$CPT2CN$0$0 == 0x0088
                           000088   454 _CPT2CN	=	0x0088
                           000089   455 G$TMOD$0$0 == 0x0089
                           000089   456 _TMOD	=	0x0089
                           000089   457 G$CPT0MD$0$0 == 0x0089
                           000089   458 _CPT0MD	=	0x0089
                           000089   459 G$CPT1MD$0$0 == 0x0089
                           000089   460 _CPT1MD	=	0x0089
                           000089   461 G$CPT2MD$0$0 == 0x0089
                           000089   462 _CPT2MD	=	0x0089
                           00008A   463 G$TL0$0$0 == 0x008a
                           00008A   464 _TL0	=	0x008a
                           00008A   465 G$OSCICN$0$0 == 0x008a
                           00008A   466 _OSCICN	=	0x008a
                           00008B   467 G$TL1$0$0 == 0x008b
                           00008B   468 _TL1	=	0x008b
                           00008B   469 G$OSCICL$0$0 == 0x008b
                           00008B   470 _OSCICL	=	0x008b
                           00008C   471 G$TH0$0$0 == 0x008c
                           00008C   472 _TH0	=	0x008c
                           00008C   473 G$OSCXCN$0$0 == 0x008c
                           00008C   474 _OSCXCN	=	0x008c
                           00008D   475 G$TH1$0$0 == 0x008d
                           00008D   476 _TH1	=	0x008d
                           00008E   477 G$CKCON$0$0 == 0x008e
                           00008E   478 _CKCON	=	0x008e
                           00008F   479 G$PSCTL$0$0 == 0x008f
                           00008F   480 _PSCTL	=	0x008f
                           000090   481 G$P1$0$0 == 0x0090
                           000090   482 _P1	=	0x0090
                           000091   483 G$SSTA0$0$0 == 0x0091
                           000091   484 _SSTA0	=	0x0091
                           000096   485 G$SFRPGCN$0$0 == 0x0096
                           000096   486 _SFRPGCN	=	0x0096
                           000097   487 G$CLKSEL$0$0 == 0x0097
                           000097   488 _CLKSEL	=	0x0097
                           000098   489 G$SCON0$0$0 == 0x0098
                           000098   490 _SCON0	=	0x0098
                           000098   491 G$SCON1$0$0 == 0x0098
                           000098   492 _SCON1	=	0x0098
                           000099   493 G$SBUF0$0$0 == 0x0099
                           000099   494 _SBUF0	=	0x0099
                           000099   495 G$SBUF1$0$0 == 0x0099
                           000099   496 _SBUF1	=	0x0099
                           00009A   497 G$SPI0CFG$0$0 == 0x009a
                           00009A   498 _SPI0CFG	=	0x009a
                           00009B   499 G$SPI0DAT$0$0 == 0x009b
                           00009B   500 _SPI0DAT	=	0x009b
                           00009C   501 G$P4MDOUT$0$0 == 0x009c
                           00009C   502 _P4MDOUT	=	0x009c
                           00009D   503 G$SPI0CKR$0$0 == 0x009d
                           00009D   504 _SPI0CKR	=	0x009d
                           00009D   505 G$P5MDOUT$0$0 == 0x009d
                           00009D   506 _P5MDOUT	=	0x009d
                           00009E   507 G$P6MDOUT$0$0 == 0x009e
                           00009E   508 _P6MDOUT	=	0x009e
                           00009F   509 G$P7MDOUT$0$0 == 0x009f
                           00009F   510 _P7MDOUT	=	0x009f
                           0000A0   511 G$P2$0$0 == 0x00a0
                           0000A0   512 _P2	=	0x00a0
                           0000A1   513 G$EMI0TC$0$0 == 0x00a1
                           0000A1   514 _EMI0TC	=	0x00a1
                           0000A2   515 G$EMI0CN$0$0 == 0x00a2
                           0000A2   516 _EMI0CN	=	0x00a2
                           0000A3   517 G$EMI0CF$0$0 == 0x00a3
                           0000A3   518 _EMI0CF	=	0x00a3
                           0000A4   519 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   520 _P0MDOUT	=	0x00a4
                           0000A5   521 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   522 _P1MDOUT	=	0x00a5
                           0000A6   523 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   524 _P2MDOUT	=	0x00a6
                           0000A7   525 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   526 _P3MDOUT	=	0x00a7
                           0000A8   527 G$IE$0$0 == 0x00a8
                           0000A8   528 _IE	=	0x00a8
                           0000A9   529 G$SADDR0$0$0 == 0x00a9
                           0000A9   530 _SADDR0	=	0x00a9
                           0000A9   531 G$SADDR1$0$0 == 0x00a9
                           0000A9   532 _SADDR1	=	0x00a9
                           0000AD   533 G$P1MDIN$0$0 == 0x00ad
                           0000AD   534 _P1MDIN	=	0x00ad
                           0000AE   535 G$P2MDIN$0$0 == 0x00ae
                           0000AE   536 _P2MDIN	=	0x00ae
                           0000AF   537 G$P3MDIN$0$0 == 0x00af
                           0000AF   538 _P3MDIN	=	0x00af
                           0000B0   539 G$P3$0$0 == 0x00b0
                           0000B0   540 _P3	=	0x00b0
                           0000B7   541 G$FLSCL$0$0 == 0x00b7
                           0000B7   542 _FLSCL	=	0x00b7
                           0000B7   543 G$FLACL$0$0 == 0x00b7
                           0000B7   544 _FLACL	=	0x00b7
                           0000B8   545 G$IP$0$0 == 0x00b8
                           0000B8   546 _IP	=	0x00b8
                           0000B9   547 G$SADEN0$0$0 == 0x00b9
                           0000B9   548 _SADEN0	=	0x00b9
                           0000BA   549 G$AMX2CF$0$0 == 0x00ba
                           0000BA   550 _AMX2CF	=	0x00ba
                           0000BD   551 G$AMX0PRT$0$0 == 0x00bd
                           0000BD   552 _AMX0PRT	=	0x00bd
                           0000BA   553 G$AMX0CF$0$0 == 0x00ba
                           0000BA   554 _AMX0CF	=	0x00ba
                           0000BB   555 G$AMX0SL$0$0 == 0x00bb
                           0000BB   556 _AMX0SL	=	0x00bb
                           0000BB   557 G$AMX2SL$0$0 == 0x00bb
                           0000BB   558 _AMX2SL	=	0x00bb
                           0000BC   559 G$ADC0CF$0$0 == 0x00bc
                           0000BC   560 _ADC0CF	=	0x00bc
                           0000BC   561 G$ADC2CF$0$0 == 0x00bc
                           0000BC   562 _ADC2CF	=	0x00bc
                           0000BE   563 G$ADC0L$0$0 == 0x00be
                           0000BE   564 _ADC0L	=	0x00be
                           0000BE   565 G$ADC2$0$0 == 0x00be
                           0000BE   566 _ADC2	=	0x00be
                           0000BF   567 G$ADC0H$0$0 == 0x00bf
                           0000BF   568 _ADC0H	=	0x00bf
                           0000C0   569 G$SMB0CN$0$0 == 0x00c0
                           0000C0   570 _SMB0CN	=	0x00c0
                           0000C0   571 G$CAN0STA$0$0 == 0x00c0
                           0000C0   572 _CAN0STA	=	0x00c0
                           0000C1   573 G$SMB0STA$0$0 == 0x00c1
                           0000C1   574 _SMB0STA	=	0x00c1
                           0000C2   575 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   576 _SMB0DAT	=	0x00c2
                           0000C3   577 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   578 _SMB0ADR	=	0x00c3
                           0000C4   579 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   580 _ADC0GTL	=	0x00c4
                           0000C4   581 G$ADC2GT$0$0 == 0x00c4
                           0000C4   582 _ADC2GT	=	0x00c4
                           0000C5   583 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   584 _ADC0GTH	=	0x00c5
                           0000C6   585 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   586 _ADC0LTL	=	0x00c6
                           0000C6   587 G$ADC2LT$0$0 == 0x00c6
                           0000C6   588 _ADC2LT	=	0x00c6
                           0000C7   589 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   590 _ADC0LTH	=	0x00c7
                           0000C8   591 G$TMR2CN$0$0 == 0x00c8
                           0000C8   592 _TMR2CN	=	0x00c8
                           0000C8   593 G$TMR3CN$0$0 == 0x00c8
                           0000C8   594 _TMR3CN	=	0x00c8
                           0000C8   595 G$TMR4CN$0$0 == 0x00c8
                           0000C8   596 _TMR4CN	=	0x00c8
                           0000C8   597 G$P4$0$0 == 0x00c8
                           0000C8   598 _P4	=	0x00c8
                           0000C9   599 G$TMR2CF$0$0 == 0x00c9
                           0000C9   600 _TMR2CF	=	0x00c9
                           0000C9   601 G$TMR3CF$0$0 == 0x00c9
                           0000C9   602 _TMR3CF	=	0x00c9
                           0000C9   603 G$TMR4CF$0$0 == 0x00c9
                           0000C9   604 _TMR4CF	=	0x00c9
                           0000CA   605 G$RCAP2L$0$0 == 0x00ca
                           0000CA   606 _RCAP2L	=	0x00ca
                           0000CA   607 G$RCAP3L$0$0 == 0x00ca
                           0000CA   608 _RCAP3L	=	0x00ca
                           0000CA   609 G$RCAP4L$0$0 == 0x00ca
                           0000CA   610 _RCAP4L	=	0x00ca
                           0000CB   611 G$RCAP2H$0$0 == 0x00cb
                           0000CB   612 _RCAP2H	=	0x00cb
                           0000CB   613 G$RCAP3H$0$0 == 0x00cb
                           0000CB   614 _RCAP3H	=	0x00cb
                           0000CB   615 G$RCAP4H$0$0 == 0x00cb
                           0000CB   616 _RCAP4H	=	0x00cb
                           0000CC   617 G$TMR2L$0$0 == 0x00cc
                           0000CC   618 _TMR2L	=	0x00cc
                           0000CC   619 G$TMR3L$0$0 == 0x00cc
                           0000CC   620 _TMR3L	=	0x00cc
                           0000CC   621 G$TMR4L$0$0 == 0x00cc
                           0000CC   622 _TMR4L	=	0x00cc
                           0000CD   623 G$TMR2H$0$0 == 0x00cd
                           0000CD   624 _TMR2H	=	0x00cd
                           0000CD   625 G$TMR3H$0$0 == 0x00cd
                           0000CD   626 _TMR3H	=	0x00cd
                           0000CD   627 G$TMR4H$0$0 == 0x00cd
                           0000CD   628 _TMR4H	=	0x00cd
                           0000CF   629 G$SMB0CR$0$0 == 0x00cf
                           0000CF   630 _SMB0CR	=	0x00cf
                           0000D0   631 G$PSW$0$0 == 0x00d0
                           0000D0   632 _PSW	=	0x00d0
                           0000D1   633 G$REF0CN$0$0 == 0x00d1
                           0000D1   634 _REF0CN	=	0x00d1
                           0000D2   635 G$DAC0L$0$0 == 0x00d2
                           0000D2   636 _DAC0L	=	0x00d2
                           0000D2   637 G$DAC1L$0$0 == 0x00d2
                           0000D2   638 _DAC1L	=	0x00d2
                           0000D3   639 G$DAC0H$0$0 == 0x00d3
                           0000D3   640 _DAC0H	=	0x00d3
                           0000D3   641 G$DAC1H$0$0 == 0x00d3
                           0000D3   642 _DAC1H	=	0x00d3
                           0000D4   643 G$DAC0CN$0$0 == 0x00d4
                           0000D4   644 _DAC0CN	=	0x00d4
                           0000D4   645 G$DAC1CN$0$0 == 0x00d4
                           0000D4   646 _DAC1CN	=	0x00d4
                           0000D6   647 G$HVA0CN$0$0 == 0x00d6
                           0000D6   648 _HVA0CN	=	0x00d6
                           0000D8   649 G$PCA0CN$0$0 == 0x00d8
                           0000D8   650 _PCA0CN	=	0x00d8
                           0000D8   651 G$CAN0DATL$0$0 == 0x00d8
                           0000D8   652 _CAN0DATL	=	0x00d8
                           0000D8   653 G$P5$0$0 == 0x00d8
                           0000D8   654 _P5	=	0x00d8
                           0000D9   655 G$PCA0MD$0$0 == 0x00d9
                           0000D9   656 _PCA0MD	=	0x00d9
                           0000D9   657 G$CAN0DATH$0$0 == 0x00d9
                           0000D9   658 _CAN0DATH	=	0x00d9
                           0000DA   659 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   660 _PCA0CPM0	=	0x00da
                           0000DA   661 G$CAN0ADR$0$0 == 0x00da
                           0000DA   662 _CAN0ADR	=	0x00da
                           0000DB   663 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   664 _PCA0CPM1	=	0x00db
                           0000DB   665 G$CAN0TST$0$0 == 0x00db
                           0000DB   666 _CAN0TST	=	0x00db
                           0000DC   667 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   668 _PCA0CPM2	=	0x00dc
                           0000DD   669 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   670 _PCA0CPM3	=	0x00dd
                           0000DE   671 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   672 _PCA0CPM4	=	0x00de
                           0000DF   673 G$PCA0CPM5$0$0 == 0x00df
                           0000DF   674 _PCA0CPM5	=	0x00df
                           0000E0   675 G$ACC$0$0 == 0x00e0
                           0000E0   676 _ACC	=	0x00e0
                           0000E1   677 G$PCA0CPL5$0$0 == 0x00e1
                           0000E1   678 _PCA0CPL5	=	0x00e1
                           0000E1   679 G$XBR0$0$0 == 0x00e1
                           0000E1   680 _XBR0	=	0x00e1
                           0000E2   681 G$PCA0CPH5$0$0 == 0x00e2
                           0000E2   682 _PCA0CPH5	=	0x00e2
                           0000E2   683 G$XBR1$0$0 == 0x00e2
                           0000E2   684 _XBR1	=	0x00e2
                           0000E3   685 G$XBR2$0$0 == 0x00e3
                           0000E3   686 _XBR2	=	0x00e3
                           0000E4   687 G$XBR3$0$0 == 0x00e4
                           0000E4   688 _XBR3	=	0x00e4
                           0000E6   689 G$EIE1$0$0 == 0x00e6
                           0000E6   690 _EIE1	=	0x00e6
                           0000E7   691 G$EIE2$0$0 == 0x00e7
                           0000E7   692 _EIE2	=	0x00e7
                           0000E8   693 G$ADC0CN$0$0 == 0x00e8
                           0000E8   694 _ADC0CN	=	0x00e8
                           0000E8   695 G$ADC2CN$0$0 == 0x00e8
                           0000E8   696 _ADC2CN	=	0x00e8
                           0000E8   697 G$P6$0$0 == 0x00e8
                           0000E8   698 _P6	=	0x00e8
                           0000E9   699 G$PCA0CPL2$0$0 == 0x00e9
                           0000E9   700 _PCA0CPL2	=	0x00e9
                           0000EA   701 G$PCA0CPH2$0$0 == 0x00ea
                           0000EA   702 _PCA0CPH2	=	0x00ea
                           0000EB   703 G$PCA0CPL3$0$0 == 0x00eb
                           0000EB   704 _PCA0CPL3	=	0x00eb
                           0000EC   705 G$PCA0CPH3$0$0 == 0x00ec
                           0000EC   706 _PCA0CPH3	=	0x00ec
                           0000ED   707 G$PCA0CPL4$0$0 == 0x00ed
                           0000ED   708 _PCA0CPL4	=	0x00ed
                           0000EE   709 G$PCA0CPH4$0$0 == 0x00ee
                           0000EE   710 _PCA0CPH4	=	0x00ee
                           0000EF   711 G$RSTSRC$0$0 == 0x00ef
                           0000EF   712 _RSTSRC	=	0x00ef
                           0000F0   713 G$B$0$0 == 0x00f0
                           0000F0   714 _B	=	0x00f0
                           0000F6   715 G$EIP1$0$0 == 0x00f6
                           0000F6   716 _EIP1	=	0x00f6
                           0000F7   717 G$EIP2$0$0 == 0x00f7
                           0000F7   718 _EIP2	=	0x00f7
                           0000F8   719 G$SPI0CN$0$0 == 0x00f8
                           0000F8   720 _SPI0CN	=	0x00f8
                           0000F8   721 G$CAN0CN$0$0 == 0x00f8
                           0000F8   722 _CAN0CN	=	0x00f8
                           0000F8   723 G$P7$0$0 == 0x00f8
                           0000F8   724 _P7	=	0x00f8
                           0000F9   725 G$PCA0L$0$0 == 0x00f9
                           0000F9   726 _PCA0L	=	0x00f9
                           0000FA   727 G$PCA0H$0$0 == 0x00fa
                           0000FA   728 _PCA0H	=	0x00fa
                           0000FB   729 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   730 _PCA0CPL0	=	0x00fb
                           0000FC   731 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   732 _PCA0CPH0	=	0x00fc
                           0000FD   733 G$PCA0CPL1$0$0 == 0x00fd
                           0000FD   734 _PCA0CPL1	=	0x00fd
                           0000FE   735 G$PCA0CPH1$0$0 == 0x00fe
                           0000FE   736 _PCA0CPH1	=	0x00fe
                           0000FF   737 G$WDTCN$0$0 == 0x00ff
                           0000FF   738 _WDTCN	=	0x00ff
                           00FAF9   739 G$PCA0$0$0 == 0xfaf9
                           00FAF9   740 _PCA0	=	0xfaf9
                           00FCFB   741 G$PCA0CP0$0$0 == 0xfcfb
                           00FCFB   742 _PCA0CP0	=	0xfcfb
                           00FEFD   743 G$PCA0CP1$0$0 == 0xfefd
                           00FEFD   744 _PCA0CP1	=	0xfefd
                           00EAE9   745 G$PCA0CP2$0$0 == 0xeae9
                           00EAE9   746 _PCA0CP2	=	0xeae9
                           00ECEB   747 G$PCA0CP3$0$0 == 0xeceb
                           00ECEB   748 _PCA0CP3	=	0xeceb
                           00EEED   749 G$PCA0CP4$0$0 == 0xeeed
                           00EEED   750 _PCA0CP4	=	0xeeed
                           00E2E1   751 G$PCA0CP5$0$0 == 0xe2e1
                           00E2E1   752 _PCA0CP5	=	0xe2e1
                           00D9D8   753 G$CAN0DAT$0$0 == 0xd9d8
                           00D9D8   754 _CAN0DAT	=	0xd9d8
                           00D3D2   755 G$DAC0$0$0 == 0xd3d2
                           00D3D2   756 _DAC0	=	0xd3d2
                           00D3D2   757 G$DAC1$0$0 == 0xd3d2
                           00D3D2   758 _DAC1	=	0xd3d2
                           00CBCA   759 G$RCAP2$0$0 == 0xcbca
                           00CBCA   760 _RCAP2	=	0xcbca
                           00CBCA   761 G$RCAP3$0$0 == 0xcbca
                           00CBCA   762 _RCAP3	=	0xcbca
                           00CBCA   763 G$RCAP4$0$0 == 0xcbca
                           00CBCA   764 _RCAP4	=	0xcbca
                           00CDCC   765 G$TMR2$0$0 == 0xcdcc
                           00CDCC   766 _TMR2	=	0xcdcc
                           00CDCC   767 G$TMR3$0$0 == 0xcdcc
                           00CDCC   768 _TMR3	=	0xcdcc
                           00CDCC   769 G$TMR4$0$0 == 0xcdcc
                           00CDCC   770 _TMR4	=	0xcdcc
                           00C5C4   771 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   772 _ADC0GT	=	0xc5c4
                           00C7C6   773 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   774 _ADC0LT	=	0xc7c6
                           00BFBE   775 G$ADC0$0$0 == 0xbfbe
                           00BFBE   776 _ADC0	=	0xbfbe
                           008382   777 G$DP$0$0 == 0x8382
                           008382   778 _DP	=	0x8382
                           0000A2   779 G$_XPAGE$0$0 == 0x00a2
                           0000A2   780 __XPAGE	=	0x00a2
                                    781 ;--------------------------------------------------------
                                    782 ; special function bits
                                    783 ;--------------------------------------------------------
                                    784 	.area RSEG    (ABS,DATA)
      000000                        785 	.org 0x0000
                           00008F   786 G$TF1$0$0 == 0x008f
                           00008F   787 _TF1	=	0x008f
                           00008E   788 G$TR1$0$0 == 0x008e
                           00008E   789 _TR1	=	0x008e
                           00008D   790 G$TF0$0$0 == 0x008d
                           00008D   791 _TF0	=	0x008d
                           00008C   792 G$TR0$0$0 == 0x008c
                           00008C   793 _TR0	=	0x008c
                           00008B   794 G$IE1$0$0 == 0x008b
                           00008B   795 _IE1	=	0x008b
                           00008A   796 G$IT1$0$0 == 0x008a
                           00008A   797 _IT1	=	0x008a
                           000089   798 G$IE0$0$0 == 0x0089
                           000089   799 _IE0	=	0x0089
                           000088   800 G$IT0$0$0 == 0x0088
                           000088   801 _IT0	=	0x0088
                           00008F   802 G$CP0EN$0$0 == 0x008f
                           00008F   803 _CP0EN	=	0x008f
                           00008E   804 G$CP0OUT$0$0 == 0x008e
                           00008E   805 _CP0OUT	=	0x008e
                           00008D   806 G$CP0RIF$0$0 == 0x008d
                           00008D   807 _CP0RIF	=	0x008d
                           00008C   808 G$CP0FIF$0$0 == 0x008c
                           00008C   809 _CP0FIF	=	0x008c
                           00008B   810 G$CP0HYP1$0$0 == 0x008b
                           00008B   811 _CP0HYP1	=	0x008b
                           00008A   812 G$CP0HYP0$0$0 == 0x008a
                           00008A   813 _CP0HYP0	=	0x008a
                           000089   814 G$CP0HYN1$0$0 == 0x0089
                           000089   815 _CP0HYN1	=	0x0089
                           000088   816 G$CP0HYN0$0$0 == 0x0088
                           000088   817 _CP0HYN0	=	0x0088
                           00008F   818 G$CP1EN$0$0 == 0x008f
                           00008F   819 _CP1EN	=	0x008f
                           00008E   820 G$CP1OUT$0$0 == 0x008e
                           00008E   821 _CP1OUT	=	0x008e
                           00008D   822 G$CP1RIF$0$0 == 0x008d
                           00008D   823 _CP1RIF	=	0x008d
                           00008C   824 G$CP1FIF$0$0 == 0x008c
                           00008C   825 _CP1FIF	=	0x008c
                           00008B   826 G$CP1HYP1$0$0 == 0x008b
                           00008B   827 _CP1HYP1	=	0x008b
                           00008A   828 G$CP1HYP0$0$0 == 0x008a
                           00008A   829 _CP1HYP0	=	0x008a
                           000089   830 G$CP1HYN1$0$0 == 0x0089
                           000089   831 _CP1HYN1	=	0x0089
                           000088   832 G$CP1HYN0$0$0 == 0x0088
                           000088   833 _CP1HYN0	=	0x0088
                           00008F   834 G$CP2EN$0$0 == 0x008f
                           00008F   835 _CP2EN	=	0x008f
                           00008E   836 G$CP2OUT$0$0 == 0x008e
                           00008E   837 _CP2OUT	=	0x008e
                           00008D   838 G$CP2RIF$0$0 == 0x008d
                           00008D   839 _CP2RIF	=	0x008d
                           00008C   840 G$CP2FIF$0$0 == 0x008c
                           00008C   841 _CP2FIF	=	0x008c
                           00008B   842 G$CP2HYP1$0$0 == 0x008b
                           00008B   843 _CP2HYP1	=	0x008b
                           00008A   844 G$CP2HYP0$0$0 == 0x008a
                           00008A   845 _CP2HYP0	=	0x008a
                           000089   846 G$CP2HYN1$0$0 == 0x0089
                           000089   847 _CP2HYN1	=	0x0089
                           000088   848 G$CP2HYN0$0$0 == 0x0088
                           000088   849 _CP2HYN0	=	0x0088
                           00009F   850 G$SM00$0$0 == 0x009f
                           00009F   851 _SM00	=	0x009f
                           00009E   852 G$SM10$0$0 == 0x009e
                           00009E   853 _SM10	=	0x009e
                           00009D   854 G$SM20$0$0 == 0x009d
                           00009D   855 _SM20	=	0x009d
                           00009C   856 G$REN0$0$0 == 0x009c
                           00009C   857 _REN0	=	0x009c
                           00009B   858 G$TB80$0$0 == 0x009b
                           00009B   859 _TB80	=	0x009b
                           00009A   860 G$RB80$0$0 == 0x009a
                           00009A   861 _RB80	=	0x009a
                           000099   862 G$TI0$0$0 == 0x0099
                           000099   863 _TI0	=	0x0099
                           000098   864 G$RI0$0$0 == 0x0098
                           000098   865 _RI0	=	0x0098
                           00009F   866 G$S1MODE$0$0 == 0x009f
                           00009F   867 _S1MODE	=	0x009f
                           00009D   868 G$MCE1$0$0 == 0x009d
                           00009D   869 _MCE1	=	0x009d
                           00009C   870 G$REN1$0$0 == 0x009c
                           00009C   871 _REN1	=	0x009c
                           00009B   872 G$TB81$0$0 == 0x009b
                           00009B   873 _TB81	=	0x009b
                           00009A   874 G$RB81$0$0 == 0x009a
                           00009A   875 _RB81	=	0x009a
                           000099   876 G$TI1$0$0 == 0x0099
                           000099   877 _TI1	=	0x0099
                           000098   878 G$RI1$0$0 == 0x0098
                           000098   879 _RI1	=	0x0098
                           0000AF   880 G$EA$0$0 == 0x00af
                           0000AF   881 _EA	=	0x00af
                           0000AD   882 G$ET2$0$0 == 0x00ad
                           0000AD   883 _ET2	=	0x00ad
                           0000AC   884 G$ES0$0$0 == 0x00ac
                           0000AC   885 _ES0	=	0x00ac
                           0000AB   886 G$ET1$0$0 == 0x00ab
                           0000AB   887 _ET1	=	0x00ab
                           0000AA   888 G$EX1$0$0 == 0x00aa
                           0000AA   889 _EX1	=	0x00aa
                           0000A9   890 G$ET0$0$0 == 0x00a9
                           0000A9   891 _ET0	=	0x00a9
                           0000A8   892 G$EX0$0$0 == 0x00a8
                           0000A8   893 _EX0	=	0x00a8
                           0000BD   894 G$PT2$0$0 == 0x00bd
                           0000BD   895 _PT2	=	0x00bd
                           0000BC   896 G$PS0$0$0 == 0x00bc
                           0000BC   897 _PS0	=	0x00bc
                           0000BB   898 G$PT1$0$0 == 0x00bb
                           0000BB   899 _PT1	=	0x00bb
                           0000BA   900 G$PX1$0$0 == 0x00ba
                           0000BA   901 _PX1	=	0x00ba
                           0000B9   902 G$PT0$0$0 == 0x00b9
                           0000B9   903 _PT0	=	0x00b9
                           0000B8   904 G$PX0$0$0 == 0x00b8
                           0000B8   905 _PX0	=	0x00b8
                           0000C7   906 G$BUSY$0$0 == 0x00c7
                           0000C7   907 _BUSY	=	0x00c7
                           0000C6   908 G$ENSMB$0$0 == 0x00c6
                           0000C6   909 _ENSMB	=	0x00c6
                           0000C5   910 G$STA$0$0 == 0x00c5
                           0000C5   911 _STA	=	0x00c5
                           0000C4   912 G$STO$0$0 == 0x00c4
                           0000C4   913 _STO	=	0x00c4
                           0000C3   914 G$SI$0$0 == 0x00c3
                           0000C3   915 _SI	=	0x00c3
                           0000C2   916 G$AA$0$0 == 0x00c2
                           0000C2   917 _AA	=	0x00c2
                           0000C1   918 G$SMBFTE$0$0 == 0x00c1
                           0000C1   919 _SMBFTE	=	0x00c1
                           0000C0   920 G$SMBTOE$0$0 == 0x00c0
                           0000C0   921 _SMBTOE	=	0x00c0
                           0000C7   922 G$BOFF$0$0 == 0x00c7
                           0000C7   923 _BOFF	=	0x00c7
                           0000C6   924 G$EWARN$0$0 == 0x00c6
                           0000C6   925 _EWARN	=	0x00c6
                           0000C5   926 G$EPASS$0$0 == 0x00c5
                           0000C5   927 _EPASS	=	0x00c5
                           0000C4   928 G$RXOK$0$0 == 0x00c4
                           0000C4   929 _RXOK	=	0x00c4
                           0000C3   930 G$TXOK$0$0 == 0x00c3
                           0000C3   931 _TXOK	=	0x00c3
                           0000C2   932 G$LEC2$0$0 == 0x00c2
                           0000C2   933 _LEC2	=	0x00c2
                           0000C1   934 G$LEC1$0$0 == 0x00c1
                           0000C1   935 _LEC1	=	0x00c1
                           0000C0   936 G$LEC0$0$0 == 0x00c0
                           0000C0   937 _LEC0	=	0x00c0
                           0000CF   938 G$TF2$0$0 == 0x00cf
                           0000CF   939 _TF2	=	0x00cf
                           0000CE   940 G$EXF2$0$0 == 0x00ce
                           0000CE   941 _EXF2	=	0x00ce
                           0000CB   942 G$EXEN2$0$0 == 0x00cb
                           0000CB   943 _EXEN2	=	0x00cb
                           0000CA   944 G$TR2$0$0 == 0x00ca
                           0000CA   945 _TR2	=	0x00ca
                           0000C9   946 G$CT2$0$0 == 0x00c9
                           0000C9   947 _CT2	=	0x00c9
                           0000C8   948 G$CPRL2$0$0 == 0x00c8
                           0000C8   949 _CPRL2	=	0x00c8
                           0000CF   950 G$TF3$0$0 == 0x00cf
                           0000CF   951 _TF3	=	0x00cf
                           0000CE   952 G$EXF3$0$0 == 0x00ce
                           0000CE   953 _EXF3	=	0x00ce
                           0000CB   954 G$EXEN3$0$0 == 0x00cb
                           0000CB   955 _EXEN3	=	0x00cb
                           0000CA   956 G$TR3$0$0 == 0x00ca
                           0000CA   957 _TR3	=	0x00ca
                           0000C9   958 G$CT3$0$0 == 0x00c9
                           0000C9   959 _CT3	=	0x00c9
                           0000C8   960 G$CPRL3$0$0 == 0x00c8
                           0000C8   961 _CPRL3	=	0x00c8
                           0000CF   962 G$TF4$0$0 == 0x00cf
                           0000CF   963 _TF4	=	0x00cf
                           0000CE   964 G$EXF4$0$0 == 0x00ce
                           0000CE   965 _EXF4	=	0x00ce
                           0000CB   966 G$EXEN4$0$0 == 0x00cb
                           0000CB   967 _EXEN4	=	0x00cb
                           0000CA   968 G$TR4$0$0 == 0x00ca
                           0000CA   969 _TR4	=	0x00ca
                           0000C9   970 G$CT4$0$0 == 0x00c9
                           0000C9   971 _CT4	=	0x00c9
                           0000C8   972 G$CPRL4$0$0 == 0x00c8
                           0000C8   973 _CPRL4	=	0x00c8
                           0000D7   974 G$CY$0$0 == 0x00d7
                           0000D7   975 _CY	=	0x00d7
                           0000D6   976 G$AC$0$0 == 0x00d6
                           0000D6   977 _AC	=	0x00d6
                           0000D5   978 G$F0$0$0 == 0x00d5
                           0000D5   979 _F0	=	0x00d5
                           0000D4   980 G$RS1$0$0 == 0x00d4
                           0000D4   981 _RS1	=	0x00d4
                           0000D3   982 G$RS0$0$0 == 0x00d3
                           0000D3   983 _RS0	=	0x00d3
                           0000D2   984 G$OV$0$0 == 0x00d2
                           0000D2   985 _OV	=	0x00d2
                           0000D1   986 G$F1$0$0 == 0x00d1
                           0000D1   987 _F1	=	0x00d1
                           0000D0   988 G$P$0$0 == 0x00d0
                           0000D0   989 _P	=	0x00d0
                           0000DF   990 G$CF$0$0 == 0x00df
                           0000DF   991 _CF	=	0x00df
                           0000DE   992 G$CR$0$0 == 0x00de
                           0000DE   993 _CR	=	0x00de
                           0000DD   994 G$CCF5$0$0 == 0x00dd
                           0000DD   995 _CCF5	=	0x00dd
                           0000DC   996 G$CCF4$0$0 == 0x00dc
                           0000DC   997 _CCF4	=	0x00dc
                           0000DB   998 G$CCF3$0$0 == 0x00db
                           0000DB   999 _CCF3	=	0x00db
                           0000DA  1000 G$CCF2$0$0 == 0x00da
                           0000DA  1001 _CCF2	=	0x00da
                           0000D9  1002 G$CCF1$0$0 == 0x00d9
                           0000D9  1003 _CCF1	=	0x00d9
                           0000D8  1004 G$CCF0$0$0 == 0x00d8
                           0000D8  1005 _CCF0	=	0x00d8
                           0000EF  1006 G$AD0EN$0$0 == 0x00ef
                           0000EF  1007 _AD0EN	=	0x00ef
                           0000EE  1008 G$AD0TM$0$0 == 0x00ee
                           0000EE  1009 _AD0TM	=	0x00ee
                           0000ED  1010 G$AD0INT$0$0 == 0x00ed
                           0000ED  1011 _AD0INT	=	0x00ed
                           0000EC  1012 G$AD0BUSY$0$0 == 0x00ec
                           0000EC  1013 _AD0BUSY	=	0x00ec
                           0000EB  1014 G$AD0CM1$0$0 == 0x00eb
                           0000EB  1015 _AD0CM1	=	0x00eb
                           0000EA  1016 G$AD0CM0$0$0 == 0x00ea
                           0000EA  1017 _AD0CM0	=	0x00ea
                           0000E9  1018 G$AD0WINT$0$0 == 0x00e9
                           0000E9  1019 _AD0WINT	=	0x00e9
                           0000E8  1020 G$AD0LJST$0$0 == 0x00e8
                           0000E8  1021 _AD0LJST	=	0x00e8
                           0000EF  1022 G$AD2EN$0$0 == 0x00ef
                           0000EF  1023 _AD2EN	=	0x00ef
                           0000EE  1024 G$AD2TM$0$0 == 0x00ee
                           0000EE  1025 _AD2TM	=	0x00ee
                           0000ED  1026 G$AD2INT$0$0 == 0x00ed
                           0000ED  1027 _AD2INT	=	0x00ed
                           0000EC  1028 G$AD2BUSY$0$0 == 0x00ec
                           0000EC  1029 _AD2BUSY	=	0x00ec
                           0000EB  1030 G$AD2CM2$0$0 == 0x00eb
                           0000EB  1031 _AD2CM2	=	0x00eb
                           0000EA  1032 G$AD2CM1$0$0 == 0x00ea
                           0000EA  1033 _AD2CM1	=	0x00ea
                           0000E9  1034 G$AD2CM0$0$0 == 0x00e9
                           0000E9  1035 _AD2CM0	=	0x00e9
                           0000E8  1036 G$AD2WINT$0$0 == 0x00e8
                           0000E8  1037 _AD2WINT	=	0x00e8
                           0000FF  1038 G$SPIF$0$0 == 0x00ff
                           0000FF  1039 _SPIF	=	0x00ff
                           0000FE  1040 G$WCOL$0$0 == 0x00fe
                           0000FE  1041 _WCOL	=	0x00fe
                           0000FD  1042 G$MODF$0$0 == 0x00fd
                           0000FD  1043 _MODF	=	0x00fd
                           0000FC  1044 G$RXOVRN$0$0 == 0x00fc
                           0000FC  1045 _RXOVRN	=	0x00fc
                           0000FB  1046 G$NSSMD1$0$0 == 0x00fb
                           0000FB  1047 _NSSMD1	=	0x00fb
                           0000FA  1048 G$NSSMD0$0$0 == 0x00fa
                           0000FA  1049 _NSSMD0	=	0x00fa
                           0000F9  1050 G$TXBMT$0$0 == 0x00f9
                           0000F9  1051 _TXBMT	=	0x00f9
                           0000F8  1052 G$SPIEN$0$0 == 0x00f8
                           0000F8  1053 _SPIEN	=	0x00f8
                           0000F8  1054 G$CANINIT$0$0 == 0x00f8
                           0000F8  1055 _CANINIT	=	0x00f8
                           0000F9  1056 G$CANIE$0$0 == 0x00f9
                           0000F9  1057 _CANIE	=	0x00f9
                           0000FA  1058 G$CANSIE$0$0 == 0x00fa
                           0000FA  1059 _CANSIE	=	0x00fa
                           0000FB  1060 G$CANEIE$0$0 == 0x00fb
                           0000FB  1061 _CANEIE	=	0x00fb
                           0000FC  1062 G$CANIF$0$0 == 0x00fc
                           0000FC  1063 _CANIF	=	0x00fc
                           0000FD  1064 G$CANDAR$0$0 == 0x00fd
                           0000FD  1065 _CANDAR	=	0x00fd
                           0000FE  1066 G$CANCCE$0$0 == 0x00fe
                           0000FE  1067 _CANCCE	=	0x00fe
                           0000FF  1068 G$CANTEST$0$0 == 0x00ff
                           0000FF  1069 _CANTEST	=	0x00ff
                           000080  1070 G$P0_0$0$0 == 0x0080
                           000080  1071 _P0_0	=	0x0080
                           000081  1072 G$P0_1$0$0 == 0x0081
                           000081  1073 _P0_1	=	0x0081
                           000082  1074 G$P0_2$0$0 == 0x0082
                           000082  1075 _P0_2	=	0x0082
                           000083  1076 G$P0_3$0$0 == 0x0083
                           000083  1077 _P0_3	=	0x0083
                           000084  1078 G$P0_4$0$0 == 0x0084
                           000084  1079 _P0_4	=	0x0084
                           000085  1080 G$P0_5$0$0 == 0x0085
                           000085  1081 _P0_5	=	0x0085
                           000086  1082 G$P0_6$0$0 == 0x0086
                           000086  1083 _P0_6	=	0x0086
                           000087  1084 G$P0_7$0$0 == 0x0087
                           000087  1085 _P0_7	=	0x0087
                           000090  1086 G$P1_0$0$0 == 0x0090
                           000090  1087 _P1_0	=	0x0090
                           000091  1088 G$P1_1$0$0 == 0x0091
                           000091  1089 _P1_1	=	0x0091
                           000092  1090 G$P1_2$0$0 == 0x0092
                           000092  1091 _P1_2	=	0x0092
                           000093  1092 G$P1_3$0$0 == 0x0093
                           000093  1093 _P1_3	=	0x0093
                           000094  1094 G$P1_4$0$0 == 0x0094
                           000094  1095 _P1_4	=	0x0094
                           000095  1096 G$P1_5$0$0 == 0x0095
                           000095  1097 _P1_5	=	0x0095
                           000096  1098 G$P1_6$0$0 == 0x0096
                           000096  1099 _P1_6	=	0x0096
                           000097  1100 G$P1_7$0$0 == 0x0097
                           000097  1101 _P1_7	=	0x0097
                           0000A0  1102 G$P2_0$0$0 == 0x00a0
                           0000A0  1103 _P2_0	=	0x00a0
                           0000A1  1104 G$P2_1$0$0 == 0x00a1
                           0000A1  1105 _P2_1	=	0x00a1
                           0000A2  1106 G$P2_2$0$0 == 0x00a2
                           0000A2  1107 _P2_2	=	0x00a2
                           0000A3  1108 G$P2_3$0$0 == 0x00a3
                           0000A3  1109 _P2_3	=	0x00a3
                           0000A4  1110 G$P2_4$0$0 == 0x00a4
                           0000A4  1111 _P2_4	=	0x00a4
                           0000A5  1112 G$P2_5$0$0 == 0x00a5
                           0000A5  1113 _P2_5	=	0x00a5
                           0000A6  1114 G$P2_6$0$0 == 0x00a6
                           0000A6  1115 _P2_6	=	0x00a6
                           0000A7  1116 G$P2_7$0$0 == 0x00a7
                           0000A7  1117 _P2_7	=	0x00a7
                           0000B0  1118 G$P3_0$0$0 == 0x00b0
                           0000B0  1119 _P3_0	=	0x00b0
                           0000B1  1120 G$P3_1$0$0 == 0x00b1
                           0000B1  1121 _P3_1	=	0x00b1
                           0000B2  1122 G$P3_2$0$0 == 0x00b2
                           0000B2  1123 _P3_2	=	0x00b2
                           0000B3  1124 G$P3_3$0$0 == 0x00b3
                           0000B3  1125 _P3_3	=	0x00b3
                           0000B4  1126 G$P3_4$0$0 == 0x00b4
                           0000B4  1127 _P3_4	=	0x00b4
                           0000B5  1128 G$P3_5$0$0 == 0x00b5
                           0000B5  1129 _P3_5	=	0x00b5
                           0000B6  1130 G$P3_6$0$0 == 0x00b6
                           0000B6  1131 _P3_6	=	0x00b6
                           0000B7  1132 G$P3_7$0$0 == 0x00b7
                           0000B7  1133 _P3_7	=	0x00b7
                           0000C8  1134 G$P4_0$0$0 == 0x00c8
                           0000C8  1135 _P4_0	=	0x00c8
                           0000C9  1136 G$P4_1$0$0 == 0x00c9
                           0000C9  1137 _P4_1	=	0x00c9
                           0000CA  1138 G$P4_2$0$0 == 0x00ca
                           0000CA  1139 _P4_2	=	0x00ca
                           0000CB  1140 G$P4_3$0$0 == 0x00cb
                           0000CB  1141 _P4_3	=	0x00cb
                           0000CC  1142 G$P4_4$0$0 == 0x00cc
                           0000CC  1143 _P4_4	=	0x00cc
                           0000CD  1144 G$P4_5$0$0 == 0x00cd
                           0000CD  1145 _P4_5	=	0x00cd
                           0000CE  1146 G$P4_6$0$0 == 0x00ce
                           0000CE  1147 _P4_6	=	0x00ce
                           0000CF  1148 G$P4_7$0$0 == 0x00cf
                           0000CF  1149 _P4_7	=	0x00cf
                           0000D8  1150 G$P5_0$0$0 == 0x00d8
                           0000D8  1151 _P5_0	=	0x00d8
                           0000D9  1152 G$P5_1$0$0 == 0x00d9
                           0000D9  1153 _P5_1	=	0x00d9
                           0000DA  1154 G$P5_2$0$0 == 0x00da
                           0000DA  1155 _P5_2	=	0x00da
                           0000DB  1156 G$P5_3$0$0 == 0x00db
                           0000DB  1157 _P5_3	=	0x00db
                           0000DC  1158 G$P5_4$0$0 == 0x00dc
                           0000DC  1159 _P5_4	=	0x00dc
                           0000DD  1160 G$P5_5$0$0 == 0x00dd
                           0000DD  1161 _P5_5	=	0x00dd
                           0000DE  1162 G$P5_6$0$0 == 0x00de
                           0000DE  1163 _P5_6	=	0x00de
                           0000DF  1164 G$P5_7$0$0 == 0x00df
                           0000DF  1165 _P5_7	=	0x00df
                           0000E8  1166 G$P6_0$0$0 == 0x00e8
                           0000E8  1167 _P6_0	=	0x00e8
                           0000E9  1168 G$P6_1$0$0 == 0x00e9
                           0000E9  1169 _P6_1	=	0x00e9
                           0000EA  1170 G$P6_2$0$0 == 0x00ea
                           0000EA  1171 _P6_2	=	0x00ea
                           0000EB  1172 G$P6_3$0$0 == 0x00eb
                           0000EB  1173 _P6_3	=	0x00eb
                           0000EC  1174 G$P6_4$0$0 == 0x00ec
                           0000EC  1175 _P6_4	=	0x00ec
                           0000ED  1176 G$P6_5$0$0 == 0x00ed
                           0000ED  1177 _P6_5	=	0x00ed
                           0000EE  1178 G$P6_6$0$0 == 0x00ee
                           0000EE  1179 _P6_6	=	0x00ee
                           0000EF  1180 G$P6_7$0$0 == 0x00ef
                           0000EF  1181 _P6_7	=	0x00ef
                           0000F8  1182 G$P7_0$0$0 == 0x00f8
                           0000F8  1183 _P7_0	=	0x00f8
                           0000F9  1184 G$P7_1$0$0 == 0x00f9
                           0000F9  1185 _P7_1	=	0x00f9
                           0000FA  1186 G$P7_2$0$0 == 0x00fa
                           0000FA  1187 _P7_2	=	0x00fa
                           0000FB  1188 G$P7_3$0$0 == 0x00fb
                           0000FB  1189 _P7_3	=	0x00fb
                           0000FC  1190 G$P7_4$0$0 == 0x00fc
                           0000FC  1191 _P7_4	=	0x00fc
                           0000FD  1192 G$P7_5$0$0 == 0x00fd
                           0000FD  1193 _P7_5	=	0x00fd
                           0000FE  1194 G$P7_6$0$0 == 0x00fe
                           0000FE  1195 _P7_6	=	0x00fe
                           0000FF  1196 G$P7_7$0$0 == 0x00ff
                           0000FF  1197 _P7_7	=	0x00ff
                                   1198 ;--------------------------------------------------------
                                   1199 ; overlayable register banks
                                   1200 ;--------------------------------------------------------
                                   1201 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1202 	.ds 8
                                   1203 ;--------------------------------------------------------
                                   1204 ; internal ram data
                                   1205 ;--------------------------------------------------------
                                   1206 	.area DSEG    (DATA)
                           000000  1207 G$flag$0$0==.
      000008                       1208 _flag::
      000008                       1209 	.ds 1
                           000001  1210 G$leitura$0$0==.
      000009                       1211 _leitura::
      000009                       1212 	.ds 1
                           000002  1213 G$autom$0$0==.
      00000A                       1214 _autom::
      00000A                       1215 	.ds 1
                           000003  1216 G$manual$0$0==.
      00000B                       1217 _manual::
      00000B                       1218 	.ds 1
                           000004  1219 G$estado_varal$0$0==.
      00000C                       1220 _estado_varal::
      00000C                       1221 	.ds 1
                           000005  1222 G$HOR$0$0==.
      00000D                       1223 _HOR::
      00000D                       1224 	.ds 4
                           000009  1225 G$AHO$0$0==.
      000011                       1226 _AHO::
      000011                       1227 	.ds 4
                                   1228 ;--------------------------------------------------------
                                   1229 ; overlayable items in internal ram 
                                   1230 ;--------------------------------------------------------
                                   1231 	.area	OSEG    (OVR,DATA)
                                   1232 	.area	OSEG    (OVR,DATA)
                                   1233 	.area	OSEG    (OVR,DATA)
                           000000  1234 Lmain.esc_RAM_SPI$dado$1$29==.
      00001C                       1235 _esc_RAM_SPI_PARM_2:
      00001C                       1236 	.ds 1
                                   1237 	.area	OSEG    (OVR,DATA)
                                   1238 	.area	OSEG    (OVR,DATA)
                           000000  1239 Lmain.le_adc0$ganho$1$35==.
      00001C                       1240 _le_adc0_PARM_2:
      00001C                       1241 	.ds 1
                                   1242 	.area	OSEG    (OVR,DATA)
                                   1243 ;--------------------------------------------------------
                                   1244 ; Stack segment in internal ram 
                                   1245 ;--------------------------------------------------------
                                   1246 	.area	SSEG
      000021                       1247 __start__stack:
      000021                       1248 	.ds	1
                                   1249 
                                   1250 ;--------------------------------------------------------
                                   1251 ; indirectly addressable internal ram data
                                   1252 ;--------------------------------------------------------
                                   1253 	.area ISEG    (DATA)
                                   1254 ;--------------------------------------------------------
                                   1255 ; absolute internal ram data
                                   1256 ;--------------------------------------------------------
                                   1257 	.area IABS    (ABS,DATA)
                                   1258 	.area IABS    (ABS,DATA)
                                   1259 ;--------------------------------------------------------
                                   1260 ; bit data
                                   1261 ;--------------------------------------------------------
                                   1262 	.area BSEG    (BIT)
                                   1263 ;--------------------------------------------------------
                                   1264 ; paged external ram data
                                   1265 ;--------------------------------------------------------
                                   1266 	.area PSEG    (PAG,XDATA)
                                   1267 ;--------------------------------------------------------
                                   1268 ; external ram data
                                   1269 ;--------------------------------------------------------
                                   1270 	.area XSEG    (XDATA)
                                   1271 ;--------------------------------------------------------
                                   1272 ; absolute external ram data
                                   1273 ;--------------------------------------------------------
                                   1274 	.area XABS    (ABS,XDATA)
                                   1275 ;--------------------------------------------------------
                                   1276 ; external initialized ram data
                                   1277 ;--------------------------------------------------------
                                   1278 	.area XISEG   (XDATA)
                                   1279 	.area HOME    (CODE)
                                   1280 	.area GSINIT0 (CODE)
                                   1281 	.area GSINIT1 (CODE)
                                   1282 	.area GSINIT2 (CODE)
                                   1283 	.area GSINIT3 (CODE)
                                   1284 	.area GSINIT4 (CODE)
                                   1285 	.area GSINIT5 (CODE)
                                   1286 	.area GSINIT  (CODE)
                                   1287 	.area GSFINAL (CODE)
                                   1288 	.area CSEG    (CODE)
                                   1289 ;--------------------------------------------------------
                                   1290 ; interrupt vector 
                                   1291 ;--------------------------------------------------------
                                   1292 	.area HOME    (CODE)
      000000                       1293 __interrupt_vect:
      000000 02 00 29         [24] 1294 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1295 	reti
      000004                       1296 	.ds	7
      00000B 32               [24] 1297 	reti
      00000C                       1298 	.ds	7
      000013 32               [24] 1299 	reti
      000014                       1300 	.ds	7
      00001B 32               [24] 1301 	reti
      00001C                       1302 	.ds	7
      000023 02 02 41         [24] 1303 	ljmp	_isr_UART0
                                   1304 ;--------------------------------------------------------
                                   1305 ; global & static initialisations
                                   1306 ;--------------------------------------------------------
                                   1307 	.area HOME    (CODE)
                                   1308 	.area GSINIT  (CODE)
                                   1309 	.area GSFINAL (CODE)
                                   1310 	.area GSINIT  (CODE)
                                   1311 	.globl __sdcc_gsinit_startup
                                   1312 	.globl __sdcc_program_startup
                                   1313 	.globl __start__stack
                                   1314 	.globl __mcs51_genXINIT
                                   1315 	.globl __mcs51_genXRAMCLEAR
                                   1316 	.globl __mcs51_genRAMCLEAR
                           000000  1317 	C$bluetooth.c$5$1$75 ==.
                                   1318 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:5: volatile unsigned char flag = 0;
      000082 75 08 00         [24] 1319 	mov	_flag,#0x00
                           000003  1320 	C$main.c$20$1$75 ==.
                                   1321 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:20: unsigned char HOR[4] = {0x09,0x03,0x06,0x0C};    // Matriz dos bytes das Fases do Motor - sentido Horário Full Step
      000085 75 0D 09         [24] 1322 	mov	_HOR,#0x09
      000088 75 0E 03         [24] 1323 	mov	(_HOR + 0x0001),#0x03
      00008B 75 0F 06         [24] 1324 	mov	(_HOR + 0x0002),#0x06
      00008E 75 10 0C         [24] 1325 	mov	(_HOR + 0x0003),#0x0c
                           00000F  1326 	C$main.c$21$1$75 ==.
                                   1327 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:21: unsigned char AHO[4] = {0x0C,0x06,0x03,0x09};    // Matriz dos bytes das Fases do Motor - sentido Anti-Horário Full Step
      000091 75 11 0C         [24] 1328 	mov	_AHO,#0x0c
      000094 75 12 06         [24] 1329 	mov	(_AHO + 0x0001),#0x06
      000097 75 13 03         [24] 1330 	mov	(_AHO + 0x0002),#0x03
      00009A 75 14 09         [24] 1331 	mov	(_AHO + 0x0003),#0x09
                                   1332 	.area GSFINAL (CODE)
      00009D 02 00 26         [24] 1333 	ljmp	__sdcc_program_startup
                                   1334 ;--------------------------------------------------------
                                   1335 ; Home
                                   1336 ;--------------------------------------------------------
                                   1337 	.area HOME    (CODE)
                                   1338 	.area HOME    (CODE)
      000026                       1339 __sdcc_program_startup:
      000026 02 05 23         [24] 1340 	ljmp	_main
                                   1341 ;	return from main will return to caller
                                   1342 ;--------------------------------------------------------
                                   1343 ; code
                                   1344 ;--------------------------------------------------------
                                   1345 	.area CSEG    (CODE)
                                   1346 ;------------------------------------------------------------
                                   1347 ;Allocation info for local variables in function 'Timer_Init'
                                   1348 ;------------------------------------------------------------
                           000000  1349 	G$Timer_Init$0$0 ==.
                           000000  1350 	C$config.c$10$0$0 ==.
                                   1351 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:10: void Timer_Init()
                                   1352 ;	-----------------------------------------
                                   1353 ;	 function Timer_Init
                                   1354 ;	-----------------------------------------
      0000A0                       1355 _Timer_Init:
                           000007  1356 	ar7 = 0x07
                           000006  1357 	ar6 = 0x06
                           000005  1358 	ar5 = 0x05
                           000004  1359 	ar4 = 0x04
                           000003  1360 	ar3 = 0x03
                           000002  1361 	ar2 = 0x02
                           000001  1362 	ar1 = 0x01
                           000000  1363 	ar0 = 0x00
                           000000  1364 	C$config.c$12$1$1 ==.
                                   1365 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:12: SFRPAGE   = TIMER01_PAGE;
      0000A0 75 84 00         [24] 1366 	mov	_SFRPAGE,#0x00
                           000003  1367 	C$config.c$13$1$1 ==.
                                   1368 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:13: TCON      = 0x41;
      0000A3 75 88 41         [24] 1369 	mov	_TCON,#0x41
                           000006  1370 	C$config.c$14$1$1 ==.
                                   1371 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:14: TMOD      = 0x20;
      0000A6 75 89 20         [24] 1372 	mov	_TMOD,#0x20
                           000009  1373 	C$config.c$15$1$1 ==.
                                   1374 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:15: CKCON     = 0x18;
      0000A9 75 8E 18         [24] 1375 	mov	_CKCON,#0x18
                           00000C  1376 	C$config.c$16$1$1 ==.
                                   1377 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:16: TH1       = 0xAF;
      0000AC 75 8D AF         [24] 1378 	mov	_TH1,#0xaf
                           00000F  1379 	C$config.c$17$1$1 ==.
                                   1380 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:17: SFRPAGE   = TMR2_PAGE;
      0000AF 75 84 00         [24] 1381 	mov	_SFRPAGE,#0x00
                           000012  1382 	C$config.c$18$1$1 ==.
                                   1383 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:18: TMR2CN    = 0x04;
      0000B2 75 C8 04         [24] 1384 	mov	_TMR2CN,#0x04
                           000015  1385 	C$config.c$19$1$1 ==.
                                   1386 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:19: TMR2CF    = 0x0A;
      0000B5 75 C9 0A         [24] 1387 	mov	_TMR2CF,#0x0a
                           000018  1388 	C$config.c$20$1$1 ==.
                                   1389 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:20: RCAP2L    = 0x3C;
      0000B8 75 CA 3C         [24] 1390 	mov	_RCAP2L,#0x3c
                           00001B  1391 	C$config.c$21$1$1 ==.
                                   1392 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:21: RCAP2H    = 0xF6;
      0000BB 75 CB F6         [24] 1393 	mov	_RCAP2H,#0xf6
                           00001E  1394 	C$config.c$22$1$1 ==.
                                   1395 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:22: SFRPAGE   = TMR4_PAGE;
      0000BE 75 84 02         [24] 1396 	mov	_SFRPAGE,#0x02
                           000021  1397 	C$config.c$23$1$1 ==.
                                   1398 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:23: TMR4CN    = 0x04;
      0000C1 75 C8 04         [24] 1399 	mov	_TMR4CN,#0x04
                           000024  1400 	C$config.c$24$1$1 ==.
                                   1401 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:24: TMR4CF    = 0x02;
      0000C4 75 C9 02         [24] 1402 	mov	_TMR4CF,#0x02
                           000027  1403 	C$config.c$25$1$1 ==.
                                   1404 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:25: RCAP4L    = 0x8D;
      0000C7 75 CA 8D         [24] 1405 	mov	_RCAP4L,#0x8d
                           00002A  1406 	C$config.c$26$1$1 ==.
                                   1407 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:26: RCAP4H    = 0x34;
      0000CA 75 CB 34         [24] 1408 	mov	_RCAP4H,#0x34
                           00002D  1409 	C$config.c$27$1$1 ==.
                           00002D  1410 	XG$Timer_Init$0$0 ==.
      0000CD 22               [24] 1411 	ret
                                   1412 ;------------------------------------------------------------
                                   1413 ;Allocation info for local variables in function 'UART_Init'
                                   1414 ;------------------------------------------------------------
                           00002E  1415 	G$UART_Init$0$0 ==.
                           00002E  1416 	C$config.c$29$1$1 ==.
                                   1417 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:29: void UART_Init()
                                   1418 ;	-----------------------------------------
                                   1419 ;	 function UART_Init
                                   1420 ;	-----------------------------------------
      0000CE                       1421 _UART_Init:
                           00002E  1422 	C$config.c$31$1$2 ==.
                                   1423 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:31: SFRPAGE   = UART0_PAGE;
      0000CE 75 84 00         [24] 1424 	mov	_SFRPAGE,#0x00
                           000031  1425 	C$config.c$32$1$2 ==.
                                   1426 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:32: SCON0     = 0x70;
      0000D1 75 98 70         [24] 1427 	mov	_SCON0,#0x70
                           000034  1428 	C$config.c$33$1$2 ==.
                           000034  1429 	XG$UART_Init$0$0 ==.
      0000D4 22               [24] 1430 	ret
                                   1431 ;------------------------------------------------------------
                                   1432 ;Allocation info for local variables in function 'SMBus_Init'
                                   1433 ;------------------------------------------------------------
                           000035  1434 	G$SMBus_Init$0$0 ==.
                           000035  1435 	C$config.c$35$1$2 ==.
                                   1436 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:35: void SMBus_Init()
                                   1437 ;	-----------------------------------------
                                   1438 ;	 function SMBus_Init
                                   1439 ;	-----------------------------------------
      0000D5                       1440 _SMBus_Init:
                           000035  1441 	C$config.c$37$1$3 ==.
                                   1442 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:37: SFRPAGE   = SMB0_PAGE;
      0000D5 75 84 00         [24] 1443 	mov	_SFRPAGE,#0x00
                           000038  1444 	C$config.c$38$1$3 ==.
                                   1445 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:38: SMB0CN    = 0x41;
      0000D8 75 C0 41         [24] 1446 	mov	_SMB0CN,#0x41
                           00003B  1447 	C$config.c$39$1$3 ==.
                                   1448 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:39: SMB0CR    = 0xE9;
      0000DB 75 CF E9         [24] 1449 	mov	_SMB0CR,#0xe9
                           00003E  1450 	C$config.c$40$1$3 ==.
                           00003E  1451 	XG$SMBus_Init$0$0 ==.
      0000DE 22               [24] 1452 	ret
                                   1453 ;------------------------------------------------------------
                                   1454 ;Allocation info for local variables in function 'SPI_Init'
                                   1455 ;------------------------------------------------------------
                           00003F  1456 	G$SPI_Init$0$0 ==.
                           00003F  1457 	C$config.c$42$1$3 ==.
                                   1458 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:42: void SPI_Init()
                                   1459 ;	-----------------------------------------
                                   1460 ;	 function SPI_Init
                                   1461 ;	-----------------------------------------
      0000DF                       1462 _SPI_Init:
                           00003F  1463 	C$config.c$44$1$4 ==.
                                   1464 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:44: SFRPAGE   = SPI0_PAGE;
      0000DF 75 84 00         [24] 1465 	mov	_SFRPAGE,#0x00
                           000042  1466 	C$config.c$45$1$4 ==.
                                   1467 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:45: SPI0CFG   = 0x40;
      0000E2 75 9A 40         [24] 1468 	mov	_SPI0CFG,#0x40
                           000045  1469 	C$config.c$46$1$4 ==.
                                   1470 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:46: SPI0CN    = 0x01;
      0000E5 75 F8 01         [24] 1471 	mov	_SPI0CN,#0x01
                           000048  1472 	C$config.c$47$1$4 ==.
                                   1473 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:47: SPI0CKR   = 0x7C;
      0000E8 75 9D 7C         [24] 1474 	mov	_SPI0CKR,#0x7c
                           00004B  1475 	C$config.c$48$1$4 ==.
                           00004B  1476 	XG$SPI_Init$0$0 ==.
      0000EB 22               [24] 1477 	ret
                                   1478 ;------------------------------------------------------------
                                   1479 ;Allocation info for local variables in function 'ADC_Init'
                                   1480 ;------------------------------------------------------------
                           00004C  1481 	G$ADC_Init$0$0 ==.
                           00004C  1482 	C$config.c$50$1$4 ==.
                                   1483 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:50: void ADC_Init()
                                   1484 ;	-----------------------------------------
                                   1485 ;	 function ADC_Init
                                   1486 ;	-----------------------------------------
      0000EC                       1487 _ADC_Init:
                           00004C  1488 	C$config.c$52$1$5 ==.
                                   1489 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:52: SFRPAGE   = ADC0_PAGE;
      0000EC 75 84 00         [24] 1490 	mov	_SFRPAGE,#0x00
                           00004F  1491 	C$config.c$53$1$5 ==.
                                   1492 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:53: ADC0CN    = 0x80;
      0000EF 75 E8 80         [24] 1493 	mov	_ADC0CN,#0x80
                           000052  1494 	C$config.c$54$1$5 ==.
                           000052  1495 	XG$ADC_Init$0$0 ==.
      0000F2 22               [24] 1496 	ret
                                   1497 ;------------------------------------------------------------
                                   1498 ;Allocation info for local variables in function 'DAC_Init'
                                   1499 ;------------------------------------------------------------
                           000053  1500 	G$DAC_Init$0$0 ==.
                           000053  1501 	C$config.c$56$1$5 ==.
                                   1502 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:56: void DAC_Init()
                                   1503 ;	-----------------------------------------
                                   1504 ;	 function DAC_Init
                                   1505 ;	-----------------------------------------
      0000F3                       1506 _DAC_Init:
                           000053  1507 	C$config.c$58$1$6 ==.
                                   1508 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:58: SFRPAGE   = DAC0_PAGE;
      0000F3 75 84 00         [24] 1509 	mov	_SFRPAGE,#0x00
                           000056  1510 	C$config.c$59$1$6 ==.
                                   1511 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:59: DAC0CN    = 0x04;
      0000F6 75 D4 04         [24] 1512 	mov	_DAC0CN,#0x04
                           000059  1513 	C$config.c$60$1$6 ==.
                           000059  1514 	XG$DAC_Init$0$0 ==.
      0000F9 22               [24] 1515 	ret
                                   1516 ;------------------------------------------------------------
                                   1517 ;Allocation info for local variables in function 'Voltage_Reference_Init'
                                   1518 ;------------------------------------------------------------
                           00005A  1519 	G$Voltage_Reference_Init$0$0 ==.
                           00005A  1520 	C$config.c$62$1$6 ==.
                                   1521 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:62: void Voltage_Reference_Init()
                                   1522 ;	-----------------------------------------
                                   1523 ;	 function Voltage_Reference_Init
                                   1524 ;	-----------------------------------------
      0000FA                       1525 _Voltage_Reference_Init:
                           00005A  1526 	C$config.c$64$1$7 ==.
                                   1527 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:64: SFRPAGE   = ADC0_PAGE;
      0000FA 75 84 00         [24] 1528 	mov	_SFRPAGE,#0x00
                           00005D  1529 	C$config.c$65$1$7 ==.
                                   1530 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:65: REF0CN    = 0x03;
      0000FD 75 D1 03         [24] 1531 	mov	_REF0CN,#0x03
                           000060  1532 	C$config.c$66$1$7 ==.
                           000060  1533 	XG$Voltage_Reference_Init$0$0 ==.
      000100 22               [24] 1534 	ret
                                   1535 ;------------------------------------------------------------
                                   1536 ;Allocation info for local variables in function 'Port_IO_Init'
                                   1537 ;------------------------------------------------------------
                           000061  1538 	G$Port_IO_Init$0$0 ==.
                           000061  1539 	C$config.c$68$1$7 ==.
                                   1540 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:68: void Port_IO_Init()
                                   1541 ;	-----------------------------------------
                                   1542 ;	 function Port_IO_Init
                                   1543 ;	-----------------------------------------
      000101                       1544 _Port_IO_Init:
                           000061  1545 	C$config.c$106$1$8 ==.
                                   1546 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:106: SFRPAGE   = CONFIG_PAGE;
      000101 75 84 0F         [24] 1547 	mov	_SFRPAGE,#0x0f
                           000064  1548 	C$config.c$107$1$8 ==.
                                   1549 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:107: P0MDOUT   = 0xF5;
      000104 75 A4 F5         [24] 1550 	mov	_P0MDOUT,#0xf5
                           000067  1551 	C$config.c$108$1$8 ==.
                                   1552 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:108: P1MDOUT   = 0xFE;
      000107 75 A5 FE         [24] 1553 	mov	_P1MDOUT,#0xfe
                           00006A  1554 	C$config.c$109$1$8 ==.
                                   1555 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:109: P2MDOUT   = 0xFF;
      00010A 75 A6 FF         [24] 1556 	mov	_P2MDOUT,#0xff
                           00006D  1557 	C$config.c$110$1$8 ==.
                                   1558 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:110: P3MDOUT   = 0xFF;
      00010D 75 A7 FF         [24] 1559 	mov	_P3MDOUT,#0xff
                           000070  1560 	C$config.c$111$1$8 ==.
                                   1561 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:111: XBR0      = 0x06;
      000110 75 E1 06         [24] 1562 	mov	_XBR0,#0x06
                           000073  1563 	C$config.c$112$1$8 ==.
                                   1564 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:112: XBR2      = 0x40;
      000113 75 E3 40         [24] 1565 	mov	_XBR2,#0x40
                           000076  1566 	C$config.c$113$1$8 ==.
                           000076  1567 	XG$Port_IO_Init$0$0 ==.
      000116 22               [24] 1568 	ret
                                   1569 ;------------------------------------------------------------
                                   1570 ;Allocation info for local variables in function 'Oscillator_Init'
                                   1571 ;------------------------------------------------------------
                                   1572 ;i                         Allocated to registers r6 r7 
                                   1573 ;------------------------------------------------------------
                           000077  1574 	G$Oscillator_Init$0$0 ==.
                           000077  1575 	C$config.c$115$1$8 ==.
                                   1576 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:115: void Oscillator_Init()
                                   1577 ;	-----------------------------------------
                                   1578 ;	 function Oscillator_Init
                                   1579 ;	-----------------------------------------
      000117                       1580 _Oscillator_Init:
                           000077  1581 	C$config.c$118$1$9 ==.
                                   1582 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:118: SFRPAGE   = CONFIG_PAGE;
      000117 75 84 0F         [24] 1583 	mov	_SFRPAGE,#0x0f
                           00007A  1584 	C$config.c$119$1$9 ==.
                                   1585 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:119: OSCXCN    = 0x67;
      00011A 75 8C 67         [24] 1586 	mov	_OSCXCN,#0x67
                           00007D  1587 	C$config.c$120$1$9 ==.
                                   1588 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:120: for (i = 0; i < 3000; i++);  // Wait 1ms for initialization
      00011D 7E B8            [12] 1589 	mov	r6,#0xb8
      00011F 7F 0B            [12] 1590 	mov	r7,#0x0b
      000121                       1591 00107$:
      000121 EE               [12] 1592 	mov	a,r6
      000122 24 FF            [12] 1593 	add	a,#0xff
      000124 FC               [12] 1594 	mov	r4,a
      000125 EF               [12] 1595 	mov	a,r7
      000126 34 FF            [12] 1596 	addc	a,#0xff
      000128 FD               [12] 1597 	mov	r5,a
      000129 8C 06            [24] 1598 	mov	ar6,r4
      00012B 8D 07            [24] 1599 	mov	ar7,r5
      00012D EC               [12] 1600 	mov	a,r4
      00012E 4D               [12] 1601 	orl	a,r5
      00012F 70 F0            [24] 1602 	jnz	00107$
                           000091  1603 	C$config.c$121$1$9 ==.
                                   1604 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:121: while ((OSCXCN & 0x80) == 0);
      000131                       1605 00102$:
      000131 E5 8C            [12] 1606 	mov	a,_OSCXCN
      000133 30 E7 FB         [24] 1607 	jnb	acc.7,00102$
                           000096  1608 	C$config.c$122$1$9 ==.
                                   1609 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:122: CLKSEL    = 0x01;
      000136 75 97 01         [24] 1610 	mov	_CLKSEL,#0x01
                           000099  1611 	C$config.c$123$1$9 ==.
                           000099  1612 	XG$Oscillator_Init$0$0 ==.
      000139 22               [24] 1613 	ret
                                   1614 ;------------------------------------------------------------
                                   1615 ;Allocation info for local variables in function 'Interrupts_Init'
                                   1616 ;------------------------------------------------------------
                           00009A  1617 	G$Interrupts_Init$0$0 ==.
                           00009A  1618 	C$config.c$125$1$9 ==.
                                   1619 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:125: void Interrupts_Init()
                                   1620 ;	-----------------------------------------
                                   1621 ;	 function Interrupts_Init
                                   1622 ;	-----------------------------------------
      00013A                       1623 _Interrupts_Init:
                           00009A  1624 	C$config.c$127$1$10 ==.
                                   1625 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:127: IE        = 0x90;
      00013A 75 A8 90         [24] 1626 	mov	_IE,#0x90
                           00009D  1627 	C$config.c$128$1$10 ==.
                           00009D  1628 	XG$Interrupts_Init$0$0 ==.
      00013D 22               [24] 1629 	ret
                                   1630 ;------------------------------------------------------------
                                   1631 ;Allocation info for local variables in function 'Init_Device'
                                   1632 ;------------------------------------------------------------
                           00009E  1633 	G$Init_Device$0$0 ==.
                           00009E  1634 	C$config.c$132$1$10 ==.
                                   1635 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:132: void Init_Device(void)
                                   1636 ;	-----------------------------------------
                                   1637 ;	 function Init_Device
                                   1638 ;	-----------------------------------------
      00013E                       1639 _Init_Device:
                           00009E  1640 	C$config.c$134$1$12 ==.
                                   1641 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:134: Timer_Init();
      00013E 12 00 A0         [24] 1642 	lcall	_Timer_Init
                           0000A1  1643 	C$config.c$135$1$12 ==.
                                   1644 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:135: UART_Init();
      000141 12 00 CE         [24] 1645 	lcall	_UART_Init
                           0000A4  1646 	C$config.c$136$1$12 ==.
                                   1647 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:136: SMBus_Init();
      000144 12 00 D5         [24] 1648 	lcall	_SMBus_Init
                           0000A7  1649 	C$config.c$137$1$12 ==.
                                   1650 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:137: SPI_Init();
      000147 12 00 DF         [24] 1651 	lcall	_SPI_Init
                           0000AA  1652 	C$config.c$138$1$12 ==.
                                   1653 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:138: ADC_Init();
      00014A 12 00 EC         [24] 1654 	lcall	_ADC_Init
                           0000AD  1655 	C$config.c$139$1$12 ==.
                                   1656 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:139: DAC_Init();
      00014D 12 00 F3         [24] 1657 	lcall	_DAC_Init
                           0000B0  1658 	C$config.c$140$1$12 ==.
                                   1659 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:140: Voltage_Reference_Init();
      000150 12 00 FA         [24] 1660 	lcall	_Voltage_Reference_Init
                           0000B3  1661 	C$config.c$141$1$12 ==.
                                   1662 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:141: Port_IO_Init();
      000153 12 01 01         [24] 1663 	lcall	_Port_IO_Init
                           0000B6  1664 	C$config.c$142$1$12 ==.
                                   1665 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:142: Oscillator_Init();
      000156 12 01 17         [24] 1666 	lcall	_Oscillator_Init
                           0000B9  1667 	C$config.c$143$1$12 ==.
                                   1668 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:143: Interrupts_Init();
      000159 12 01 3A         [24] 1669 	lcall	_Interrupts_Init
                           0000BC  1670 	C$config.c$144$1$12 ==.
                           0000BC  1671 	XG$Init_Device$0$0 ==.
      00015C 22               [24] 1672 	ret
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'delay_ms'
                                   1675 ;------------------------------------------------------------
                                   1676 ;t                         Allocated to registers r6 r7 
                                   1677 ;------------------------------------------------------------
                           0000BD  1678 	G$delay_ms$0$0 ==.
                           0000BD  1679 	C$utils.c$6$1$12 ==.
                                   1680 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:6: void delay_ms(unsigned int t){
                                   1681 ;	-----------------------------------------
                                   1682 ;	 function delay_ms
                                   1683 ;	-----------------------------------------
      00015D                       1684 _delay_ms:
      00015D AE 82            [24] 1685 	mov	r6,dpl
      00015F AF 83            [24] 1686 	mov	r7,dph
                           0000C1  1687 	C$utils.c$7$1$14 ==.
                                   1688 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:7: TMOD |= 0x01;
      000161 43 89 01         [24] 1689 	orl	_TMOD,#0x01
                           0000C4  1690 	C$utils.c$8$1$14 ==.
                                   1691 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:8: TMOD &= ~0x02;
      000164 53 89 FD         [24] 1692 	anl	_TMOD,#0xfd
      000167                       1693 00106$:
                           0000C7  1694 	C$utils.c$9$1$14 ==.
                                   1695 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:9: for(;t>0;t--){
      000167 EE               [12] 1696 	mov	a,r6
      000168 4F               [12] 1697 	orl	a,r7
      000169 60 19            [24] 1698 	jz	00108$
                           0000CB  1699 	C$utils.c$10$2$15 ==.
                                   1700 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:10: WDTCN = 0xa5;
      00016B 75 FF A5         [24] 1701 	mov	_WDTCN,#0xa5
                           0000CE  1702 	C$utils.c$11$2$15 ==.
                                   1703 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:11: TR0 = 0;
      00016E C2 8C            [12] 1704 	clr	_TR0
                           0000D0  1705 	C$utils.c$12$2$15 ==.
                                   1706 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:12: TF0 = 0;
      000170 C2 8D            [12] 1707 	clr	_TF0
                           0000D2  1708 	C$utils.c$13$2$15 ==.
                                   1709 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:13: TL0 = 0x58;
      000172 75 8A 58         [24] 1710 	mov	_TL0,#0x58
                           0000D5  1711 	C$utils.c$14$2$15 ==.
                                   1712 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:14: TH0 = 0x9E;
      000175 75 8C 9E         [24] 1713 	mov	_TH0,#0x9e
                           0000D8  1714 	C$utils.c$15$2$15 ==.
                                   1715 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:15: TR0 = 1;
      000178 D2 8C            [12] 1716 	setb	_TR0
                           0000DA  1717 	C$utils.c$16$2$15 ==.
                                   1718 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:16: while(TF0 == 0);
      00017A                       1719 00101$:
      00017A 30 8D FD         [24] 1720 	jnb	_TF0,00101$
                           0000DD  1721 	C$utils.c$9$1$14 ==.
                                   1722 ;	C:\Users\202019050142\Documents\micap\Trabalho\/utils.c:9: for(;t>0;t--){
      00017D 1E               [12] 1723 	dec	r6
      00017E BE FF 01         [24] 1724 	cjne	r6,#0xff,00127$
      000181 1F               [12] 1725 	dec	r7
      000182                       1726 00127$:
      000182 80 E3            [24] 1727 	sjmp	00106$
      000184                       1728 00108$:
                           0000E4  1729 	C$utils.c$18$1$14 ==.
                           0000E4  1730 	XG$delay_ms$0$0 ==.
      000184 22               [24] 1731 	ret
                                   1732 ;------------------------------------------------------------
                                   1733 ;Allocation info for local variables in function 'esc_RAM_SPI'
                                   1734 ;------------------------------------------------------------
                                   1735 ;dado                      Allocated with name '_esc_RAM_SPI_PARM_2'
                                   1736 ;end                       Allocated to registers r6 r7 
                                   1737 ;end_l                     Allocated to registers r5 
                                   1738 ;end_h                     Allocated to registers r7 
                                   1739 ;------------------------------------------------------------
                           0000E5  1740 	G$esc_RAM_SPI$0$0 ==.
                           0000E5  1741 	C$RAM_SPI.c$7$1$14 ==.
                                   1742 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:7: void esc_RAM_SPI (unsigned int end, unsigned char dado){
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function esc_RAM_SPI
                                   1745 ;	-----------------------------------------
      000185                       1746 _esc_RAM_SPI:
      000185 AE 82            [24] 1747 	mov	r6,dpl
      000187 AF 83            [24] 1748 	mov	r7,dph
                           0000E9  1749 	C$RAM_SPI.c$9$1$30 ==.
                                   1750 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:9: WDTCN = 0xa5;
      000189 75 FF A5         [24] 1751 	mov	_WDTCN,#0xa5
                           0000EC  1752 	C$RAM_SPI.c$10$1$30 ==.
                                   1753 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:10: end_l = end;
      00018C 8E 05            [24] 1754 	mov	ar5,r6
                           0000EE  1755 	C$RAM_SPI.c$11$1$30 ==.
                                   1756 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:11: end_h = end >> 8;
                           0000EE  1757 	C$RAM_SPI.c$13$1$30 ==.
                                   1758 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:13: CS=0;
      00018E C2 A3            [12] 1759 	clr	_P2_3
                           0000F0  1760 	C$RAM_SPI.c$15$1$30 ==.
                                   1761 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:15: SPI0DAT = 0x02;
      000190 75 9B 02         [24] 1762 	mov	_SPI0DAT,#0x02
                           0000F3  1763 	C$RAM_SPI.c$16$1$30 ==.
                                   1764 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:16: while(!TXBMT);
      000193                       1765 00101$:
      000193 30 F9 FD         [24] 1766 	jnb	_TXBMT,00101$
                           0000F6  1767 	C$RAM_SPI.c$18$1$30 ==.
                                   1768 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:18: SPI0DAT = end_h;	//Pega 8 bits mais significativos
      000196 8F 9B            [24] 1769 	mov	_SPI0DAT,r7
                           0000F8  1770 	C$RAM_SPI.c$19$1$30 ==.
                                   1771 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:19: while(!TXBMT);
      000198                       1772 00104$:
      000198 30 F9 FD         [24] 1773 	jnb	_TXBMT,00104$
                           0000FB  1774 	C$RAM_SPI.c$21$1$30 ==.
                                   1775 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:21: SPI0DAT = end_l;	//Pega 8 bits menos significativos
      00019B 8D 9B            [24] 1776 	mov	_SPI0DAT,r5
                           0000FD  1777 	C$RAM_SPI.c$22$1$30 ==.
                                   1778 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:22: while(!TXBMT);
      00019D                       1779 00107$:
      00019D 30 F9 FD         [24] 1780 	jnb	_TXBMT,00107$
                           000100  1781 	C$RAM_SPI.c$24$1$30 ==.
                                   1782 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:24: WDTCN = 0xa5;
      0001A0 75 FF A5         [24] 1783 	mov	_WDTCN,#0xa5
                           000103  1784 	C$RAM_SPI.c$26$1$30 ==.
                                   1785 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:26: SPI0DAT = dado;		//Passa dado
      0001A3 85 1C 9B         [24] 1786 	mov	_SPI0DAT,_esc_RAM_SPI_PARM_2
                           000106  1787 	C$RAM_SPI.c$27$1$30 ==.
                                   1788 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:27: while(!TXBMT);
      0001A6                       1789 00110$:
      0001A6 30 F9 FD         [24] 1790 	jnb	_TXBMT,00110$
                           000109  1791 	C$RAM_SPI.c$29$1$30 ==.
                                   1792 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:29: SPIF=0;
      0001A9 C2 FF            [12] 1793 	clr	_SPIF
                           00010B  1794 	C$RAM_SPI.c$30$1$30 ==.
                                   1795 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:30: while(!SPIF);
      0001AB                       1796 00113$:
                           00010B  1797 	C$RAM_SPI.c$31$1$30 ==.
                                   1798 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:31: SPIF=0;
      0001AB 10 FF 02         [24] 1799 	jbc	_SPIF,00152$
      0001AE 80 FB            [24] 1800 	sjmp	00113$
      0001B0                       1801 00152$:
                           000110  1802 	C$RAM_SPI.c$33$1$30 ==.
                                   1803 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:33: CS=1;
      0001B0 D2 A3            [12] 1804 	setb	_P2_3
                           000112  1805 	C$RAM_SPI.c$34$1$30 ==.
                                   1806 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:34: WDTCN = 0xa5;
      0001B2 75 FF A5         [24] 1807 	mov	_WDTCN,#0xa5
                           000115  1808 	C$RAM_SPI.c$35$1$30 ==.
                           000115  1809 	XG$esc_RAM_SPI$0$0 ==.
      0001B5 22               [24] 1810 	ret
                                   1811 ;------------------------------------------------------------
                                   1812 ;Allocation info for local variables in function 'le_RAM_SPI'
                                   1813 ;------------------------------------------------------------
                                   1814 ;end                       Allocated to registers r6 r7 
                                   1815 ;end_l                     Allocated to registers r5 
                                   1816 ;end_h                     Allocated to registers r7 
                                   1817 ;------------------------------------------------------------
                           000116  1818 	G$le_RAM_SPI$0$0 ==.
                           000116  1819 	C$RAM_SPI.c$37$1$30 ==.
                                   1820 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:37: unsigned char le_RAM_SPI (unsigned int end){
                                   1821 ;	-----------------------------------------
                                   1822 ;	 function le_RAM_SPI
                                   1823 ;	-----------------------------------------
      0001B6                       1824 _le_RAM_SPI:
      0001B6 AE 82            [24] 1825 	mov	r6,dpl
      0001B8 AF 83            [24] 1826 	mov	r7,dph
                           00011A  1827 	C$RAM_SPI.c$39$1$32 ==.
                                   1828 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:39: WDTCN = 0xa5;
      0001BA 75 FF A5         [24] 1829 	mov	_WDTCN,#0xa5
                           00011D  1830 	C$RAM_SPI.c$40$1$32 ==.
                                   1831 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:40: end_l = end;
      0001BD 8E 05            [24] 1832 	mov	ar5,r6
                           00011F  1833 	C$RAM_SPI.c$41$1$32 ==.
                                   1834 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:41: end_h = end >> 8;
                           00011F  1835 	C$RAM_SPI.c$43$1$32 ==.
                                   1836 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:43: CS=0;
      0001BF C2 A3            [12] 1837 	clr	_P2_3
                           000121  1838 	C$RAM_SPI.c$45$1$32 ==.
                                   1839 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:45: SPI0DAT = 0x03;
      0001C1 75 9B 03         [24] 1840 	mov	_SPI0DAT,#0x03
                           000124  1841 	C$RAM_SPI.c$46$1$32 ==.
                                   1842 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:46: while(!TXBMT);
      0001C4                       1843 00101$:
      0001C4 30 F9 FD         [24] 1844 	jnb	_TXBMT,00101$
                           000127  1845 	C$RAM_SPI.c$48$1$32 ==.
                                   1846 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:48: SPI0DAT = end_h;	//Pega 8 bits mais significativos
      0001C7 8F 9B            [24] 1847 	mov	_SPI0DAT,r7
                           000129  1848 	C$RAM_SPI.c$49$1$32 ==.
                                   1849 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:49: while(!TXBMT);
      0001C9                       1850 00104$:
      0001C9 30 F9 FD         [24] 1851 	jnb	_TXBMT,00104$
                           00012C  1852 	C$RAM_SPI.c$51$1$32 ==.
                                   1853 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:51: SPI0DAT = end_l;	//Pega 8 bits menos significativos
      0001CC 8D 9B            [24] 1854 	mov	_SPI0DAT,r5
                           00012E  1855 	C$RAM_SPI.c$52$1$32 ==.
                                   1856 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:52: while(!TXBMT);
      0001CE                       1857 00107$:
      0001CE 30 F9 FD         [24] 1858 	jnb	_TXBMT,00107$
                           000131  1859 	C$RAM_SPI.c$54$1$32 ==.
                                   1860 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:54: WDTCN = 0xa5;
      0001D1 75 FF A5         [24] 1861 	mov	_WDTCN,#0xa5
                           000134  1862 	C$RAM_SPI.c$56$1$32 ==.
                                   1863 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:56: SPI0DAT = 0x00;		//Passa lixo de memoria
      0001D4 75 9B 00         [24] 1864 	mov	_SPI0DAT,#0x00
                           000137  1865 	C$RAM_SPI.c$57$1$32 ==.
                                   1866 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:57: while(!TXBMT);
      0001D7                       1867 00110$:
      0001D7 30 F9 FD         [24] 1868 	jnb	_TXBMT,00110$
                           00013A  1869 	C$RAM_SPI.c$59$1$32 ==.
                                   1870 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:59: SPIF=0;
      0001DA C2 FF            [12] 1871 	clr	_SPIF
                           00013C  1872 	C$RAM_SPI.c$60$1$32 ==.
                                   1873 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:60: while(!SPIF);
      0001DC                       1874 00113$:
                           00013C  1875 	C$RAM_SPI.c$61$1$32 ==.
                                   1876 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:61: SPIF=0;
      0001DC 10 FF 02         [24] 1877 	jbc	_SPIF,00152$
      0001DF 80 FB            [24] 1878 	sjmp	00113$
      0001E1                       1879 00152$:
                           000141  1880 	C$RAM_SPI.c$63$1$32 ==.
                                   1881 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:63: CS=1;
      0001E1 D2 A3            [12] 1882 	setb	_P2_3
                           000143  1883 	C$RAM_SPI.c$65$1$32 ==.
                                   1884 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:65: WDTCN = 0xa5;
      0001E3 75 FF A5         [24] 1885 	mov	_WDTCN,#0xa5
                           000146  1886 	C$RAM_SPI.c$66$1$32 ==.
                                   1887 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:66: return(SPI0DAT);
      0001E6 85 9B 82         [24] 1888 	mov	dpl,_SPI0DAT
                           000149  1889 	C$RAM_SPI.c$67$1$32 ==.
                           000149  1890 	XG$le_RAM_SPI$0$0 ==.
      0001E9 22               [24] 1891 	ret
                                   1892 ;------------------------------------------------------------
                                   1893 ;Allocation info for local variables in function 'preenche_RAM_SPI'
                                   1894 ;------------------------------------------------------------
                                   1895 ;i                         Allocated to registers r6 r7 
                                   1896 ;------------------------------------------------------------
                           00014A  1897 	G$preenche_RAM_SPI$0$0 ==.
                           00014A  1898 	C$RAM_SPI.c$71$1$32 ==.
                                   1899 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:71: void preenche_RAM_SPI() {
                                   1900 ;	-----------------------------------------
                                   1901 ;	 function preenche_RAM_SPI
                                   1902 ;	-----------------------------------------
      0001EA                       1903 _preenche_RAM_SPI:
                           00014A  1904 	C$RAM_SPI.c$74$1$33 ==.
                                   1905 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:74: for(i=0;i<255;i++){
      0001EA 7E 00            [12] 1906 	mov	r6,#0x00
      0001EC 7F 00            [12] 1907 	mov	r7,#0x00
      0001EE                       1908 00102$:
                           00014E  1909 	C$RAM_SPI.c$75$2$34 ==.
                                   1910 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:75: WDTCN = 0xa5;
      0001EE 75 FF A5         [24] 1911 	mov	_WDTCN,#0xa5
                           000151  1912 	C$RAM_SPI.c$76$2$34 ==.
                                   1913 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:76: esc_RAM_SPI(i, 0);
      0001F1 75 1C 00         [24] 1914 	mov	_esc_RAM_SPI_PARM_2,#0x00
      0001F4 8E 82            [24] 1915 	mov	dpl,r6
      0001F6 8F 83            [24] 1916 	mov	dph,r7
      0001F8 C0 07            [24] 1917 	push	ar7
      0001FA C0 06            [24] 1918 	push	ar6
      0001FC 12 01 85         [24] 1919 	lcall	_esc_RAM_SPI
      0001FF D0 06            [24] 1920 	pop	ar6
      000201 D0 07            [24] 1921 	pop	ar7
                           000163  1922 	C$RAM_SPI.c$74$1$33 ==.
                                   1923 ;	C:\Users\202019050142\Documents\micap\Trabalho\/RAM_SPI.c:74: for(i=0;i<255;i++){
      000203 0E               [12] 1924 	inc	r6
      000204 BE 00 01         [24] 1925 	cjne	r6,#0x00,00110$
      000207 0F               [12] 1926 	inc	r7
      000208                       1927 00110$:
      000208 C3               [12] 1928 	clr	c
      000209 EE               [12] 1929 	mov	a,r6
      00020A 94 FF            [12] 1930 	subb	a,#0xff
      00020C EF               [12] 1931 	mov	a,r7
      00020D 94 00            [12] 1932 	subb	a,#0x00
      00020F 40 DD            [24] 1933 	jc	00102$
                           000171  1934 	C$RAM_SPI.c$79$1$33 ==.
                           000171  1935 	XG$preenche_RAM_SPI$0$0 ==.
      000211 22               [24] 1936 	ret
                                   1937 ;------------------------------------------------------------
                                   1938 ;Allocation info for local variables in function 'le_adc0'
                                   1939 ;------------------------------------------------------------
                                   1940 ;ganho                     Allocated with name '_le_adc0_PARM_2'
                                   1941 ;canal                     Allocated to registers r7 
                                   1942 ;------------------------------------------------------------
                           000172  1943 	G$le_adc0$0$0 ==.
                           000172  1944 	C$ADC.c$21$1$33 ==.
                                   1945 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:21: unsigned int le_adc0(unsigned char canal, unsigned char ganho){
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function le_adc0
                                   1948 ;	-----------------------------------------
      000212                       1949 _le_adc0:
      000212 AF 82            [24] 1950 	mov	r7,dpl
                           000174  1951 	C$ADC.c$23$1$36 ==.
                                   1952 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:23: ADC0CF = (ADC0CF & 0XF8) | ganho;
      000214 74 F8            [12] 1953 	mov	a,#0xf8
      000216 55 BC            [12] 1954 	anl	a,_ADC0CF
      000218 45 1C            [12] 1955 	orl	a,_le_adc0_PARM_2
      00021A F5 BC            [12] 1956 	mov	_ADC0CF,a
                           00017C  1957 	C$ADC.c$26$1$36 ==.
                                   1958 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:26: AMX0SL = canal;
      00021C 8F BB            [24] 1959 	mov	_AMX0SL,r7
                           00017E  1960 	C$ADC.c$30$1$36 ==.
                                   1961 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:30: AD0BUSY = 1;
      00021E D2 EC            [12] 1962 	setb	_AD0BUSY
                           000180  1963 	C$ADC.c$31$1$36 ==.
                                   1964 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:31: NOP();
      000220 00               [12] 1965 	NOP	
                           000181  1966 	C$ADC.c$33$1$36 ==.
                                   1967 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:33: while(AD0BUSY);
      000221                       1968 00101$:
      000221 20 EC FD         [24] 1969 	jb	_AD0BUSY,00101$
                           000184  1970 	C$ADC.c$35$1$36 ==.
                                   1971 ;	C:\Users\202019050142\Documents\micap\Trabalho\/ADC.c:35: return (ADC0H<<8 | ADC0L);
      000224 AF BF            [24] 1972 	mov	r7,_ADC0H
      000226 7E 00            [12] 1973 	mov	r6,#0x00
      000228 AC BE            [24] 1974 	mov	r4,_ADC0L
      00022A 7D 00            [12] 1975 	mov	r5,#0x00
      00022C EC               [12] 1976 	mov	a,r4
      00022D 4E               [12] 1977 	orl	a,r6
      00022E F5 82            [12] 1978 	mov	dpl,a
      000230 ED               [12] 1979 	mov	a,r5
      000231 4F               [12] 1980 	orl	a,r7
      000232 F5 83            [12] 1981 	mov	dph,a
                           000194  1982 	C$ADC.c$36$1$36 ==.
                           000194  1983 	XG$le_adc0$0$0 ==.
      000234 22               [24] 1984 	ret
                                   1985 ;------------------------------------------------------------
                                   1986 ;Allocation info for local variables in function 'putchar'
                                   1987 ;------------------------------------------------------------
                                   1988 ;c                         Allocated to registers 
                                   1989 ;------------------------------------------------------------
                           000195  1990 	G$putchar$0$0 ==.
                           000195  1991 	C$bluetooth.c$8$1$36 ==.
                                   1992 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:8: void putchar(char c){
                                   1993 ;	-----------------------------------------
                                   1994 ;	 function putchar
                                   1995 ;	-----------------------------------------
      000235                       1996 _putchar:
      000235 85 82 99         [24] 1997 	mov	_SBUF0,dpl
                           000198  1998 	C$bluetooth.c$10$1$38 ==.
                                   1999 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:10: while(!TI0); // flag de interrupcao para transmissao RS-232 
      000238                       2000 00101$:
                           000198  2001 	C$bluetooth.c$11$1$38 ==.
                                   2002 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:11: TI0=0;
      000238 10 99 02         [24] 2003 	jbc	_TI0,00112$
      00023B 80 FB            [24] 2004 	sjmp	00101$
      00023D                       2005 00112$:
                           00019D  2006 	C$bluetooth.c$12$1$38 ==.
                                   2007 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:12: WDTCN = 0xa5;
      00023D 75 FF A5         [24] 2008 	mov	_WDTCN,#0xa5
                           0001A0  2009 	C$bluetooth.c$13$1$38 ==.
                           0001A0  2010 	XG$putchar$0$0 ==.
      000240 22               [24] 2011 	ret
                                   2012 ;------------------------------------------------------------
                                   2013 ;Allocation info for local variables in function 'isr_UART0'
                                   2014 ;------------------------------------------------------------
                           0001A1  2015 	G$isr_UART0$0$0 ==.
                           0001A1  2016 	C$bluetooth.c$16$1$38 ==.
                                   2017 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:16: void isr_UART0(void) __interrupt 4{ 
                                   2018 ;	-----------------------------------------
                                   2019 ;	 function isr_UART0
                                   2020 ;	-----------------------------------------
      000241                       2021 _isr_UART0:
                           0001A1  2022 	C$bluetooth.c$17$1$40 ==.
                                   2023 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:17: if(RI0==1){
      000241 30 98 08         [24] 2024 	jnb	_RI0,00103$
                           0001A4  2025 	C$bluetooth.c$18$2$41 ==.
                                   2026 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:18: flag=1; // setar variavel global que indica leitura
      000244 75 08 01         [24] 2027 	mov	_flag,#0x01
                           0001A7  2028 	C$bluetooth.c$19$2$41 ==.
                                   2029 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:19: leitura=SBUF0;
      000247 85 99 09         [24] 2030 	mov	_leitura,_SBUF0
                           0001AA  2031 	C$bluetooth.c$20$2$41 ==.
                                   2032 ;	C:\Users\202019050142\Documents\micap\Trabalho\/bluetooth.c:20: RI0=0;
      00024A C2 98            [12] 2033 	clr	_RI0
      00024C                       2034 00103$:
                           0001AC  2035 	C$bluetooth.c$22$1$40 ==.
                           0001AC  2036 	XG$isr_UART0$0$0 ==.
      00024C 32               [24] 2037 	reti
                                   2038 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2039 ;	eliminated unneeded push/pop psw
                                   2040 ;	eliminated unneeded push/pop dpl
                                   2041 ;	eliminated unneeded push/pop dph
                                   2042 ;	eliminated unneeded push/pop b
                                   2043 ;	eliminated unneeded push/pop acc
                                   2044 ;------------------------------------------------------------
                                   2045 ;Allocation info for local variables in function 'exporVaral'
                                   2046 ;------------------------------------------------------------
                                   2047 ;i                         Allocated to registers r6 r7 
                                   2048 ;j                         Allocated to registers r4 r5 
                                   2049 ;------------------------------------------------------------
                           0001AD  2050 	G$exporVaral$0$0 ==.
                           0001AD  2051 	C$main.c$25$1$40 ==.
                                   2052 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:25: void exporVaral(){
                                   2053 ;	-----------------------------------------
                                   2054 ;	 function exporVaral
                                   2055 ;	-----------------------------------------
      00024D                       2056 _exporVaral:
                           0001AD  2057 	C$main.c$27$1$42 ==.
                                   2058 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:27: printf_fast_f("MOTOR_AHO \n");
      00024D 74 38            [12] 2059 	mov	a,#___str_0
      00024F C0 E0            [24] 2060 	push	acc
      000251 74 0A            [12] 2061 	mov	a,#(___str_0 >> 8)
      000253 C0 E0            [24] 2062 	push	acc
      000255 12 05 54         [24] 2063 	lcall	_printf_fast_f
      000258 15 81            [12] 2064 	dec	sp
      00025A 15 81            [12] 2065 	dec	sp
                           0001BC  2066 	C$main.c$28$3$44 ==.
                                   2067 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:28: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
      00025C 7E 00            [12] 2068 	mov	r6,#0x00
      00025E 7F 00            [12] 2069 	mov	r7,#0x00
                           0001C0  2070 	C$main.c$29$1$42 ==.
                                   2071 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:29: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
      000260                       2072 00109$:
      000260 7C 00            [12] 2073 	mov	r4,#0x00
      000262 7D 00            [12] 2074 	mov	r5,#0x00
      000264                       2075 00103$:
                           0001C4  2076 	C$main.c$30$3$44 ==.
                                   2077 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:30: PORTB = AHO[j];               // Carrega bytes da Matriz AHO na Porta B 
      000264 EC               [12] 2078 	mov	a,r4
      000265 24 11            [12] 2079 	add	a,#_AHO
      000267 F9               [12] 2080 	mov	r1,a
      000268 87 B0            [24] 2081 	mov	_P3,@r1
                           0001CA  2082 	C$main.c$31$3$44 ==.
                                   2083 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:31: delay_ms(3);          // Atraso de tempo entre as fases em milisegundos
      00026A 90 00 03         [24] 2084 	mov	dptr,#0x0003
      00026D C0 07            [24] 2085 	push	ar7
      00026F C0 06            [24] 2086 	push	ar6
      000271 C0 05            [24] 2087 	push	ar5
      000273 C0 04            [24] 2088 	push	ar4
      000275 12 01 5D         [24] 2089 	lcall	_delay_ms
      000278 D0 04            [24] 2090 	pop	ar4
      00027A D0 05            [24] 2091 	pop	ar5
      00027C D0 06            [24] 2092 	pop	ar6
      00027E D0 07            [24] 2093 	pop	ar7
                           0001E0  2094 	C$main.c$29$2$43 ==.
                                   2095 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:29: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
      000280 0C               [12] 2096 	inc	r4
      000281 BC 00 01         [24] 2097 	cjne	r4,#0x00,00120$
      000284 0D               [12] 2098 	inc	r5
      000285                       2099 00120$:
      000285 C3               [12] 2100 	clr	c
      000286 EC               [12] 2101 	mov	a,r4
      000287 94 04            [12] 2102 	subb	a,#0x04
      000289 ED               [12] 2103 	mov	a,r5
      00028A 64 80            [12] 2104 	xrl	a,#0x80
      00028C 94 80            [12] 2105 	subb	a,#0x80
      00028E 40 D4            [24] 2106 	jc	00103$
                           0001F0  2107 	C$main.c$28$1$42 ==.
                                   2108 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:28: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
      000290 0E               [12] 2109 	inc	r6
      000291 BE 00 01         [24] 2110 	cjne	r6,#0x00,00122$
      000294 0F               [12] 2111 	inc	r7
      000295                       2112 00122$:
      000295 C3               [12] 2113 	clr	c
      000296 EE               [12] 2114 	mov	a,r6
      000297 94 B6            [12] 2115 	subb	a,#0xb6
      000299 EF               [12] 2116 	mov	a,r7
      00029A 64 80            [12] 2117 	xrl	a,#0x80
      00029C 94 83            [12] 2118 	subb	a,#0x83
      00029E 40 C0            [24] 2119 	jc	00109$
                           000200  2120 	C$main.c$34$1$42 ==.
                           000200  2121 	XG$exporVaral$0$0 ==.
      0002A0 22               [24] 2122 	ret
                                   2123 ;------------------------------------------------------------
                                   2124 ;Allocation info for local variables in function 'recolherVaral'
                                   2125 ;------------------------------------------------------------
                                   2126 ;i                         Allocated to registers r6 r7 
                                   2127 ;j                         Allocated to registers r4 r5 
                                   2128 ;------------------------------------------------------------
                           000201  2129 	G$recolherVaral$0$0 ==.
                           000201  2130 	C$main.c$36$1$42 ==.
                                   2131 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:36: void recolherVaral(){                   // Movimento no sentido horário 
                                   2132 ;	-----------------------------------------
                                   2133 ;	 function recolherVaral
                                   2134 ;	-----------------------------------------
      0002A1                       2135 _recolherVaral:
                           000201  2136 	C$main.c$38$1$45 ==.
                                   2137 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:38: printf_fast_f("MOTOR_HOR \n");
      0002A1 74 44            [12] 2138 	mov	a,#___str_1
      0002A3 C0 E0            [24] 2139 	push	acc
      0002A5 74 0A            [12] 2140 	mov	a,#(___str_1 >> 8)
      0002A7 C0 E0            [24] 2141 	push	acc
      0002A9 12 05 54         [24] 2142 	lcall	_printf_fast_f
      0002AC 15 81            [12] 2143 	dec	sp
      0002AE 15 81            [12] 2144 	dec	sp
                           000210  2145 	C$main.c$39$3$47 ==.
                                   2146 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:39: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
      0002B0 7E 00            [12] 2147 	mov	r6,#0x00
      0002B2 7F 00            [12] 2148 	mov	r7,#0x00
                           000214  2149 	C$main.c$40$1$45 ==.
                                   2150 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:40: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
      0002B4                       2151 00109$:
      0002B4 7C 00            [12] 2152 	mov	r4,#0x00
      0002B6 7D 00            [12] 2153 	mov	r5,#0x00
      0002B8                       2154 00103$:
                           000218  2155 	C$main.c$41$3$47 ==.
                                   2156 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:41: PORTB = HOR[j];               // Carrega bytes da Matriz HOR na Porta B 
      0002B8 EC               [12] 2157 	mov	a,r4
      0002B9 24 0D            [12] 2158 	add	a,#_HOR
      0002BB F9               [12] 2159 	mov	r1,a
      0002BC 87 B0            [24] 2160 	mov	_P3,@r1
                           00021E  2161 	C$main.c$42$3$47 ==.
                                   2162 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:42: delay_ms(3);          // Atraso de tempo entre as fases em milisegundos
      0002BE 90 00 03         [24] 2163 	mov	dptr,#0x0003
      0002C1 C0 07            [24] 2164 	push	ar7
      0002C3 C0 06            [24] 2165 	push	ar6
      0002C5 C0 05            [24] 2166 	push	ar5
      0002C7 C0 04            [24] 2167 	push	ar4
      0002C9 12 01 5D         [24] 2168 	lcall	_delay_ms
      0002CC D0 04            [24] 2169 	pop	ar4
      0002CE D0 05            [24] 2170 	pop	ar5
      0002D0 D0 06            [24] 2171 	pop	ar6
      0002D2 D0 07            [24] 2172 	pop	ar7
                           000234  2173 	C$main.c$40$2$46 ==.
                                   2174 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:40: for(j = 0; j < 4; j++){      // incrementa o contador j de 0 a 3 
      0002D4 0C               [12] 2175 	inc	r4
      0002D5 BC 00 01         [24] 2176 	cjne	r4,#0x00,00120$
      0002D8 0D               [12] 2177 	inc	r5
      0002D9                       2178 00120$:
      0002D9 C3               [12] 2179 	clr	c
      0002DA EC               [12] 2180 	mov	a,r4
      0002DB 94 04            [12] 2181 	subb	a,#0x04
      0002DD ED               [12] 2182 	mov	a,r5
      0002DE 64 80            [12] 2183 	xrl	a,#0x80
      0002E0 94 80            [12] 2184 	subb	a,#0x80
      0002E2 40 D4            [24] 2185 	jc	00103$
                           000244  2186 	C$main.c$39$1$45 ==.
                                   2187 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:39: for(i = 0; i < 950; i++){      // incrementa o contador i de 0 a 511 - uma volta
      0002E4 0E               [12] 2188 	inc	r6
      0002E5 BE 00 01         [24] 2189 	cjne	r6,#0x00,00122$
      0002E8 0F               [12] 2190 	inc	r7
      0002E9                       2191 00122$:
      0002E9 C3               [12] 2192 	clr	c
      0002EA EE               [12] 2193 	mov	a,r6
      0002EB 94 B6            [12] 2194 	subb	a,#0xb6
      0002ED EF               [12] 2195 	mov	a,r7
      0002EE 64 80            [12] 2196 	xrl	a,#0x80
      0002F0 94 83            [12] 2197 	subb	a,#0x83
      0002F2 40 C0            [24] 2198 	jc	00109$
                           000254  2199 	C$main.c$45$1$45 ==.
                           000254  2200 	XG$recolherVaral$0$0 ==.
      0002F4 22               [24] 2201 	ret
                                   2202 ;------------------------------------------------------------
                                   2203 ;Allocation info for local variables in function 'controlaLuzes'
                                   2204 ;------------------------------------------------------------
                                   2205 ;read                      Allocated to registers r6 r7 
                                   2206 ;------------------------------------------------------------
                           000255  2207 	G$controlaLuzes$0$0 ==.
                           000255  2208 	C$main.c$47$1$45 ==.
                                   2209 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:47: void controlaLuzes(void){
                                   2210 ;	-----------------------------------------
                                   2211 ;	 function controlaLuzes
                                   2212 ;	-----------------------------------------
      0002F5                       2213 _controlaLuzes:
                           000255  2214 	C$main.c$50$1$49 ==.
                                   2215 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:50: read = le_adc0(AIN0_1, gain05);
      0002F5 75 1C 07         [24] 2216 	mov	_le_adc0_PARM_2,#0x07
      0002F8 75 82 01         [24] 2217 	mov	dpl,#0x01
      0002FB 12 02 12         [24] 2218 	lcall	_le_adc0
      0002FE AE 82            [24] 2219 	mov	r6,dpl
      000300 AF 83            [24] 2220 	mov	r7,dph
                           000262  2221 	C$main.c$53$1$49 ==.
                                   2222 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:53: if(read < 1000){
      000302 C3               [12] 2223 	clr	c
      000303 EE               [12] 2224 	mov	a,r6
      000304 94 E8            [12] 2225 	subb	a,#0xe8
      000306 EF               [12] 2226 	mov	a,r7
      000307 94 03            [12] 2227 	subb	a,#0x03
      000309 50 04            [24] 2228 	jnc	00102$
                           00026B  2229 	C$main.c$56$2$50 ==.
                                   2230 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:56: P0_5=noite;
      00030B D2 85            [12] 2231 	setb	_P0_5
      00030D 80 02            [24] 2232 	sjmp	00103$
      00030F                       2233 00102$:
                           00026F  2234 	C$main.c$60$2$51 ==.
                                   2235 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:60: P0_5=dia;
      00030F C2 85            [12] 2236 	clr	_P0_5
      000311                       2237 00103$:
                           000271  2238 	C$main.c$62$1$49 ==.
                                   2239 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:62: delay_ms(2);
      000311 90 00 02         [24] 2240 	mov	dptr,#0x0002
      000314 12 01 5D         [24] 2241 	lcall	_delay_ms
                           000277  2242 	C$main.c$63$1$49 ==.
                           000277  2243 	XG$controlaLuzes$0$0 ==.
      000317 22               [24] 2244 	ret
                                   2245 ;------------------------------------------------------------
                                   2246 ;Allocation info for local variables in function 'modoAutomatico'
                                   2247 ;------------------------------------------------------------
                           000278  2248 	G$modoAutomatico$0$0 ==.
                           000278  2249 	C$main.c$65$1$49 ==.
                                   2250 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:65: void modoAutomatico(void){
                                   2251 ;	-----------------------------------------
                                   2252 ;	 function modoAutomatico
                                   2253 ;	-----------------------------------------
      000318                       2254 _modoAutomatico:
                           000278  2255 	C$main.c$66$1$53 ==.
                                   2256 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:66: autom=1; //le_RAM_SPI(1);
      000318 75 0A 01         [24] 2257 	mov	_autom,#0x01
                           00027B  2258 	C$main.c$67$1$53 ==.
                                   2259 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:67: printf_fast_f("Automatico \n");
      00031B 74 50            [12] 2260 	mov	a,#___str_2
      00031D C0 E0            [24] 2261 	push	acc
      00031F 74 0A            [12] 2262 	mov	a,#(___str_2 >> 8)
      000321 C0 E0            [24] 2263 	push	acc
      000323 12 05 54         [24] 2264 	lcall	_printf_fast_f
      000326 15 81            [12] 2265 	dec	sp
      000328 15 81            [12] 2266 	dec	sp
                           00028A  2267 	C$main.c$68$4$56 ==.
                                   2268 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:68: while(autom){
      00032A                       2269 00112$:
      00032A E5 0A            [12] 2270 	mov	a,_autom
      00032C 70 03            [24] 2271 	jnz	00138$
      00032E 02 03 B0         [24] 2272 	ljmp	00114$
      000331                       2273 00138$:
                           000291  2274 	C$main.c$69$2$54 ==.
                                   2275 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:69: if(flag){
      000331 E5 08            [12] 2276 	mov	a,_flag
      000333 60 23            [24] 2277 	jz	00104$
                           000295  2278 	C$main.c$70$3$55 ==.
                                   2279 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:70: if(leitura=='M'){
      000335 74 4D            [12] 2280 	mov	a,#0x4d
      000337 B5 09 1B         [24] 2281 	cjne	a,_leitura,00102$
                           00029A  2282 	C$main.c$71$4$56 ==.
                                   2283 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:71: printf_fast_f("Alterando para manual \n");
      00033A 74 5D            [12] 2284 	mov	a,#___str_3
      00033C C0 E0            [24] 2285 	push	acc
      00033E 74 0A            [12] 2286 	mov	a,#(___str_3 >> 8)
      000340 C0 E0            [24] 2287 	push	acc
      000342 12 05 54         [24] 2288 	lcall	_printf_fast_f
      000345 15 81            [12] 2289 	dec	sp
      000347 15 81            [12] 2290 	dec	sp
                           0002A9  2291 	C$main.c$72$4$56 ==.
                                   2292 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:72: esc_RAM_SPI(1,0);
      000349 75 1C 00         [24] 2293 	mov	_esc_RAM_SPI_PARM_2,#0x00
      00034C 90 00 01         [24] 2294 	mov	dptr,#0x0001
      00034F 12 01 85         [24] 2295 	lcall	_esc_RAM_SPI
                           0002B2  2296 	C$main.c$73$4$56 ==.
                                   2297 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:73: autom=0;
      000352 75 0A 00         [24] 2298 	mov	_autom,#0x00
      000355                       2299 00102$:
                           0002B5  2300 	C$main.c$76$3$55 ==.
                                   2301 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:76: flag=0;
      000355 75 08 00         [24] 2302 	mov	_flag,#0x00
      000358                       2303 00104$:
                           0002B8  2304 	C$main.c$78$2$54 ==.
                                   2305 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:78: WDTCN = 0xa5;
      000358 75 FF A5         [24] 2306 	mov	_WDTCN,#0xa5
                           0002BB  2307 	C$main.c$80$2$54 ==.
                                   2308 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:80: estado_varal = le_RAM_SPI(2);
      00035B 90 00 02         [24] 2309 	mov	dptr,#0x0002
      00035E 12 01 B6         [24] 2310 	lcall	_le_RAM_SPI
      000361 85 82 0C         [24] 2311 	mov	_estado_varal,dpl
                           0002C4  2312 	C$main.c$81$2$54 ==.
                                   2313 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:81: if(!P1_0){
      000364 20 90 21         [24] 2314 	jb	_P1_0,00110$
                           0002C7  2315 	C$main.c$82$3$57 ==.
                                   2316 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:82: if(estado_varal){
      000367 E5 0C            [12] 2317 	mov	a,_estado_varal
      000369 60 3C            [24] 2318 	jz	00111$
                           0002CB  2319 	C$main.c$83$4$58 ==.
                                   2320 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:83: esc_RAM_SPI(2,0);
      00036B 75 1C 00         [24] 2321 	mov	_esc_RAM_SPI_PARM_2,#0x00
      00036E 90 00 02         [24] 2322 	mov	dptr,#0x0002
      000371 12 01 85         [24] 2323 	lcall	_esc_RAM_SPI
                           0002D4  2324 	C$main.c$84$4$58 ==.
                                   2325 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:84: printf_fast_f("varal recolhido automaticamente \n");
      000374 74 75            [12] 2326 	mov	a,#___str_4
      000376 C0 E0            [24] 2327 	push	acc
      000378 74 0A            [12] 2328 	mov	a,#(___str_4 >> 8)
      00037A C0 E0            [24] 2329 	push	acc
      00037C 12 05 54         [24] 2330 	lcall	_printf_fast_f
      00037F 15 81            [12] 2331 	dec	sp
      000381 15 81            [12] 2332 	dec	sp
                           0002E3  2333 	C$main.c$86$4$58 ==.
                                   2334 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:86: recolherVaral();
      000383 12 02 A1         [24] 2335 	lcall	_recolherVaral
      000386 80 1F            [24] 2336 	sjmp	00111$
      000388                       2337 00110$:
                           0002E8  2338 	C$main.c$90$3$59 ==.
                                   2339 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:90: if(!estado_varal){
      000388 E5 0C            [12] 2340 	mov	a,_estado_varal
      00038A 70 1B            [24] 2341 	jnz	00111$
                           0002EC  2342 	C$main.c$91$4$60 ==.
                                   2343 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:91: esc_RAM_SPI(2,1);
      00038C 75 1C 01         [24] 2344 	mov	_esc_RAM_SPI_PARM_2,#0x01
      00038F 90 00 02         [24] 2345 	mov	dptr,#0x0002
      000392 12 01 85         [24] 2346 	lcall	_esc_RAM_SPI
                           0002F5  2347 	C$main.c$92$4$60 ==.
                                   2348 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:92: printf_fast_f("varal exposto automaticamente \n");
      000395 74 97            [12] 2349 	mov	a,#___str_5
      000397 C0 E0            [24] 2350 	push	acc
      000399 74 0A            [12] 2351 	mov	a,#(___str_5 >> 8)
      00039B C0 E0            [24] 2352 	push	acc
      00039D 12 05 54         [24] 2353 	lcall	_printf_fast_f
      0003A0 15 81            [12] 2354 	dec	sp
      0003A2 15 81            [12] 2355 	dec	sp
                           000304  2356 	C$main.c$94$4$60 ==.
                                   2357 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:94: exporVaral();
      0003A4 12 02 4D         [24] 2358 	lcall	_exporVaral
      0003A7                       2359 00111$:
                           000307  2360 	C$main.c$97$2$54 ==.
                                   2361 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:97: WDTCN = 0xa5;
      0003A7 75 FF A5         [24] 2362 	mov	_WDTCN,#0xa5
                           00030A  2363 	C$main.c$100$2$54 ==.
                                   2364 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:100: controlaLuzes();
      0003AA 12 02 F5         [24] 2365 	lcall	_controlaLuzes
      0003AD 02 03 2A         [24] 2366 	ljmp	00112$
      0003B0                       2367 00114$:
                           000310  2368 	C$main.c$103$1$53 ==.
                                   2369 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:103: delay_ms(500);
      0003B0 90 01 F4         [24] 2370 	mov	dptr,#0x01f4
      0003B3 12 01 5D         [24] 2371 	lcall	_delay_ms
                           000316  2372 	C$main.c$105$1$53 ==.
                           000316  2373 	XG$modoAutomatico$0$0 ==.
      0003B6 22               [24] 2374 	ret
                                   2375 ;------------------------------------------------------------
                                   2376 ;Allocation info for local variables in function 'modoManual'
                                   2377 ;------------------------------------------------------------
                           000317  2378 	G$modoManual$0$0 ==.
                           000317  2379 	C$main.c$107$1$53 ==.
                                   2380 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:107: void modoManual(void){
                                   2381 ;	-----------------------------------------
                                   2382 ;	 function modoManual
                                   2383 ;	-----------------------------------------
      0003B7                       2384 _modoManual:
                           000317  2385 	C$main.c$108$1$62 ==.
                                   2386 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:108: manual=1;
      0003B7 75 0B 01         [24] 2387 	mov	_manual,#0x01
                           00031A  2388 	C$main.c$109$1$62 ==.
                                   2389 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:109: printf_fast_f("Manual \n");
      0003BA 74 B7            [12] 2390 	mov	a,#___str_6
      0003BC C0 E0            [24] 2391 	push	acc
      0003BE 74 0A            [12] 2392 	mov	a,#(___str_6 >> 8)
      0003C0 C0 E0            [24] 2393 	push	acc
      0003C2 12 05 54         [24] 2394 	lcall	_printf_fast_f
      0003C5 15 81            [12] 2395 	dec	sp
      0003C7 15 81            [12] 2396 	dec	sp
                           000329  2397 	C$main.c$111$1$62 ==.
                                   2398 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:111: printf_fast_f("MENU DE COMANDOS: \n");
      0003C9 74 C0            [12] 2399 	mov	a,#___str_7
      0003CB C0 E0            [24] 2400 	push	acc
      0003CD 74 0A            [12] 2401 	mov	a,#(___str_7 >> 8)
      0003CF C0 E0            [24] 2402 	push	acc
      0003D1 12 05 54         [24] 2403 	lcall	_printf_fast_f
      0003D4 15 81            [12] 2404 	dec	sp
      0003D6 15 81            [12] 2405 	dec	sp
                           000338  2406 	C$main.c$112$1$62 ==.
                                   2407 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:112: printf_fast_f("E) Expor varal \n");
      0003D8 74 D4            [12] 2408 	mov	a,#___str_8
      0003DA C0 E0            [24] 2409 	push	acc
      0003DC 74 0A            [12] 2410 	mov	a,#(___str_8 >> 8)
      0003DE C0 E0            [24] 2411 	push	acc
      0003E0 12 05 54         [24] 2412 	lcall	_printf_fast_f
      0003E3 15 81            [12] 2413 	dec	sp
      0003E5 15 81            [12] 2414 	dec	sp
                           000347  2415 	C$main.c$113$1$62 ==.
                                   2416 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:113: printf_fast_f("R) Recolher varal \n");
      0003E7 74 E5            [12] 2417 	mov	a,#___str_9
      0003E9 C0 E0            [24] 2418 	push	acc
      0003EB 74 0A            [12] 2419 	mov	a,#(___str_9 >> 8)
      0003ED C0 E0            [24] 2420 	push	acc
      0003EF 12 05 54         [24] 2421 	lcall	_printf_fast_f
      0003F2 15 81            [12] 2422 	dec	sp
      0003F4 15 81            [12] 2423 	dec	sp
                           000356  2424 	C$main.c$114$1$62 ==.
                                   2425 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:114: printf_fast_f("A) Modo automatico \n");
      0003F6 74 F9            [12] 2426 	mov	a,#___str_10
      0003F8 C0 E0            [24] 2427 	push	acc
      0003FA 74 0A            [12] 2428 	mov	a,#(___str_10 >> 8)
      0003FC C0 E0            [24] 2429 	push	acc
      0003FE 12 05 54         [24] 2430 	lcall	_printf_fast_f
      000401 15 81            [12] 2431 	dec	sp
      000403 15 81            [12] 2432 	dec	sp
                           000365  2433 	C$main.c$116$4$73 ==.
                                   2434 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:116: while(manual){
      000405                       2435 00121$:
      000405 E5 0B            [12] 2436 	mov	a,_manual
      000407 70 03            [24] 2437 	jnz	00153$
      000409 02 05 1C         [24] 2438 	ljmp	00123$
      00040C                       2439 00153$:
                           00036C  2440 	C$main.c$117$2$63 ==.
                                   2441 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:117: if(flag){
      00040C E5 08            [12] 2442 	mov	a,_flag
      00040E 70 03            [24] 2443 	jnz	00154$
      000410 02 05 16         [24] 2444 	ljmp	00120$
      000413                       2445 00154$:
                           000373  2446 	C$main.c$118$3$64 ==.
                                   2447 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:118: estado_varal = le_RAM_SPI(2);
      000413 90 00 02         [24] 2448 	mov	dptr,#0x0002
      000416 12 01 B6         [24] 2449 	lcall	_le_RAM_SPI
      000419 85 82 0C         [24] 2450 	mov	_estado_varal,dpl
                           00037C  2451 	C$main.c$119$3$64 ==.
                                   2452 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:119: WDTCN = 0xa5;
      00041C 75 FF A5         [24] 2453 	mov	_WDTCN,#0xa5
                           00037F  2454 	C$main.c$120$3$64 ==.
                                   2455 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:120: if(leitura=='A'){
      00041F 74 41            [12] 2456 	mov	a,#0x41
      000421 B5 09 1E         [24] 2457 	cjne	a,_leitura,00117$
                           000384  2458 	C$main.c$122$4$65 ==.
                                   2459 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:122: printf_fast_f("Alterando para automatico \n");
      000424 74 0E            [12] 2460 	mov	a,#___str_11
      000426 C0 E0            [24] 2461 	push	acc
      000428 74 0B            [12] 2462 	mov	a,#(___str_11 >> 8)
      00042A C0 E0            [24] 2463 	push	acc
      00042C 12 05 54         [24] 2464 	lcall	_printf_fast_f
      00042F 15 81            [12] 2465 	dec	sp
      000431 15 81            [12] 2466 	dec	sp
                           000393  2467 	C$main.c$123$4$65 ==.
                                   2468 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:123: esc_RAM_SPI(1,1);
      000433 75 1C 01         [24] 2469 	mov	_esc_RAM_SPI_PARM_2,#0x01
      000436 90 00 01         [24] 2470 	mov	dptr,#0x0001
      000439 12 01 85         [24] 2471 	lcall	_esc_RAM_SPI
                           00039C  2472 	C$main.c$124$4$65 ==.
                                   2473 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:124: manual=0;
      00043C 75 0B 00         [24] 2474 	mov	_manual,#0x00
      00043F 02 05 13         [24] 2475 	ljmp	00118$
      000442                       2476 00117$:
                           0003A2  2477 	C$main.c$127$3$64 ==.
                                   2478 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:127: else if(leitura=='E'){
      000442 74 45            [12] 2479 	mov	a,#0x45
      000444 B5 09 34         [24] 2480 	cjne	a,_leitura,00114$
                           0003A7  2481 	C$main.c$130$4$66 ==.
                                   2482 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:130: if(!estado_varal){
      000447 E5 0C            [12] 2483 	mov	a,_estado_varal
      000449 70 1E            [24] 2484 	jnz	00102$
                           0003AB  2485 	C$main.c$131$5$67 ==.
                                   2486 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:131: esc_RAM_SPI(2,1);
      00044B 75 1C 01         [24] 2487 	mov	_esc_RAM_SPI_PARM_2,#0x01
      00044E 90 00 02         [24] 2488 	mov	dptr,#0x0002
      000451 12 01 85         [24] 2489 	lcall	_esc_RAM_SPI
                           0003B4  2490 	C$main.c$132$5$67 ==.
                                   2491 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:132: printf_fast_f("Varal exposto manualmente \n");
      000454 74 2A            [12] 2492 	mov	a,#___str_12
      000456 C0 E0            [24] 2493 	push	acc
      000458 74 0B            [12] 2494 	mov	a,#(___str_12 >> 8)
      00045A C0 E0            [24] 2495 	push	acc
      00045C 12 05 54         [24] 2496 	lcall	_printf_fast_f
      00045F 15 81            [12] 2497 	dec	sp
      000461 15 81            [12] 2498 	dec	sp
                           0003C3  2499 	C$main.c$134$5$67 ==.
                                   2500 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:134: exporVaral();
      000463 12 02 4D         [24] 2501 	lcall	_exporVaral
      000466 02 05 13         [24] 2502 	ljmp	00118$
      000469                       2503 00102$:
                           0003C9  2504 	C$main.c$136$5$68 ==.
                                   2505 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:136: printf_fast_f("O varal ja esta exposto.\n");
      000469 74 46            [12] 2506 	mov	a,#___str_13
      00046B C0 E0            [24] 2507 	push	acc
      00046D 74 0B            [12] 2508 	mov	a,#(___str_13 >> 8)
      00046F C0 E0            [24] 2509 	push	acc
      000471 12 05 54         [24] 2510 	lcall	_printf_fast_f
      000474 15 81            [12] 2511 	dec	sp
      000476 15 81            [12] 2512 	dec	sp
      000478 02 05 13         [24] 2513 	ljmp	00118$
      00047B                       2514 00114$:
                           0003DB  2515 	C$main.c$140$3$64 ==.
                                   2516 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:140: else if(leitura=='R'){
      00047B 74 52            [12] 2517 	mov	a,#0x52
      00047D B5 09 32         [24] 2518 	cjne	a,_leitura,00111$
                           0003E0  2519 	C$main.c$143$4$69 ==.
                                   2520 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:143: if(estado_varal){
      000480 E5 0C            [12] 2521 	mov	a,_estado_varal
      000482 60 1D            [24] 2522 	jz	00105$
                           0003E4  2523 	C$main.c$144$5$70 ==.
                                   2524 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:144: esc_RAM_SPI(2,0);
      000484 75 1C 00         [24] 2525 	mov	_esc_RAM_SPI_PARM_2,#0x00
      000487 90 00 02         [24] 2526 	mov	dptr,#0x0002
      00048A 12 01 85         [24] 2527 	lcall	_esc_RAM_SPI
                           0003ED  2528 	C$main.c$145$5$70 ==.
                                   2529 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:145: printf_fast_f("Varal recolhido manualmente \n");
      00048D 74 60            [12] 2530 	mov	a,#___str_14
      00048F C0 E0            [24] 2531 	push	acc
      000491 74 0B            [12] 2532 	mov	a,#(___str_14 >> 8)
      000493 C0 E0            [24] 2533 	push	acc
      000495 12 05 54         [24] 2534 	lcall	_printf_fast_f
      000498 15 81            [12] 2535 	dec	sp
      00049A 15 81            [12] 2536 	dec	sp
                           0003FC  2537 	C$main.c$147$5$70 ==.
                                   2538 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:147: recolherVaral();
      00049C 12 02 A1         [24] 2539 	lcall	_recolherVaral
      00049F 80 72            [24] 2540 	sjmp	00118$
      0004A1                       2541 00105$:
                           000401  2542 	C$main.c$149$5$71 ==.
                                   2543 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:149: printf_fast_f("O varal ja esta recolhido.\n");
      0004A1 74 7E            [12] 2544 	mov	a,#___str_15
      0004A3 C0 E0            [24] 2545 	push	acc
      0004A5 74 0B            [12] 2546 	mov	a,#(___str_15 >> 8)
      0004A7 C0 E0            [24] 2547 	push	acc
      0004A9 12 05 54         [24] 2548 	lcall	_printf_fast_f
      0004AC 15 81            [12] 2549 	dec	sp
      0004AE 15 81            [12] 2550 	dec	sp
      0004B0 80 61            [24] 2551 	sjmp	00118$
      0004B2                       2552 00111$:
                           000412  2553 	C$main.c$153$3$64 ==.
                                   2554 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:153: else if(leitura=='H'){
      0004B2 74 48            [12] 2555 	mov	a,#0x48
      0004B4 B5 09 3E         [24] 2556 	cjne	a,_leitura,00108$
                           000417  2557 	C$main.c$155$4$72 ==.
                                   2558 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:155: printf_fast_f("MENU DE COMANDOS: \n");
      0004B7 74 C0            [12] 2559 	mov	a,#___str_7
      0004B9 C0 E0            [24] 2560 	push	acc
      0004BB 74 0A            [12] 2561 	mov	a,#(___str_7 >> 8)
      0004BD C0 E0            [24] 2562 	push	acc
      0004BF 12 05 54         [24] 2563 	lcall	_printf_fast_f
      0004C2 15 81            [12] 2564 	dec	sp
      0004C4 15 81            [12] 2565 	dec	sp
                           000426  2566 	C$main.c$156$4$72 ==.
                                   2567 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:156: printf_fast_f("E) Expor varal \n");
      0004C6 74 D4            [12] 2568 	mov	a,#___str_8
      0004C8 C0 E0            [24] 2569 	push	acc
      0004CA 74 0A            [12] 2570 	mov	a,#(___str_8 >> 8)
      0004CC C0 E0            [24] 2571 	push	acc
      0004CE 12 05 54         [24] 2572 	lcall	_printf_fast_f
      0004D1 15 81            [12] 2573 	dec	sp
      0004D3 15 81            [12] 2574 	dec	sp
                           000435  2575 	C$main.c$157$4$72 ==.
                                   2576 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:157: printf_fast_f("R) Recolher varal \n");
      0004D5 74 E5            [12] 2577 	mov	a,#___str_9
      0004D7 C0 E0            [24] 2578 	push	acc
      0004D9 74 0A            [12] 2579 	mov	a,#(___str_9 >> 8)
      0004DB C0 E0            [24] 2580 	push	acc
      0004DD 12 05 54         [24] 2581 	lcall	_printf_fast_f
      0004E0 15 81            [12] 2582 	dec	sp
      0004E2 15 81            [12] 2583 	dec	sp
                           000444  2584 	C$main.c$158$4$72 ==.
                                   2585 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:158: printf_fast_f("A) Modo automatico \n");
      0004E4 74 F9            [12] 2586 	mov	a,#___str_10
      0004E6 C0 E0            [24] 2587 	push	acc
      0004E8 74 0A            [12] 2588 	mov	a,#(___str_10 >> 8)
      0004EA C0 E0            [24] 2589 	push	acc
      0004EC 12 05 54         [24] 2590 	lcall	_printf_fast_f
      0004EF 15 81            [12] 2591 	dec	sp
      0004F1 15 81            [12] 2592 	dec	sp
      0004F3 80 1E            [24] 2593 	sjmp	00118$
      0004F5                       2594 00108$:
                           000455  2595 	C$main.c$162$4$73 ==.
                                   2596 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:162: printf_fast_f("Comando invalido. \n");
      0004F5 74 9A            [12] 2597 	mov	a,#___str_16
      0004F7 C0 E0            [24] 2598 	push	acc
      0004F9 74 0B            [12] 2599 	mov	a,#(___str_16 >> 8)
      0004FB C0 E0            [24] 2600 	push	acc
      0004FD 12 05 54         [24] 2601 	lcall	_printf_fast_f
      000500 15 81            [12] 2602 	dec	sp
      000502 15 81            [12] 2603 	dec	sp
                           000464  2604 	C$main.c$163$4$73 ==.
                                   2605 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:163: printf_fast_f("Pressione H para comandos validos. \n");
      000504 74 AE            [12] 2606 	mov	a,#___str_17
      000506 C0 E0            [24] 2607 	push	acc
      000508 74 0B            [12] 2608 	mov	a,#(___str_17 >> 8)
      00050A C0 E0            [24] 2609 	push	acc
      00050C 12 05 54         [24] 2610 	lcall	_printf_fast_f
      00050F 15 81            [12] 2611 	dec	sp
      000511 15 81            [12] 2612 	dec	sp
      000513                       2613 00118$:
                           000473  2614 	C$main.c$166$3$64 ==.
                                   2615 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:166: flag=0;		
      000513 75 08 00         [24] 2616 	mov	_flag,#0x00
      000516                       2617 00120$:
                           000476  2618 	C$main.c$169$2$63 ==.
                                   2619 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:169: controlaLuzes();
      000516 12 02 F5         [24] 2620 	lcall	_controlaLuzes
      000519 02 04 05         [24] 2621 	ljmp	00121$
      00051C                       2622 00123$:
                           00047C  2623 	C$main.c$172$1$62 ==.
                                   2624 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:172: delay_ms(500);	
      00051C 90 01 F4         [24] 2625 	mov	dptr,#0x01f4
      00051F 12 01 5D         [24] 2626 	lcall	_delay_ms
                           000482  2627 	C$main.c$173$1$62 ==.
                           000482  2628 	XG$modoManual$0$0 ==.
      000522 22               [24] 2629 	ret
                                   2630 ;------------------------------------------------------------
                                   2631 ;Allocation info for local variables in function 'main'
                                   2632 ;------------------------------------------------------------
                                   2633 ;dado                      Allocated to registers r7 
                                   2634 ;------------------------------------------------------------
                           000483  2635 	G$main$0$0 ==.
                           000483  2636 	C$main.c$176$1$62 ==.
                                   2637 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:176: void main(void){
                                   2638 ;	-----------------------------------------
                                   2639 ;	 function main
                                   2640 ;	-----------------------------------------
      000523                       2641 _main:
                           000483  2642 	C$main.c$179$1$75 ==.
                                   2643 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:179: Init_Device();
      000523 12 01 3E         [24] 2644 	lcall	_Init_Device
                           000486  2645 	C$main.c$180$1$75 ==.
                                   2646 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:180: SFRPAGE=LEGACY_PAGE;
      000526 75 84 00         [24] 2647 	mov	_SFRPAGE,#0x00
                           000489  2648 	C$main.c$182$1$75 ==.
                                   2649 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:182: printf_fast_f("COMECOU \n");
      000529 74 D3            [12] 2650 	mov	a,#___str_18
      00052B C0 E0            [24] 2651 	push	acc
      00052D 74 0B            [12] 2652 	mov	a,#(___str_18 >> 8)
      00052F C0 E0            [24] 2653 	push	acc
      000531 12 05 54         [24] 2654 	lcall	_printf_fast_f
      000534 15 81            [12] 2655 	dec	sp
      000536 15 81            [12] 2656 	dec	sp
                           000498  2657 	C$main.c$185$1$75 ==.
                                   2658 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:185: preenche_RAM_SPI();
      000538 12 01 EA         [24] 2659 	lcall	_preenche_RAM_SPI
                           00049B  2660 	C$main.c$187$1$75 ==.
                                   2661 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:187: while(1){
      00053B                       2662 00105$:
                           00049B  2663 	C$main.c$188$2$76 ==.
                                   2664 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:188: dado = le_RAM_SPI(1);
      00053B 90 00 01         [24] 2665 	mov	dptr,#0x0001
      00053E 12 01 B6         [24] 2666 	lcall	_le_RAM_SPI
      000541 AF 82            [24] 2667 	mov	r7,dpl
                           0004A3  2668 	C$main.c$189$2$76 ==.
                                   2669 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:189: WDTCN = 0xa5;
      000543 75 FF A5         [24] 2670 	mov	_WDTCN,#0xa5
                           0004A6  2671 	C$main.c$190$2$76 ==.
                                   2672 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:190: if(dado){
      000546 EF               [12] 2673 	mov	a,r7
      000547 60 05            [24] 2674 	jz	00102$
                           0004A9  2675 	C$main.c$191$3$77 ==.
                                   2676 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:191: modoAutomatico();
      000549 12 03 18         [24] 2677 	lcall	_modoAutomatico
      00054C 80 ED            [24] 2678 	sjmp	00105$
      00054E                       2679 00102$:
                           0004AE  2680 	C$main.c$193$3$78 ==.
                                   2681 ;	C:\Users\202019050142\Documents\micap\Trabalho\main.c:193: modoManual();
      00054E 12 03 B7         [24] 2682 	lcall	_modoManual
      000551 80 E8            [24] 2683 	sjmp	00105$
                           0004B3  2684 	C$main.c$196$1$75 ==.
                           0004B3  2685 	XG$main$0$0 ==.
      000553 22               [24] 2686 	ret
                                   2687 	.area CSEG    (CODE)
                                   2688 	.area CONST   (CODE)
                           000000  2689 Fmain$__str_0$0$0 == .
      000A38                       2690 ___str_0:
      000A38 4D 4F 54 4F 52 5F 41  2691 	.ascii "MOTOR_AHO "
             48 4F 20
      000A42 0A                    2692 	.db 0x0a
      000A43 00                    2693 	.db 0x00
                           00000C  2694 Fmain$__str_1$0$0 == .
      000A44                       2695 ___str_1:
      000A44 4D 4F 54 4F 52 5F 48  2696 	.ascii "MOTOR_HOR "
             4F 52 20
      000A4E 0A                    2697 	.db 0x0a
      000A4F 00                    2698 	.db 0x00
                           000018  2699 Fmain$__str_2$0$0 == .
      000A50                       2700 ___str_2:
      000A50 41 75 74 6F 6D 61 74  2701 	.ascii "Automatico "
             69 63 6F 20
      000A5B 0A                    2702 	.db 0x0a
      000A5C 00                    2703 	.db 0x00
                           000025  2704 Fmain$__str_3$0$0 == .
      000A5D                       2705 ___str_3:
      000A5D 41 6C 74 65 72 61 6E  2706 	.ascii "Alterando para manual "
             64 6F 20 70 61 72 61
             20 6D 61 6E 75 61 6C
             20
      000A73 0A                    2707 	.db 0x0a
      000A74 00                    2708 	.db 0x00
                           00003D  2709 Fmain$__str_4$0$0 == .
      000A75                       2710 ___str_4:
      000A75 76 61 72 61 6C 20 72  2711 	.ascii "varal recolhido automaticamente "
             65 63 6F 6C 68 69 64
             6F 20 61 75 74 6F 6D
             61 74 69 63 61 6D 65
             6E 74 65 20
      000A95 0A                    2712 	.db 0x0a
      000A96 00                    2713 	.db 0x00
                           00005F  2714 Fmain$__str_5$0$0 == .
      000A97                       2715 ___str_5:
      000A97 76 61 72 61 6C 20 65  2716 	.ascii "varal exposto automaticamente "
             78 70 6F 73 74 6F 20
             61 75 74 6F 6D 61 74
             69 63 61 6D 65 6E 74
             65 20
      000AB5 0A                    2717 	.db 0x0a
      000AB6 00                    2718 	.db 0x00
                           00007F  2719 Fmain$__str_6$0$0 == .
      000AB7                       2720 ___str_6:
      000AB7 4D 61 6E 75 61 6C 20  2721 	.ascii "Manual "
      000ABE 0A                    2722 	.db 0x0a
      000ABF 00                    2723 	.db 0x00
                           000088  2724 Fmain$__str_7$0$0 == .
      000AC0                       2725 ___str_7:
      000AC0 4D 45 4E 55 20 44 45  2726 	.ascii "MENU DE COMANDOS: "
             20 43 4F 4D 41 4E 44
             4F 53 3A 20
      000AD2 0A                    2727 	.db 0x0a
      000AD3 00                    2728 	.db 0x00
                           00009C  2729 Fmain$__str_8$0$0 == .
      000AD4                       2730 ___str_8:
      000AD4 45 29 20 45 78 70 6F  2731 	.ascii "E) Expor varal "
             72 20 76 61 72 61 6C
             20
      000AE3 0A                    2732 	.db 0x0a
      000AE4 00                    2733 	.db 0x00
                           0000AD  2734 Fmain$__str_9$0$0 == .
      000AE5                       2735 ___str_9:
      000AE5 52 29 20 52 65 63 6F  2736 	.ascii "R) Recolher varal "
             6C 68 65 72 20 76 61
             72 61 6C 20
      000AF7 0A                    2737 	.db 0x0a
      000AF8 00                    2738 	.db 0x00
                           0000C1  2739 Fmain$__str_10$0$0 == .
      000AF9                       2740 ___str_10:
      000AF9 41 29 20 4D 6F 64 6F  2741 	.ascii "A) Modo automatico "
             20 61 75 74 6F 6D 61
             74 69 63 6F 20
      000B0C 0A                    2742 	.db 0x0a
      000B0D 00                    2743 	.db 0x00
                           0000D6  2744 Fmain$__str_11$0$0 == .
      000B0E                       2745 ___str_11:
      000B0E 41 6C 74 65 72 61 6E  2746 	.ascii "Alterando para automatico "
             64 6F 20 70 61 72 61
             20 61 75 74 6F 6D 61
             74 69 63 6F 20
      000B28 0A                    2747 	.db 0x0a
      000B29 00                    2748 	.db 0x00
                           0000F2  2749 Fmain$__str_12$0$0 == .
      000B2A                       2750 ___str_12:
      000B2A 56 61 72 61 6C 20 65  2751 	.ascii "Varal exposto manualmente "
             78 70 6F 73 74 6F 20
             6D 61 6E 75 61 6C 6D
             65 6E 74 65 20
      000B44 0A                    2752 	.db 0x0a
      000B45 00                    2753 	.db 0x00
                           00010E  2754 Fmain$__str_13$0$0 == .
      000B46                       2755 ___str_13:
      000B46 4F 20 76 61 72 61 6C  2756 	.ascii "O varal ja esta exposto."
             20 6A 61 20 65 73 74
             61 20 65 78 70 6F 73
             74 6F 2E
      000B5E 0A                    2757 	.db 0x0a
      000B5F 00                    2758 	.db 0x00
                           000128  2759 Fmain$__str_14$0$0 == .
      000B60                       2760 ___str_14:
      000B60 56 61 72 61 6C 20 72  2761 	.ascii "Varal recolhido manualmente "
             65 63 6F 6C 68 69 64
             6F 20 6D 61 6E 75 61
             6C 6D 65 6E 74 65 20
      000B7C 0A                    2762 	.db 0x0a
      000B7D 00                    2763 	.db 0x00
                           000146  2764 Fmain$__str_15$0$0 == .
      000B7E                       2765 ___str_15:
      000B7E 4F 20 76 61 72 61 6C  2766 	.ascii "O varal ja esta recolhido."
             20 6A 61 20 65 73 74
             61 20 72 65 63 6F 6C
             68 69 64 6F 2E
      000B98 0A                    2767 	.db 0x0a
      000B99 00                    2768 	.db 0x00
                           000162  2769 Fmain$__str_16$0$0 == .
      000B9A                       2770 ___str_16:
      000B9A 43 6F 6D 61 6E 64 6F  2771 	.ascii "Comando invalido. "
             20 69 6E 76 61 6C 69
             64 6F 2E 20
      000BAC 0A                    2772 	.db 0x0a
      000BAD 00                    2773 	.db 0x00
                           000176  2774 Fmain$__str_17$0$0 == .
      000BAE                       2775 ___str_17:
      000BAE 50 72 65 73 73 69 6F  2776 	.ascii "Pressione H para comandos validos. "
             6E 65 20 48 20 70 61
             72 61 20 63 6F 6D 61
             6E 64 6F 73 20 76 61
             6C 69 64 6F 73 2E 20
      000BD1 0A                    2777 	.db 0x0a
      000BD2 00                    2778 	.db 0x00
                           00019B  2779 Fmain$__str_18$0$0 == .
      000BD3                       2780 ___str_18:
      000BD3 43 4F 4D 45 43 4F 55  2781 	.ascii "COMECOU "
             20
      000BDB 0A                    2782 	.db 0x0a
      000BDC 00                    2783 	.db 0x00
                                   2784 	.area XINIT   (CODE)
                                   2785 	.area CABS    (ABS,CODE)
