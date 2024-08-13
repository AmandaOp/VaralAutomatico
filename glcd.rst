                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module glcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fonte
                                     12 	.globl _escreve_caractere
                                     13 	.globl _caractere_para_ascii
                                     14 	.globl _limpa_glcd
                                     15 	.globl _conf_pag
                                     16 	.globl _conf_Y
                                     17 	.globl _ini_glcd
                                     18 	.globl _esc_glcd
                                     19 	.globl _le_glcd
                                     20 	.globl _delay_ms
                                     21 	.globl _Init_Device
                                     22 	.globl _Oscillator_Init
                                     23 	.globl _Port_IO_Init
                                     24 	.globl _Voltage_Reference_Init
                                     25 	.globl _DAC_Init
                                     26 	.globl _SPI_Init
                                     27 	.globl _UART_Init
                                     28 	.globl _Timer_Init
                                     29 	.globl _Reset_Sources_Init
                                     30 	.globl _CANTEST
                                     31 	.globl _CANCCE
                                     32 	.globl _CANDAR
                                     33 	.globl _CANIF
                                     34 	.globl _CANEIE
                                     35 	.globl _CANSIE
                                     36 	.globl _CANIE
                                     37 	.globl _CANINIT
                                     38 	.globl _SPIEN
                                     39 	.globl _TXBMT
                                     40 	.globl _NSSMD0
                                     41 	.globl _NSSMD1
                                     42 	.globl _RXOVRN
                                     43 	.globl _MODF
                                     44 	.globl _WCOL
                                     45 	.globl _SPIF
                                     46 	.globl _AD2WINT
                                     47 	.globl _AD2CM0
                                     48 	.globl _AD2CM1
                                     49 	.globl _AD2CM2
                                     50 	.globl _AD2BUSY
                                     51 	.globl _AD2INT
                                     52 	.globl _AD2TM
                                     53 	.globl _AD2EN
                                     54 	.globl _AD0LJST
                                     55 	.globl _AD0WINT
                                     56 	.globl _AD0CM0
                                     57 	.globl _AD0CM1
                                     58 	.globl _AD0BUSY
                                     59 	.globl _AD0INT
                                     60 	.globl _AD0TM
                                     61 	.globl _AD0EN
                                     62 	.globl _CCF0
                                     63 	.globl _CCF1
                                     64 	.globl _CCF2
                                     65 	.globl _CCF3
                                     66 	.globl _CCF4
                                     67 	.globl _CCF5
                                     68 	.globl _CR
                                     69 	.globl _CF
                                     70 	.globl _P
                                     71 	.globl _F1
                                     72 	.globl _OV
                                     73 	.globl _RS0
                                     74 	.globl _RS1
                                     75 	.globl _F0
                                     76 	.globl _AC
                                     77 	.globl _CY
                                     78 	.globl _CPRL4
                                     79 	.globl _CT4
                                     80 	.globl _TR4
                                     81 	.globl _EXEN4
                                     82 	.globl _EXF4
                                     83 	.globl _TF4
                                     84 	.globl _CPRL3
                                     85 	.globl _CT3
                                     86 	.globl _TR3
                                     87 	.globl _EXEN3
                                     88 	.globl _EXF3
                                     89 	.globl _TF3
                                     90 	.globl _CPRL2
                                     91 	.globl _CT2
                                     92 	.globl _TR2
                                     93 	.globl _EXEN2
                                     94 	.globl _EXF2
                                     95 	.globl _TF2
                                     96 	.globl _LEC0
                                     97 	.globl _LEC1
                                     98 	.globl _LEC2
                                     99 	.globl _TXOK
                                    100 	.globl _RXOK
                                    101 	.globl _EPASS
                                    102 	.globl _EWARN
                                    103 	.globl _BOFF
                                    104 	.globl _SMBTOE
                                    105 	.globl _SMBFTE
                                    106 	.globl _AA
                                    107 	.globl _SI
                                    108 	.globl _STO
                                    109 	.globl _STA
                                    110 	.globl _ENSMB
                                    111 	.globl _BUSY
                                    112 	.globl _PX0
                                    113 	.globl _PT0
                                    114 	.globl _PX1
                                    115 	.globl _PT1
                                    116 	.globl _PS0
                                    117 	.globl _PT2
                                    118 	.globl _EX0
                                    119 	.globl _ET0
                                    120 	.globl _EX1
                                    121 	.globl _ET1
                                    122 	.globl _ES0
                                    123 	.globl _ET2
                                    124 	.globl _EA
                                    125 	.globl _RI1
                                    126 	.globl _TI1
                                    127 	.globl _RB81
                                    128 	.globl _TB81
                                    129 	.globl _REN1
                                    130 	.globl _MCE1
                                    131 	.globl _S1MODE
                                    132 	.globl _RI0
                                    133 	.globl _TI0
                                    134 	.globl _RB80
                                    135 	.globl _TB80
                                    136 	.globl _REN0
                                    137 	.globl _SM20
                                    138 	.globl _SM10
                                    139 	.globl _SM00
                                    140 	.globl _CP2HYN0
                                    141 	.globl _CP2HYN1
                                    142 	.globl _CP2HYP0
                                    143 	.globl _CP2HYP1
                                    144 	.globl _CP2FIF
                                    145 	.globl _CP2RIF
                                    146 	.globl _CP2OUT
                                    147 	.globl _CP2EN
                                    148 	.globl _CP1HYN0
                                    149 	.globl _CP1HYN1
                                    150 	.globl _CP1HYP0
                                    151 	.globl _CP1HYP1
                                    152 	.globl _CP1FIF
                                    153 	.globl _CP1RIF
                                    154 	.globl _CP1OUT
                                    155 	.globl _CP1EN
                                    156 	.globl _CP0HYN0
                                    157 	.globl _CP0HYN1
                                    158 	.globl _CP0HYP0
                                    159 	.globl _CP0HYP1
                                    160 	.globl _CP0FIF
                                    161 	.globl _CP0RIF
                                    162 	.globl _CP0OUT
                                    163 	.globl _CP0EN
                                    164 	.globl _IT0
                                    165 	.globl _IE0
                                    166 	.globl _IT1
                                    167 	.globl _IE1
                                    168 	.globl _TR0
                                    169 	.globl _TF0
                                    170 	.globl _TR1
                                    171 	.globl _TF1
                                    172 	.globl _P7_7
                                    173 	.globl _P7_6
                                    174 	.globl _P7_5
                                    175 	.globl _P7_4
                                    176 	.globl _P7_3
                                    177 	.globl _P7_2
                                    178 	.globl _P7_1
                                    179 	.globl _P7_0
                                    180 	.globl _P6_7
                                    181 	.globl _P6_6
                                    182 	.globl _P6_5
                                    183 	.globl _P6_4
                                    184 	.globl _P6_3
                                    185 	.globl _P6_2
                                    186 	.globl _P6_1
                                    187 	.globl _P6_0
                                    188 	.globl _P5_7
                                    189 	.globl _P5_6
                                    190 	.globl _P5_5
                                    191 	.globl _P5_4
                                    192 	.globl _P5_3
                                    193 	.globl _P5_2
                                    194 	.globl _P5_1
                                    195 	.globl _P5_0
                                    196 	.globl _P4_7
                                    197 	.globl _P4_6
                                    198 	.globl _P4_5
                                    199 	.globl _P4_4
                                    200 	.globl _P4_3
                                    201 	.globl _P4_2
                                    202 	.globl _P4_1
                                    203 	.globl _P4_0
                                    204 	.globl _P3_7
                                    205 	.globl _P3_6
                                    206 	.globl _P3_5
                                    207 	.globl _P3_4
                                    208 	.globl _P3_3
                                    209 	.globl _P3_2
                                    210 	.globl _P3_1
                                    211 	.globl _P3_0
                                    212 	.globl _P2_7
                                    213 	.globl _P2_6
                                    214 	.globl _P2_5
                                    215 	.globl _P2_4
                                    216 	.globl _P2_3
                                    217 	.globl _P2_2
                                    218 	.globl _P2_1
                                    219 	.globl _P2_0
                                    220 	.globl _P1_7
                                    221 	.globl _P1_6
                                    222 	.globl _P1_5
                                    223 	.globl _P1_4
                                    224 	.globl _P1_3
                                    225 	.globl _P1_2
                                    226 	.globl _P1_1
                                    227 	.globl _P1_0
                                    228 	.globl _P0_7
                                    229 	.globl _P0_6
                                    230 	.globl _P0_5
                                    231 	.globl _P0_4
                                    232 	.globl _P0_3
                                    233 	.globl _P0_2
                                    234 	.globl _P0_1
                                    235 	.globl _P0_0
                                    236 	.globl __XPAGE
                                    237 	.globl _DP
                                    238 	.globl _ADC0
                                    239 	.globl _ADC0LT
                                    240 	.globl _ADC0GT
                                    241 	.globl _TMR4
                                    242 	.globl _TMR3
                                    243 	.globl _TMR2
                                    244 	.globl _RCAP4
                                    245 	.globl _RCAP3
                                    246 	.globl _RCAP2
                                    247 	.globl _DAC1
                                    248 	.globl _DAC0
                                    249 	.globl _CAN0DAT
                                    250 	.globl _PCA0CP5
                                    251 	.globl _PCA0CP4
                                    252 	.globl _PCA0CP3
                                    253 	.globl _PCA0CP2
                                    254 	.globl _PCA0CP1
                                    255 	.globl _PCA0CP0
                                    256 	.globl _PCA0
                                    257 	.globl _WDTCN
                                    258 	.globl _PCA0CPH1
                                    259 	.globl _PCA0CPL1
                                    260 	.globl _PCA0CPH0
                                    261 	.globl _PCA0CPL0
                                    262 	.globl _PCA0H
                                    263 	.globl _PCA0L
                                    264 	.globl _P7
                                    265 	.globl _CAN0CN
                                    266 	.globl _SPI0CN
                                    267 	.globl _EIP2
                                    268 	.globl _EIP1
                                    269 	.globl _B
                                    270 	.globl _RSTSRC
                                    271 	.globl _PCA0CPH4
                                    272 	.globl _PCA0CPL4
                                    273 	.globl _PCA0CPH3
                                    274 	.globl _PCA0CPL3
                                    275 	.globl _PCA0CPH2
                                    276 	.globl _PCA0CPL2
                                    277 	.globl _P6
                                    278 	.globl _ADC2CN
                                    279 	.globl _ADC0CN
                                    280 	.globl _EIE2
                                    281 	.globl _EIE1
                                    282 	.globl _XBR3
                                    283 	.globl _XBR2
                                    284 	.globl _XBR1
                                    285 	.globl _PCA0CPH5
                                    286 	.globl _XBR0
                                    287 	.globl _PCA0CPL5
                                    288 	.globl _ACC
                                    289 	.globl _PCA0CPM5
                                    290 	.globl _PCA0CPM4
                                    291 	.globl _PCA0CPM3
                                    292 	.globl _PCA0CPM2
                                    293 	.globl _CAN0TST
                                    294 	.globl _PCA0CPM1
                                    295 	.globl _CAN0ADR
                                    296 	.globl _PCA0CPM0
                                    297 	.globl _CAN0DATH
                                    298 	.globl _PCA0MD
                                    299 	.globl _P5
                                    300 	.globl _CAN0DATL
                                    301 	.globl _PCA0CN
                                    302 	.globl _HVA0CN
                                    303 	.globl _DAC1CN
                                    304 	.globl _DAC0CN
                                    305 	.globl _DAC1H
                                    306 	.globl _DAC0H
                                    307 	.globl _DAC1L
                                    308 	.globl _DAC0L
                                    309 	.globl _REF0CN
                                    310 	.globl _PSW
                                    311 	.globl _SMB0CR
                                    312 	.globl _TMR4H
                                    313 	.globl _TMR3H
                                    314 	.globl _TMR2H
                                    315 	.globl _TMR4L
                                    316 	.globl _TMR3L
                                    317 	.globl _TMR2L
                                    318 	.globl _RCAP4H
                                    319 	.globl _RCAP3H
                                    320 	.globl _RCAP2H
                                    321 	.globl _RCAP4L
                                    322 	.globl _RCAP3L
                                    323 	.globl _RCAP2L
                                    324 	.globl _TMR4CF
                                    325 	.globl _TMR3CF
                                    326 	.globl _TMR2CF
                                    327 	.globl _P4
                                    328 	.globl _TMR4CN
                                    329 	.globl _TMR3CN
                                    330 	.globl _TMR2CN
                                    331 	.globl _ADC0LTH
                                    332 	.globl _ADC2LT
                                    333 	.globl _ADC0LTL
                                    334 	.globl _ADC0GTH
                                    335 	.globl _ADC2GT
                                    336 	.globl _ADC0GTL
                                    337 	.globl _SMB0ADR
                                    338 	.globl _SMB0DAT
                                    339 	.globl _SMB0STA
                                    340 	.globl _CAN0STA
                                    341 	.globl _SMB0CN
                                    342 	.globl _ADC0H
                                    343 	.globl _ADC2
                                    344 	.globl _ADC0L
                                    345 	.globl _ADC2CF
                                    346 	.globl _ADC0CF
                                    347 	.globl _AMX2SL
                                    348 	.globl _AMX0SL
                                    349 	.globl _AMX0CF
                                    350 	.globl _AMX0PRT
                                    351 	.globl _AMX2CF
                                    352 	.globl _SADEN0
                                    353 	.globl _IP
                                    354 	.globl _FLACL
                                    355 	.globl _FLSCL
                                    356 	.globl _P3
                                    357 	.globl _P3MDIN
                                    358 	.globl _P2MDIN
                                    359 	.globl _P1MDIN
                                    360 	.globl _SADDR1
                                    361 	.globl _SADDR0
                                    362 	.globl _IE
                                    363 	.globl _P3MDOUT
                                    364 	.globl _P2MDOUT
                                    365 	.globl _P1MDOUT
                                    366 	.globl _P0MDOUT
                                    367 	.globl _EMI0CF
                                    368 	.globl _EMI0CN
                                    369 	.globl _EMI0TC
                                    370 	.globl _P2
                                    371 	.globl _P7MDOUT
                                    372 	.globl _P6MDOUT
                                    373 	.globl _P5MDOUT
                                    374 	.globl _SPI0CKR
                                    375 	.globl _P4MDOUT
                                    376 	.globl _SPI0DAT
                                    377 	.globl _SPI0CFG
                                    378 	.globl _SBUF1
                                    379 	.globl _SBUF0
                                    380 	.globl _SCON1
                                    381 	.globl _SCON0
                                    382 	.globl _CLKSEL
                                    383 	.globl _SFRPGCN
                                    384 	.globl _SSTA0
                                    385 	.globl _P1
                                    386 	.globl _PSCTL
                                    387 	.globl _CKCON
                                    388 	.globl _TH1
                                    389 	.globl _OSCXCN
                                    390 	.globl _TH0
                                    391 	.globl _OSCICL
                                    392 	.globl _TL1
                                    393 	.globl _OSCICN
                                    394 	.globl _TL0
                                    395 	.globl _CPT2MD
                                    396 	.globl _CPT1MD
                                    397 	.globl _CPT0MD
                                    398 	.globl _TMOD
                                    399 	.globl _CPT2CN
                                    400 	.globl _CPT1CN
                                    401 	.globl _CPT0CN
                                    402 	.globl _TCON
                                    403 	.globl _PCON
                                    404 	.globl _SFRLAST
                                    405 	.globl _SFRNEXT
                                    406 	.globl _SFRPAGE
                                    407 	.globl _DPH
                                    408 	.globl _DPL
                                    409 	.globl _SP
                                    410 	.globl _P0
                                    411 	.globl _escreve_caractere_PARM_2
                                    412 	.globl _limpa_glcd_PARM_1
                                    413 	.globl _conf_pag_PARM_2
                                    414 	.globl _conf_Y_PARM_2
                                    415 	.globl _esc_glcd_PARM_3
                                    416 	.globl _esc_glcd_PARM_2
                                    417 	.globl _le_glcd_PARM_2
                                    418 	.globl _le_glcd_PARM_1
                                    419 	.globl _conta_caractere
                                    420 	.globl _putchar
                                    421 ;--------------------------------------------------------
                                    422 ; special function registers
                                    423 ;--------------------------------------------------------
                                    424 	.area RSEG    (ABS,DATA)
      000000                        425 	.org 0x0000
                           000080   426 G$P0$0$0 == 0x0080
                           000080   427 _P0	=	0x0080
                           000081   428 G$SP$0$0 == 0x0081
                           000081   429 _SP	=	0x0081
                           000082   430 G$DPL$0$0 == 0x0082
                           000082   431 _DPL	=	0x0082
                           000083   432 G$DPH$0$0 == 0x0083
                           000083   433 _DPH	=	0x0083
                           000084   434 G$SFRPAGE$0$0 == 0x0084
                           000084   435 _SFRPAGE	=	0x0084
                           000085   436 G$SFRNEXT$0$0 == 0x0085
                           000085   437 _SFRNEXT	=	0x0085
                           000086   438 G$SFRLAST$0$0 == 0x0086
                           000086   439 _SFRLAST	=	0x0086
                           000087   440 G$PCON$0$0 == 0x0087
                           000087   441 _PCON	=	0x0087
                           000088   442 G$TCON$0$0 == 0x0088
                           000088   443 _TCON	=	0x0088
                           000088   444 G$CPT0CN$0$0 == 0x0088
                           000088   445 _CPT0CN	=	0x0088
                           000088   446 G$CPT1CN$0$0 == 0x0088
                           000088   447 _CPT1CN	=	0x0088
                           000088   448 G$CPT2CN$0$0 == 0x0088
                           000088   449 _CPT2CN	=	0x0088
                           000089   450 G$TMOD$0$0 == 0x0089
                           000089   451 _TMOD	=	0x0089
                           000089   452 G$CPT0MD$0$0 == 0x0089
                           000089   453 _CPT0MD	=	0x0089
                           000089   454 G$CPT1MD$0$0 == 0x0089
                           000089   455 _CPT1MD	=	0x0089
                           000089   456 G$CPT2MD$0$0 == 0x0089
                           000089   457 _CPT2MD	=	0x0089
                           00008A   458 G$TL0$0$0 == 0x008a
                           00008A   459 _TL0	=	0x008a
                           00008A   460 G$OSCICN$0$0 == 0x008a
                           00008A   461 _OSCICN	=	0x008a
                           00008B   462 G$TL1$0$0 == 0x008b
                           00008B   463 _TL1	=	0x008b
                           00008B   464 G$OSCICL$0$0 == 0x008b
                           00008B   465 _OSCICL	=	0x008b
                           00008C   466 G$TH0$0$0 == 0x008c
                           00008C   467 _TH0	=	0x008c
                           00008C   468 G$OSCXCN$0$0 == 0x008c
                           00008C   469 _OSCXCN	=	0x008c
                           00008D   470 G$TH1$0$0 == 0x008d
                           00008D   471 _TH1	=	0x008d
                           00008E   472 G$CKCON$0$0 == 0x008e
                           00008E   473 _CKCON	=	0x008e
                           00008F   474 G$PSCTL$0$0 == 0x008f
                           00008F   475 _PSCTL	=	0x008f
                           000090   476 G$P1$0$0 == 0x0090
                           000090   477 _P1	=	0x0090
                           000091   478 G$SSTA0$0$0 == 0x0091
                           000091   479 _SSTA0	=	0x0091
                           000096   480 G$SFRPGCN$0$0 == 0x0096
                           000096   481 _SFRPGCN	=	0x0096
                           000097   482 G$CLKSEL$0$0 == 0x0097
                           000097   483 _CLKSEL	=	0x0097
                           000098   484 G$SCON0$0$0 == 0x0098
                           000098   485 _SCON0	=	0x0098
                           000098   486 G$SCON1$0$0 == 0x0098
                           000098   487 _SCON1	=	0x0098
                           000099   488 G$SBUF0$0$0 == 0x0099
                           000099   489 _SBUF0	=	0x0099
                           000099   490 G$SBUF1$0$0 == 0x0099
                           000099   491 _SBUF1	=	0x0099
                           00009A   492 G$SPI0CFG$0$0 == 0x009a
                           00009A   493 _SPI0CFG	=	0x009a
                           00009B   494 G$SPI0DAT$0$0 == 0x009b
                           00009B   495 _SPI0DAT	=	0x009b
                           00009C   496 G$P4MDOUT$0$0 == 0x009c
                           00009C   497 _P4MDOUT	=	0x009c
                           00009D   498 G$SPI0CKR$0$0 == 0x009d
                           00009D   499 _SPI0CKR	=	0x009d
                           00009D   500 G$P5MDOUT$0$0 == 0x009d
                           00009D   501 _P5MDOUT	=	0x009d
                           00009E   502 G$P6MDOUT$0$0 == 0x009e
                           00009E   503 _P6MDOUT	=	0x009e
                           00009F   504 G$P7MDOUT$0$0 == 0x009f
                           00009F   505 _P7MDOUT	=	0x009f
                           0000A0   506 G$P2$0$0 == 0x00a0
                           0000A0   507 _P2	=	0x00a0
                           0000A1   508 G$EMI0TC$0$0 == 0x00a1
                           0000A1   509 _EMI0TC	=	0x00a1
                           0000A2   510 G$EMI0CN$0$0 == 0x00a2
                           0000A2   511 _EMI0CN	=	0x00a2
                           0000A3   512 G$EMI0CF$0$0 == 0x00a3
                           0000A3   513 _EMI0CF	=	0x00a3
                           0000A4   514 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   515 _P0MDOUT	=	0x00a4
                           0000A5   516 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   517 _P1MDOUT	=	0x00a5
                           0000A6   518 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   519 _P2MDOUT	=	0x00a6
                           0000A7   520 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   521 _P3MDOUT	=	0x00a7
                           0000A8   522 G$IE$0$0 == 0x00a8
                           0000A8   523 _IE	=	0x00a8
                           0000A9   524 G$SADDR0$0$0 == 0x00a9
                           0000A9   525 _SADDR0	=	0x00a9
                           0000A9   526 G$SADDR1$0$0 == 0x00a9
                           0000A9   527 _SADDR1	=	0x00a9
                           0000AD   528 G$P1MDIN$0$0 == 0x00ad
                           0000AD   529 _P1MDIN	=	0x00ad
                           0000AE   530 G$P2MDIN$0$0 == 0x00ae
                           0000AE   531 _P2MDIN	=	0x00ae
                           0000AF   532 G$P3MDIN$0$0 == 0x00af
                           0000AF   533 _P3MDIN	=	0x00af
                           0000B0   534 G$P3$0$0 == 0x00b0
                           0000B0   535 _P3	=	0x00b0
                           0000B7   536 G$FLSCL$0$0 == 0x00b7
                           0000B7   537 _FLSCL	=	0x00b7
                           0000B7   538 G$FLACL$0$0 == 0x00b7
                           0000B7   539 _FLACL	=	0x00b7
                           0000B8   540 G$IP$0$0 == 0x00b8
                           0000B8   541 _IP	=	0x00b8
                           0000B9   542 G$SADEN0$0$0 == 0x00b9
                           0000B9   543 _SADEN0	=	0x00b9
                           0000BA   544 G$AMX2CF$0$0 == 0x00ba
                           0000BA   545 _AMX2CF	=	0x00ba
                           0000BD   546 G$AMX0PRT$0$0 == 0x00bd
                           0000BD   547 _AMX0PRT	=	0x00bd
                           0000BA   548 G$AMX0CF$0$0 == 0x00ba
                           0000BA   549 _AMX0CF	=	0x00ba
                           0000BB   550 G$AMX0SL$0$0 == 0x00bb
                           0000BB   551 _AMX0SL	=	0x00bb
                           0000BB   552 G$AMX2SL$0$0 == 0x00bb
                           0000BB   553 _AMX2SL	=	0x00bb
                           0000BC   554 G$ADC0CF$0$0 == 0x00bc
                           0000BC   555 _ADC0CF	=	0x00bc
                           0000BC   556 G$ADC2CF$0$0 == 0x00bc
                           0000BC   557 _ADC2CF	=	0x00bc
                           0000BE   558 G$ADC0L$0$0 == 0x00be
                           0000BE   559 _ADC0L	=	0x00be
                           0000BE   560 G$ADC2$0$0 == 0x00be
                           0000BE   561 _ADC2	=	0x00be
                           0000BF   562 G$ADC0H$0$0 == 0x00bf
                           0000BF   563 _ADC0H	=	0x00bf
                           0000C0   564 G$SMB0CN$0$0 == 0x00c0
                           0000C0   565 _SMB0CN	=	0x00c0
                           0000C0   566 G$CAN0STA$0$0 == 0x00c0
                           0000C0   567 _CAN0STA	=	0x00c0
                           0000C1   568 G$SMB0STA$0$0 == 0x00c1
                           0000C1   569 _SMB0STA	=	0x00c1
                           0000C2   570 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   571 _SMB0DAT	=	0x00c2
                           0000C3   572 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   573 _SMB0ADR	=	0x00c3
                           0000C4   574 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   575 _ADC0GTL	=	0x00c4
                           0000C4   576 G$ADC2GT$0$0 == 0x00c4
                           0000C4   577 _ADC2GT	=	0x00c4
                           0000C5   578 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   579 _ADC0GTH	=	0x00c5
                           0000C6   580 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   581 _ADC0LTL	=	0x00c6
                           0000C6   582 G$ADC2LT$0$0 == 0x00c6
                           0000C6   583 _ADC2LT	=	0x00c6
                           0000C7   584 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   585 _ADC0LTH	=	0x00c7
                           0000C8   586 G$TMR2CN$0$0 == 0x00c8
                           0000C8   587 _TMR2CN	=	0x00c8
                           0000C8   588 G$TMR3CN$0$0 == 0x00c8
                           0000C8   589 _TMR3CN	=	0x00c8
                           0000C8   590 G$TMR4CN$0$0 == 0x00c8
                           0000C8   591 _TMR4CN	=	0x00c8
                           0000C8   592 G$P4$0$0 == 0x00c8
                           0000C8   593 _P4	=	0x00c8
                           0000C9   594 G$TMR2CF$0$0 == 0x00c9
                           0000C9   595 _TMR2CF	=	0x00c9
                           0000C9   596 G$TMR3CF$0$0 == 0x00c9
                           0000C9   597 _TMR3CF	=	0x00c9
                           0000C9   598 G$TMR4CF$0$0 == 0x00c9
                           0000C9   599 _TMR4CF	=	0x00c9
                           0000CA   600 G$RCAP2L$0$0 == 0x00ca
                           0000CA   601 _RCAP2L	=	0x00ca
                           0000CA   602 G$RCAP3L$0$0 == 0x00ca
                           0000CA   603 _RCAP3L	=	0x00ca
                           0000CA   604 G$RCAP4L$0$0 == 0x00ca
                           0000CA   605 _RCAP4L	=	0x00ca
                           0000CB   606 G$RCAP2H$0$0 == 0x00cb
                           0000CB   607 _RCAP2H	=	0x00cb
                           0000CB   608 G$RCAP3H$0$0 == 0x00cb
                           0000CB   609 _RCAP3H	=	0x00cb
                           0000CB   610 G$RCAP4H$0$0 == 0x00cb
                           0000CB   611 _RCAP4H	=	0x00cb
                           0000CC   612 G$TMR2L$0$0 == 0x00cc
                           0000CC   613 _TMR2L	=	0x00cc
                           0000CC   614 G$TMR3L$0$0 == 0x00cc
                           0000CC   615 _TMR3L	=	0x00cc
                           0000CC   616 G$TMR4L$0$0 == 0x00cc
                           0000CC   617 _TMR4L	=	0x00cc
                           0000CD   618 G$TMR2H$0$0 == 0x00cd
                           0000CD   619 _TMR2H	=	0x00cd
                           0000CD   620 G$TMR3H$0$0 == 0x00cd
                           0000CD   621 _TMR3H	=	0x00cd
                           0000CD   622 G$TMR4H$0$0 == 0x00cd
                           0000CD   623 _TMR4H	=	0x00cd
                           0000CF   624 G$SMB0CR$0$0 == 0x00cf
                           0000CF   625 _SMB0CR	=	0x00cf
                           0000D0   626 G$PSW$0$0 == 0x00d0
                           0000D0   627 _PSW	=	0x00d0
                           0000D1   628 G$REF0CN$0$0 == 0x00d1
                           0000D1   629 _REF0CN	=	0x00d1
                           0000D2   630 G$DAC0L$0$0 == 0x00d2
                           0000D2   631 _DAC0L	=	0x00d2
                           0000D2   632 G$DAC1L$0$0 == 0x00d2
                           0000D2   633 _DAC1L	=	0x00d2
                           0000D3   634 G$DAC0H$0$0 == 0x00d3
                           0000D3   635 _DAC0H	=	0x00d3
                           0000D3   636 G$DAC1H$0$0 == 0x00d3
                           0000D3   637 _DAC1H	=	0x00d3
                           0000D4   638 G$DAC0CN$0$0 == 0x00d4
                           0000D4   639 _DAC0CN	=	0x00d4
                           0000D4   640 G$DAC1CN$0$0 == 0x00d4
                           0000D4   641 _DAC1CN	=	0x00d4
                           0000D6   642 G$HVA0CN$0$0 == 0x00d6
                           0000D6   643 _HVA0CN	=	0x00d6
                           0000D8   644 G$PCA0CN$0$0 == 0x00d8
                           0000D8   645 _PCA0CN	=	0x00d8
                           0000D8   646 G$CAN0DATL$0$0 == 0x00d8
                           0000D8   647 _CAN0DATL	=	0x00d8
                           0000D8   648 G$P5$0$0 == 0x00d8
                           0000D8   649 _P5	=	0x00d8
                           0000D9   650 G$PCA0MD$0$0 == 0x00d9
                           0000D9   651 _PCA0MD	=	0x00d9
                           0000D9   652 G$CAN0DATH$0$0 == 0x00d9
                           0000D9   653 _CAN0DATH	=	0x00d9
                           0000DA   654 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   655 _PCA0CPM0	=	0x00da
                           0000DA   656 G$CAN0ADR$0$0 == 0x00da
                           0000DA   657 _CAN0ADR	=	0x00da
                           0000DB   658 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   659 _PCA0CPM1	=	0x00db
                           0000DB   660 G$CAN0TST$0$0 == 0x00db
                           0000DB   661 _CAN0TST	=	0x00db
                           0000DC   662 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   663 _PCA0CPM2	=	0x00dc
                           0000DD   664 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   665 _PCA0CPM3	=	0x00dd
                           0000DE   666 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   667 _PCA0CPM4	=	0x00de
                           0000DF   668 G$PCA0CPM5$0$0 == 0x00df
                           0000DF   669 _PCA0CPM5	=	0x00df
                           0000E0   670 G$ACC$0$0 == 0x00e0
                           0000E0   671 _ACC	=	0x00e0
                           0000E1   672 G$PCA0CPL5$0$0 == 0x00e1
                           0000E1   673 _PCA0CPL5	=	0x00e1
                           0000E1   674 G$XBR0$0$0 == 0x00e1
                           0000E1   675 _XBR0	=	0x00e1
                           0000E2   676 G$PCA0CPH5$0$0 == 0x00e2
                           0000E2   677 _PCA0CPH5	=	0x00e2
                           0000E2   678 G$XBR1$0$0 == 0x00e2
                           0000E2   679 _XBR1	=	0x00e2
                           0000E3   680 G$XBR2$0$0 == 0x00e3
                           0000E3   681 _XBR2	=	0x00e3
                           0000E4   682 G$XBR3$0$0 == 0x00e4
                           0000E4   683 _XBR3	=	0x00e4
                           0000E6   684 G$EIE1$0$0 == 0x00e6
                           0000E6   685 _EIE1	=	0x00e6
                           0000E7   686 G$EIE2$0$0 == 0x00e7
                           0000E7   687 _EIE2	=	0x00e7
                           0000E8   688 G$ADC0CN$0$0 == 0x00e8
                           0000E8   689 _ADC0CN	=	0x00e8
                           0000E8   690 G$ADC2CN$0$0 == 0x00e8
                           0000E8   691 _ADC2CN	=	0x00e8
                           0000E8   692 G$P6$0$0 == 0x00e8
                           0000E8   693 _P6	=	0x00e8
                           0000E9   694 G$PCA0CPL2$0$0 == 0x00e9
                           0000E9   695 _PCA0CPL2	=	0x00e9
                           0000EA   696 G$PCA0CPH2$0$0 == 0x00ea
                           0000EA   697 _PCA0CPH2	=	0x00ea
                           0000EB   698 G$PCA0CPL3$0$0 == 0x00eb
                           0000EB   699 _PCA0CPL3	=	0x00eb
                           0000EC   700 G$PCA0CPH3$0$0 == 0x00ec
                           0000EC   701 _PCA0CPH3	=	0x00ec
                           0000ED   702 G$PCA0CPL4$0$0 == 0x00ed
                           0000ED   703 _PCA0CPL4	=	0x00ed
                           0000EE   704 G$PCA0CPH4$0$0 == 0x00ee
                           0000EE   705 _PCA0CPH4	=	0x00ee
                           0000EF   706 G$RSTSRC$0$0 == 0x00ef
                           0000EF   707 _RSTSRC	=	0x00ef
                           0000F0   708 G$B$0$0 == 0x00f0
                           0000F0   709 _B	=	0x00f0
                           0000F6   710 G$EIP1$0$0 == 0x00f6
                           0000F6   711 _EIP1	=	0x00f6
                           0000F7   712 G$EIP2$0$0 == 0x00f7
                           0000F7   713 _EIP2	=	0x00f7
                           0000F8   714 G$SPI0CN$0$0 == 0x00f8
                           0000F8   715 _SPI0CN	=	0x00f8
                           0000F8   716 G$CAN0CN$0$0 == 0x00f8
                           0000F8   717 _CAN0CN	=	0x00f8
                           0000F8   718 G$P7$0$0 == 0x00f8
                           0000F8   719 _P7	=	0x00f8
                           0000F9   720 G$PCA0L$0$0 == 0x00f9
                           0000F9   721 _PCA0L	=	0x00f9
                           0000FA   722 G$PCA0H$0$0 == 0x00fa
                           0000FA   723 _PCA0H	=	0x00fa
                           0000FB   724 G$PCA0CPL0$0$0 == 0x00fb
                           0000FB   725 _PCA0CPL0	=	0x00fb
                           0000FC   726 G$PCA0CPH0$0$0 == 0x00fc
                           0000FC   727 _PCA0CPH0	=	0x00fc
                           0000FD   728 G$PCA0CPL1$0$0 == 0x00fd
                           0000FD   729 _PCA0CPL1	=	0x00fd
                           0000FE   730 G$PCA0CPH1$0$0 == 0x00fe
                           0000FE   731 _PCA0CPH1	=	0x00fe
                           0000FF   732 G$WDTCN$0$0 == 0x00ff
                           0000FF   733 _WDTCN	=	0x00ff
                           00FAF9   734 G$PCA0$0$0 == 0xfaf9
                           00FAF9   735 _PCA0	=	0xfaf9
                           00FCFB   736 G$PCA0CP0$0$0 == 0xfcfb
                           00FCFB   737 _PCA0CP0	=	0xfcfb
                           00FEFD   738 G$PCA0CP1$0$0 == 0xfefd
                           00FEFD   739 _PCA0CP1	=	0xfefd
                           00EAE9   740 G$PCA0CP2$0$0 == 0xeae9
                           00EAE9   741 _PCA0CP2	=	0xeae9
                           00ECEB   742 G$PCA0CP3$0$0 == 0xeceb
                           00ECEB   743 _PCA0CP3	=	0xeceb
                           00EEED   744 G$PCA0CP4$0$0 == 0xeeed
                           00EEED   745 _PCA0CP4	=	0xeeed
                           00E2E1   746 G$PCA0CP5$0$0 == 0xe2e1
                           00E2E1   747 _PCA0CP5	=	0xe2e1
                           00D9D8   748 G$CAN0DAT$0$0 == 0xd9d8
                           00D9D8   749 _CAN0DAT	=	0xd9d8
                           00D3D2   750 G$DAC0$0$0 == 0xd3d2
                           00D3D2   751 _DAC0	=	0xd3d2
                           00D3D2   752 G$DAC1$0$0 == 0xd3d2
                           00D3D2   753 _DAC1	=	0xd3d2
                           00CBCA   754 G$RCAP2$0$0 == 0xcbca
                           00CBCA   755 _RCAP2	=	0xcbca
                           00CBCA   756 G$RCAP3$0$0 == 0xcbca
                           00CBCA   757 _RCAP3	=	0xcbca
                           00CBCA   758 G$RCAP4$0$0 == 0xcbca
                           00CBCA   759 _RCAP4	=	0xcbca
                           00CDCC   760 G$TMR2$0$0 == 0xcdcc
                           00CDCC   761 _TMR2	=	0xcdcc
                           00CDCC   762 G$TMR3$0$0 == 0xcdcc
                           00CDCC   763 _TMR3	=	0xcdcc
                           00CDCC   764 G$TMR4$0$0 == 0xcdcc
                           00CDCC   765 _TMR4	=	0xcdcc
                           00C5C4   766 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   767 _ADC0GT	=	0xc5c4
                           00C7C6   768 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   769 _ADC0LT	=	0xc7c6
                           00BFBE   770 G$ADC0$0$0 == 0xbfbe
                           00BFBE   771 _ADC0	=	0xbfbe
                           008382   772 G$DP$0$0 == 0x8382
                           008382   773 _DP	=	0x8382
                           0000A2   774 G$_XPAGE$0$0 == 0x00a2
                           0000A2   775 __XPAGE	=	0x00a2
                                    776 ;--------------------------------------------------------
                                    777 ; special function bits
                                    778 ;--------------------------------------------------------
                                    779 	.area RSEG    (ABS,DATA)
      000000                        780 	.org 0x0000
                           000080   781 G$P0_0$0$0 == 0x0080
                           000080   782 _P0_0	=	0x0080
                           000081   783 G$P0_1$0$0 == 0x0081
                           000081   784 _P0_1	=	0x0081
                           000082   785 G$P0_2$0$0 == 0x0082
                           000082   786 _P0_2	=	0x0082
                           000083   787 G$P0_3$0$0 == 0x0083
                           000083   788 _P0_3	=	0x0083
                           000084   789 G$P0_4$0$0 == 0x0084
                           000084   790 _P0_4	=	0x0084
                           000085   791 G$P0_5$0$0 == 0x0085
                           000085   792 _P0_5	=	0x0085
                           000086   793 G$P0_6$0$0 == 0x0086
                           000086   794 _P0_6	=	0x0086
                           000087   795 G$P0_7$0$0 == 0x0087
                           000087   796 _P0_7	=	0x0087
                           000090   797 G$P1_0$0$0 == 0x0090
                           000090   798 _P1_0	=	0x0090
                           000091   799 G$P1_1$0$0 == 0x0091
                           000091   800 _P1_1	=	0x0091
                           000092   801 G$P1_2$0$0 == 0x0092
                           000092   802 _P1_2	=	0x0092
                           000093   803 G$P1_3$0$0 == 0x0093
                           000093   804 _P1_3	=	0x0093
                           000094   805 G$P1_4$0$0 == 0x0094
                           000094   806 _P1_4	=	0x0094
                           000095   807 G$P1_5$0$0 == 0x0095
                           000095   808 _P1_5	=	0x0095
                           000096   809 G$P1_6$0$0 == 0x0096
                           000096   810 _P1_6	=	0x0096
                           000097   811 G$P1_7$0$0 == 0x0097
                           000097   812 _P1_7	=	0x0097
                           0000A0   813 G$P2_0$0$0 == 0x00a0
                           0000A0   814 _P2_0	=	0x00a0
                           0000A1   815 G$P2_1$0$0 == 0x00a1
                           0000A1   816 _P2_1	=	0x00a1
                           0000A2   817 G$P2_2$0$0 == 0x00a2
                           0000A2   818 _P2_2	=	0x00a2
                           0000A3   819 G$P2_3$0$0 == 0x00a3
                           0000A3   820 _P2_3	=	0x00a3
                           0000A4   821 G$P2_4$0$0 == 0x00a4
                           0000A4   822 _P2_4	=	0x00a4
                           0000A5   823 G$P2_5$0$0 == 0x00a5
                           0000A5   824 _P2_5	=	0x00a5
                           0000A6   825 G$P2_6$0$0 == 0x00a6
                           0000A6   826 _P2_6	=	0x00a6
                           0000A7   827 G$P2_7$0$0 == 0x00a7
                           0000A7   828 _P2_7	=	0x00a7
                           0000B0   829 G$P3_0$0$0 == 0x00b0
                           0000B0   830 _P3_0	=	0x00b0
                           0000B1   831 G$P3_1$0$0 == 0x00b1
                           0000B1   832 _P3_1	=	0x00b1
                           0000B2   833 G$P3_2$0$0 == 0x00b2
                           0000B2   834 _P3_2	=	0x00b2
                           0000B3   835 G$P3_3$0$0 == 0x00b3
                           0000B3   836 _P3_3	=	0x00b3
                           0000B4   837 G$P3_4$0$0 == 0x00b4
                           0000B4   838 _P3_4	=	0x00b4
                           0000B5   839 G$P3_5$0$0 == 0x00b5
                           0000B5   840 _P3_5	=	0x00b5
                           0000B6   841 G$P3_6$0$0 == 0x00b6
                           0000B6   842 _P3_6	=	0x00b6
                           0000B7   843 G$P3_7$0$0 == 0x00b7
                           0000B7   844 _P3_7	=	0x00b7
                           0000C8   845 G$P4_0$0$0 == 0x00c8
                           0000C8   846 _P4_0	=	0x00c8
                           0000C9   847 G$P4_1$0$0 == 0x00c9
                           0000C9   848 _P4_1	=	0x00c9
                           0000CA   849 G$P4_2$0$0 == 0x00ca
                           0000CA   850 _P4_2	=	0x00ca
                           0000CB   851 G$P4_3$0$0 == 0x00cb
                           0000CB   852 _P4_3	=	0x00cb
                           0000CC   853 G$P4_4$0$0 == 0x00cc
                           0000CC   854 _P4_4	=	0x00cc
                           0000CD   855 G$P4_5$0$0 == 0x00cd
                           0000CD   856 _P4_5	=	0x00cd
                           0000CE   857 G$P4_6$0$0 == 0x00ce
                           0000CE   858 _P4_6	=	0x00ce
                           0000CF   859 G$P4_7$0$0 == 0x00cf
                           0000CF   860 _P4_7	=	0x00cf
                           0000D8   861 G$P5_0$0$0 == 0x00d8
                           0000D8   862 _P5_0	=	0x00d8
                           0000D9   863 G$P5_1$0$0 == 0x00d9
                           0000D9   864 _P5_1	=	0x00d9
                           0000DA   865 G$P5_2$0$0 == 0x00da
                           0000DA   866 _P5_2	=	0x00da
                           0000DB   867 G$P5_3$0$0 == 0x00db
                           0000DB   868 _P5_3	=	0x00db
                           0000DC   869 G$P5_4$0$0 == 0x00dc
                           0000DC   870 _P5_4	=	0x00dc
                           0000DD   871 G$P5_5$0$0 == 0x00dd
                           0000DD   872 _P5_5	=	0x00dd
                           0000DE   873 G$P5_6$0$0 == 0x00de
                           0000DE   874 _P5_6	=	0x00de
                           0000DF   875 G$P5_7$0$0 == 0x00df
                           0000DF   876 _P5_7	=	0x00df
                           0000E8   877 G$P6_0$0$0 == 0x00e8
                           0000E8   878 _P6_0	=	0x00e8
                           0000E9   879 G$P6_1$0$0 == 0x00e9
                           0000E9   880 _P6_1	=	0x00e9
                           0000EA   881 G$P6_2$0$0 == 0x00ea
                           0000EA   882 _P6_2	=	0x00ea
                           0000EB   883 G$P6_3$0$0 == 0x00eb
                           0000EB   884 _P6_3	=	0x00eb
                           0000EC   885 G$P6_4$0$0 == 0x00ec
                           0000EC   886 _P6_4	=	0x00ec
                           0000ED   887 G$P6_5$0$0 == 0x00ed
                           0000ED   888 _P6_5	=	0x00ed
                           0000EE   889 G$P6_6$0$0 == 0x00ee
                           0000EE   890 _P6_6	=	0x00ee
                           0000EF   891 G$P6_7$0$0 == 0x00ef
                           0000EF   892 _P6_7	=	0x00ef
                           0000F8   893 G$P7_0$0$0 == 0x00f8
                           0000F8   894 _P7_0	=	0x00f8
                           0000F9   895 G$P7_1$0$0 == 0x00f9
                           0000F9   896 _P7_1	=	0x00f9
                           0000FA   897 G$P7_2$0$0 == 0x00fa
                           0000FA   898 _P7_2	=	0x00fa
                           0000FB   899 G$P7_3$0$0 == 0x00fb
                           0000FB   900 _P7_3	=	0x00fb
                           0000FC   901 G$P7_4$0$0 == 0x00fc
                           0000FC   902 _P7_4	=	0x00fc
                           0000FD   903 G$P7_5$0$0 == 0x00fd
                           0000FD   904 _P7_5	=	0x00fd
                           0000FE   905 G$P7_6$0$0 == 0x00fe
                           0000FE   906 _P7_6	=	0x00fe
                           0000FF   907 G$P7_7$0$0 == 0x00ff
                           0000FF   908 _P7_7	=	0x00ff
                           00008F   909 G$TF1$0$0 == 0x008f
                           00008F   910 _TF1	=	0x008f
                           00008E   911 G$TR1$0$0 == 0x008e
                           00008E   912 _TR1	=	0x008e
                           00008D   913 G$TF0$0$0 == 0x008d
                           00008D   914 _TF0	=	0x008d
                           00008C   915 G$TR0$0$0 == 0x008c
                           00008C   916 _TR0	=	0x008c
                           00008B   917 G$IE1$0$0 == 0x008b
                           00008B   918 _IE1	=	0x008b
                           00008A   919 G$IT1$0$0 == 0x008a
                           00008A   920 _IT1	=	0x008a
                           000089   921 G$IE0$0$0 == 0x0089
                           000089   922 _IE0	=	0x0089
                           000088   923 G$IT0$0$0 == 0x0088
                           000088   924 _IT0	=	0x0088
                           00008F   925 G$CP0EN$0$0 == 0x008f
                           00008F   926 _CP0EN	=	0x008f
                           00008E   927 G$CP0OUT$0$0 == 0x008e
                           00008E   928 _CP0OUT	=	0x008e
                           00008D   929 G$CP0RIF$0$0 == 0x008d
                           00008D   930 _CP0RIF	=	0x008d
                           00008C   931 G$CP0FIF$0$0 == 0x008c
                           00008C   932 _CP0FIF	=	0x008c
                           00008B   933 G$CP0HYP1$0$0 == 0x008b
                           00008B   934 _CP0HYP1	=	0x008b
                           00008A   935 G$CP0HYP0$0$0 == 0x008a
                           00008A   936 _CP0HYP0	=	0x008a
                           000089   937 G$CP0HYN1$0$0 == 0x0089
                           000089   938 _CP0HYN1	=	0x0089
                           000088   939 G$CP0HYN0$0$0 == 0x0088
                           000088   940 _CP0HYN0	=	0x0088
                           00008F   941 G$CP1EN$0$0 == 0x008f
                           00008F   942 _CP1EN	=	0x008f
                           00008E   943 G$CP1OUT$0$0 == 0x008e
                           00008E   944 _CP1OUT	=	0x008e
                           00008D   945 G$CP1RIF$0$0 == 0x008d
                           00008D   946 _CP1RIF	=	0x008d
                           00008C   947 G$CP1FIF$0$0 == 0x008c
                           00008C   948 _CP1FIF	=	0x008c
                           00008B   949 G$CP1HYP1$0$0 == 0x008b
                           00008B   950 _CP1HYP1	=	0x008b
                           00008A   951 G$CP1HYP0$0$0 == 0x008a
                           00008A   952 _CP1HYP0	=	0x008a
                           000089   953 G$CP1HYN1$0$0 == 0x0089
                           000089   954 _CP1HYN1	=	0x0089
                           000088   955 G$CP1HYN0$0$0 == 0x0088
                           000088   956 _CP1HYN0	=	0x0088
                           00008F   957 G$CP2EN$0$0 == 0x008f
                           00008F   958 _CP2EN	=	0x008f
                           00008E   959 G$CP2OUT$0$0 == 0x008e
                           00008E   960 _CP2OUT	=	0x008e
                           00008D   961 G$CP2RIF$0$0 == 0x008d
                           00008D   962 _CP2RIF	=	0x008d
                           00008C   963 G$CP2FIF$0$0 == 0x008c
                           00008C   964 _CP2FIF	=	0x008c
                           00008B   965 G$CP2HYP1$0$0 == 0x008b
                           00008B   966 _CP2HYP1	=	0x008b
                           00008A   967 G$CP2HYP0$0$0 == 0x008a
                           00008A   968 _CP2HYP0	=	0x008a
                           000089   969 G$CP2HYN1$0$0 == 0x0089
                           000089   970 _CP2HYN1	=	0x0089
                           000088   971 G$CP2HYN0$0$0 == 0x0088
                           000088   972 _CP2HYN0	=	0x0088
                           00009F   973 G$SM00$0$0 == 0x009f
                           00009F   974 _SM00	=	0x009f
                           00009E   975 G$SM10$0$0 == 0x009e
                           00009E   976 _SM10	=	0x009e
                           00009D   977 G$SM20$0$0 == 0x009d
                           00009D   978 _SM20	=	0x009d
                           00009C   979 G$REN0$0$0 == 0x009c
                           00009C   980 _REN0	=	0x009c
                           00009B   981 G$TB80$0$0 == 0x009b
                           00009B   982 _TB80	=	0x009b
                           00009A   983 G$RB80$0$0 == 0x009a
                           00009A   984 _RB80	=	0x009a
                           000099   985 G$TI0$0$0 == 0x0099
                           000099   986 _TI0	=	0x0099
                           000098   987 G$RI0$0$0 == 0x0098
                           000098   988 _RI0	=	0x0098
                           00009F   989 G$S1MODE$0$0 == 0x009f
                           00009F   990 _S1MODE	=	0x009f
                           00009D   991 G$MCE1$0$0 == 0x009d
                           00009D   992 _MCE1	=	0x009d
                           00009C   993 G$REN1$0$0 == 0x009c
                           00009C   994 _REN1	=	0x009c
                           00009B   995 G$TB81$0$0 == 0x009b
                           00009B   996 _TB81	=	0x009b
                           00009A   997 G$RB81$0$0 == 0x009a
                           00009A   998 _RB81	=	0x009a
                           000099   999 G$TI1$0$0 == 0x0099
                           000099  1000 _TI1	=	0x0099
                           000098  1001 G$RI1$0$0 == 0x0098
                           000098  1002 _RI1	=	0x0098
                           0000AF  1003 G$EA$0$0 == 0x00af
                           0000AF  1004 _EA	=	0x00af
                           0000AD  1005 G$ET2$0$0 == 0x00ad
                           0000AD  1006 _ET2	=	0x00ad
                           0000AC  1007 G$ES0$0$0 == 0x00ac
                           0000AC  1008 _ES0	=	0x00ac
                           0000AB  1009 G$ET1$0$0 == 0x00ab
                           0000AB  1010 _ET1	=	0x00ab
                           0000AA  1011 G$EX1$0$0 == 0x00aa
                           0000AA  1012 _EX1	=	0x00aa
                           0000A9  1013 G$ET0$0$0 == 0x00a9
                           0000A9  1014 _ET0	=	0x00a9
                           0000A8  1015 G$EX0$0$0 == 0x00a8
                           0000A8  1016 _EX0	=	0x00a8
                           0000BD  1017 G$PT2$0$0 == 0x00bd
                           0000BD  1018 _PT2	=	0x00bd
                           0000BC  1019 G$PS0$0$0 == 0x00bc
                           0000BC  1020 _PS0	=	0x00bc
                           0000BB  1021 G$PT1$0$0 == 0x00bb
                           0000BB  1022 _PT1	=	0x00bb
                           0000BA  1023 G$PX1$0$0 == 0x00ba
                           0000BA  1024 _PX1	=	0x00ba
                           0000B9  1025 G$PT0$0$0 == 0x00b9
                           0000B9  1026 _PT0	=	0x00b9
                           0000B8  1027 G$PX0$0$0 == 0x00b8
                           0000B8  1028 _PX0	=	0x00b8
                           0000C7  1029 G$BUSY$0$0 == 0x00c7
                           0000C7  1030 _BUSY	=	0x00c7
                           0000C6  1031 G$ENSMB$0$0 == 0x00c6
                           0000C6  1032 _ENSMB	=	0x00c6
                           0000C5  1033 G$STA$0$0 == 0x00c5
                           0000C5  1034 _STA	=	0x00c5
                           0000C4  1035 G$STO$0$0 == 0x00c4
                           0000C4  1036 _STO	=	0x00c4
                           0000C3  1037 G$SI$0$0 == 0x00c3
                           0000C3  1038 _SI	=	0x00c3
                           0000C2  1039 G$AA$0$0 == 0x00c2
                           0000C2  1040 _AA	=	0x00c2
                           0000C1  1041 G$SMBFTE$0$0 == 0x00c1
                           0000C1  1042 _SMBFTE	=	0x00c1
                           0000C0  1043 G$SMBTOE$0$0 == 0x00c0
                           0000C0  1044 _SMBTOE	=	0x00c0
                           0000C7  1045 G$BOFF$0$0 == 0x00c7
                           0000C7  1046 _BOFF	=	0x00c7
                           0000C6  1047 G$EWARN$0$0 == 0x00c6
                           0000C6  1048 _EWARN	=	0x00c6
                           0000C5  1049 G$EPASS$0$0 == 0x00c5
                           0000C5  1050 _EPASS	=	0x00c5
                           0000C4  1051 G$RXOK$0$0 == 0x00c4
                           0000C4  1052 _RXOK	=	0x00c4
                           0000C3  1053 G$TXOK$0$0 == 0x00c3
                           0000C3  1054 _TXOK	=	0x00c3
                           0000C2  1055 G$LEC2$0$0 == 0x00c2
                           0000C2  1056 _LEC2	=	0x00c2
                           0000C1  1057 G$LEC1$0$0 == 0x00c1
                           0000C1  1058 _LEC1	=	0x00c1
                           0000C0  1059 G$LEC0$0$0 == 0x00c0
                           0000C0  1060 _LEC0	=	0x00c0
                           0000CF  1061 G$TF2$0$0 == 0x00cf
                           0000CF  1062 _TF2	=	0x00cf
                           0000CE  1063 G$EXF2$0$0 == 0x00ce
                           0000CE  1064 _EXF2	=	0x00ce
                           0000CB  1065 G$EXEN2$0$0 == 0x00cb
                           0000CB  1066 _EXEN2	=	0x00cb
                           0000CA  1067 G$TR2$0$0 == 0x00ca
                           0000CA  1068 _TR2	=	0x00ca
                           0000C9  1069 G$CT2$0$0 == 0x00c9
                           0000C9  1070 _CT2	=	0x00c9
                           0000C8  1071 G$CPRL2$0$0 == 0x00c8
                           0000C8  1072 _CPRL2	=	0x00c8
                           0000CF  1073 G$TF3$0$0 == 0x00cf
                           0000CF  1074 _TF3	=	0x00cf
                           0000CE  1075 G$EXF3$0$0 == 0x00ce
                           0000CE  1076 _EXF3	=	0x00ce
                           0000CB  1077 G$EXEN3$0$0 == 0x00cb
                           0000CB  1078 _EXEN3	=	0x00cb
                           0000CA  1079 G$TR3$0$0 == 0x00ca
                           0000CA  1080 _TR3	=	0x00ca
                           0000C9  1081 G$CT3$0$0 == 0x00c9
                           0000C9  1082 _CT3	=	0x00c9
                           0000C8  1083 G$CPRL3$0$0 == 0x00c8
                           0000C8  1084 _CPRL3	=	0x00c8
                           0000CF  1085 G$TF4$0$0 == 0x00cf
                           0000CF  1086 _TF4	=	0x00cf
                           0000CE  1087 G$EXF4$0$0 == 0x00ce
                           0000CE  1088 _EXF4	=	0x00ce
                           0000CB  1089 G$EXEN4$0$0 == 0x00cb
                           0000CB  1090 _EXEN4	=	0x00cb
                           0000CA  1091 G$TR4$0$0 == 0x00ca
                           0000CA  1092 _TR4	=	0x00ca
                           0000C9  1093 G$CT4$0$0 == 0x00c9
                           0000C9  1094 _CT4	=	0x00c9
                           0000C8  1095 G$CPRL4$0$0 == 0x00c8
                           0000C8  1096 _CPRL4	=	0x00c8
                           0000D7  1097 G$CY$0$0 == 0x00d7
                           0000D7  1098 _CY	=	0x00d7
                           0000D6  1099 G$AC$0$0 == 0x00d6
                           0000D6  1100 _AC	=	0x00d6
                           0000D5  1101 G$F0$0$0 == 0x00d5
                           0000D5  1102 _F0	=	0x00d5
                           0000D4  1103 G$RS1$0$0 == 0x00d4
                           0000D4  1104 _RS1	=	0x00d4
                           0000D3  1105 G$RS0$0$0 == 0x00d3
                           0000D3  1106 _RS0	=	0x00d3
                           0000D2  1107 G$OV$0$0 == 0x00d2
                           0000D2  1108 _OV	=	0x00d2
                           0000D1  1109 G$F1$0$0 == 0x00d1
                           0000D1  1110 _F1	=	0x00d1
                           0000D0  1111 G$P$0$0 == 0x00d0
                           0000D0  1112 _P	=	0x00d0
                           0000DF  1113 G$CF$0$0 == 0x00df
                           0000DF  1114 _CF	=	0x00df
                           0000DE  1115 G$CR$0$0 == 0x00de
                           0000DE  1116 _CR	=	0x00de
                           0000DD  1117 G$CCF5$0$0 == 0x00dd
                           0000DD  1118 _CCF5	=	0x00dd
                           0000DC  1119 G$CCF4$0$0 == 0x00dc
                           0000DC  1120 _CCF4	=	0x00dc
                           0000DB  1121 G$CCF3$0$0 == 0x00db
                           0000DB  1122 _CCF3	=	0x00db
                           0000DA  1123 G$CCF2$0$0 == 0x00da
                           0000DA  1124 _CCF2	=	0x00da
                           0000D9  1125 G$CCF1$0$0 == 0x00d9
                           0000D9  1126 _CCF1	=	0x00d9
                           0000D8  1127 G$CCF0$0$0 == 0x00d8
                           0000D8  1128 _CCF0	=	0x00d8
                           0000EF  1129 G$AD0EN$0$0 == 0x00ef
                           0000EF  1130 _AD0EN	=	0x00ef
                           0000EE  1131 G$AD0TM$0$0 == 0x00ee
                           0000EE  1132 _AD0TM	=	0x00ee
                           0000ED  1133 G$AD0INT$0$0 == 0x00ed
                           0000ED  1134 _AD0INT	=	0x00ed
                           0000EC  1135 G$AD0BUSY$0$0 == 0x00ec
                           0000EC  1136 _AD0BUSY	=	0x00ec
                           0000EB  1137 G$AD0CM1$0$0 == 0x00eb
                           0000EB  1138 _AD0CM1	=	0x00eb
                           0000EA  1139 G$AD0CM0$0$0 == 0x00ea
                           0000EA  1140 _AD0CM0	=	0x00ea
                           0000E9  1141 G$AD0WINT$0$0 == 0x00e9
                           0000E9  1142 _AD0WINT	=	0x00e9
                           0000E8  1143 G$AD0LJST$0$0 == 0x00e8
                           0000E8  1144 _AD0LJST	=	0x00e8
                           0000EF  1145 G$AD2EN$0$0 == 0x00ef
                           0000EF  1146 _AD2EN	=	0x00ef
                           0000EE  1147 G$AD2TM$0$0 == 0x00ee
                           0000EE  1148 _AD2TM	=	0x00ee
                           0000ED  1149 G$AD2INT$0$0 == 0x00ed
                           0000ED  1150 _AD2INT	=	0x00ed
                           0000EC  1151 G$AD2BUSY$0$0 == 0x00ec
                           0000EC  1152 _AD2BUSY	=	0x00ec
                           0000EB  1153 G$AD2CM2$0$0 == 0x00eb
                           0000EB  1154 _AD2CM2	=	0x00eb
                           0000EA  1155 G$AD2CM1$0$0 == 0x00ea
                           0000EA  1156 _AD2CM1	=	0x00ea
                           0000E9  1157 G$AD2CM0$0$0 == 0x00e9
                           0000E9  1158 _AD2CM0	=	0x00e9
                           0000E8  1159 G$AD2WINT$0$0 == 0x00e8
                           0000E8  1160 _AD2WINT	=	0x00e8
                           0000FF  1161 G$SPIF$0$0 == 0x00ff
                           0000FF  1162 _SPIF	=	0x00ff
                           0000FE  1163 G$WCOL$0$0 == 0x00fe
                           0000FE  1164 _WCOL	=	0x00fe
                           0000FD  1165 G$MODF$0$0 == 0x00fd
                           0000FD  1166 _MODF	=	0x00fd
                           0000FC  1167 G$RXOVRN$0$0 == 0x00fc
                           0000FC  1168 _RXOVRN	=	0x00fc
                           0000FB  1169 G$NSSMD1$0$0 == 0x00fb
                           0000FB  1170 _NSSMD1	=	0x00fb
                           0000FA  1171 G$NSSMD0$0$0 == 0x00fa
                           0000FA  1172 _NSSMD0	=	0x00fa
                           0000F9  1173 G$TXBMT$0$0 == 0x00f9
                           0000F9  1174 _TXBMT	=	0x00f9
                           0000F8  1175 G$SPIEN$0$0 == 0x00f8
                           0000F8  1176 _SPIEN	=	0x00f8
                           0000F8  1177 G$CANINIT$0$0 == 0x00f8
                           0000F8  1178 _CANINIT	=	0x00f8
                           0000F9  1179 G$CANIE$0$0 == 0x00f9
                           0000F9  1180 _CANIE	=	0x00f9
                           0000FA  1181 G$CANSIE$0$0 == 0x00fa
                           0000FA  1182 _CANSIE	=	0x00fa
                           0000FB  1183 G$CANEIE$0$0 == 0x00fb
                           0000FB  1184 _CANEIE	=	0x00fb
                           0000FC  1185 G$CANIF$0$0 == 0x00fc
                           0000FC  1186 _CANIF	=	0x00fc
                           0000FD  1187 G$CANDAR$0$0 == 0x00fd
                           0000FD  1188 _CANDAR	=	0x00fd
                           0000FE  1189 G$CANCCE$0$0 == 0x00fe
                           0000FE  1190 _CANCCE	=	0x00fe
                           0000FF  1191 G$CANTEST$0$0 == 0x00ff
                           0000FF  1192 _CANTEST	=	0x00ff
                                   1193 ;--------------------------------------------------------
                                   1194 ; overlayable register banks
                                   1195 ;--------------------------------------------------------
                                   1196 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1197 	.ds 8
                                   1198 ;--------------------------------------------------------
                                   1199 ; internal ram data
                                   1200 ;--------------------------------------------------------
                                   1201 	.area DSEG    (DATA)
                           000000  1202 G$conta_caractere$0$0==.
      000009                       1203 _conta_caractere::
      000009                       1204 	.ds 1
                                   1205 ;--------------------------------------------------------
                                   1206 ; overlayable items in internal ram 
                                   1207 ;--------------------------------------------------------
                                   1208 	.area	OSEG    (OVR,DATA)
                                   1209 	.area	OSEG    (OVR,DATA)
                                   1210 	.area	OSEG    (OVR,DATA)
                                   1211 	.area	OSEG    (OVR,DATA)
                                   1212 ;--------------------------------------------------------
                                   1213 ; indirectly addressable internal ram data
                                   1214 ;--------------------------------------------------------
                                   1215 	.area ISEG    (DATA)
                                   1216 ;--------------------------------------------------------
                                   1217 ; absolute internal ram data
                                   1218 ;--------------------------------------------------------
                                   1219 	.area IABS    (ABS,DATA)
                                   1220 	.area IABS    (ABS,DATA)
                                   1221 ;--------------------------------------------------------
                                   1222 ; bit data
                                   1223 ;--------------------------------------------------------
                                   1224 	.area BSEG    (BIT)
                           000000  1225 Lglcd.le_glcd$cd$1$27==.
      00000A                       1226 _le_glcd_PARM_1:
      00000A                       1227 	.ds 1
                           000001  1228 Lglcd.le_glcd$cs$1$27==.
      00000B                       1229 _le_glcd_PARM_2:
      00000B                       1230 	.ds 1
                           000002  1231 Lglcd.esc_glcd$cd$1$29==.
      00000C                       1232 _esc_glcd_PARM_2:
      00000C                       1233 	.ds 1
                           000003  1234 Lglcd.esc_glcd$cs$1$29==.
      00000D                       1235 _esc_glcd_PARM_3:
      00000D                       1236 	.ds 1
                           000004  1237 Lglcd.ini_glcd$sloc0$1$0==.
      00000E                       1238 _ini_glcd_sloc0_1_0:
      00000E                       1239 	.ds 1
                           000005  1240 Lglcd.conf_Y$cs$1$33==.
      00000F                       1241 _conf_Y_PARM_2:
      00000F                       1242 	.ds 1
                           000006  1243 Lglcd.conf_pag$cs$1$35==.
      000010                       1244 _conf_pag_PARM_2:
      000010                       1245 	.ds 1
                           000007  1246 Lglcd.limpa_glcd$cs$1$37==.
      000011                       1247 _limpa_glcd_PARM_1:
      000011                       1248 	.ds 1
                           000008  1249 Lglcd.escreve_caractere$cs$1$44==.
      000012                       1250 _escreve_caractere_PARM_2:
      000012                       1251 	.ds 1
                           000009  1252 Lglcd.putchar$lado$1$47==.
      000013                       1253 _putchar_lado_1_47:
      000013                       1254 	.ds 1
                                   1255 ;--------------------------------------------------------
                                   1256 ; paged external ram data
                                   1257 ;--------------------------------------------------------
                                   1258 	.area PSEG    (PAG,XDATA)
                                   1259 ;--------------------------------------------------------
                                   1260 ; external ram data
                                   1261 ;--------------------------------------------------------
                                   1262 	.area XSEG    (XDATA)
                                   1263 ;--------------------------------------------------------
                                   1264 ; absolute external ram data
                                   1265 ;--------------------------------------------------------
                                   1266 	.area XABS    (ABS,XDATA)
                                   1267 ;--------------------------------------------------------
                                   1268 ; external initialized ram data
                                   1269 ;--------------------------------------------------------
                                   1270 	.area XISEG   (XDATA)
                                   1271 	.area HOME    (CODE)
                                   1272 	.area GSINIT0 (CODE)
                                   1273 	.area GSINIT1 (CODE)
                                   1274 	.area GSINIT2 (CODE)
                                   1275 	.area GSINIT3 (CODE)
                                   1276 	.area GSINIT4 (CODE)
                                   1277 	.area GSINIT5 (CODE)
                                   1278 	.area GSINIT  (CODE)
                                   1279 	.area GSFINAL (CODE)
                                   1280 	.area CSEG    (CODE)
                                   1281 ;--------------------------------------------------------
                                   1282 ; global & static initialisations
                                   1283 ;--------------------------------------------------------
                                   1284 	.area HOME    (CODE)
                                   1285 	.area GSINIT  (CODE)
                                   1286 	.area GSFINAL (CODE)
                                   1287 	.area GSINIT  (CODE)
                           000000  1288 	C$glcd.c$30$1$47 ==.
                                   1289 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:30: volatile unsigned char conta_caractere = 0;
      000062 75 09 00         [24] 1290 	mov	_conta_caractere,#0x00
                                   1291 ;--------------------------------------------------------
                                   1292 ; Home
                                   1293 ;--------------------------------------------------------
                                   1294 	.area HOME    (CODE)
                                   1295 	.area HOME    (CODE)
                                   1296 ;--------------------------------------------------------
                                   1297 ; code
                                   1298 ;--------------------------------------------------------
                                   1299 	.area CSEG    (CODE)
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'Reset_Sources_Init'
                                   1302 ;------------------------------------------------------------
                           000000  1303 	G$Reset_Sources_Init$0$0 ==.
                           000000  1304 	C$config.c$10$0$0 ==.
                                   1305 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:10: void Reset_Sources_Init()
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function Reset_Sources_Init
                                   1308 ;	-----------------------------------------
      0003B6                       1309 _Reset_Sources_Init:
                           000007  1310 	ar7 = 0x07
                           000006  1311 	ar6 = 0x06
                           000005  1312 	ar5 = 0x05
                           000004  1313 	ar4 = 0x04
                           000003  1314 	ar3 = 0x03
                           000002  1315 	ar2 = 0x02
                           000001  1316 	ar1 = 0x01
                           000000  1317 	ar0 = 0x00
                           000000  1318 	C$config.c$12$1$14 ==.
                                   1319 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:12: WDTCN     = 0xDE;
      0003B6 75 FF DE         [24] 1320 	mov	_WDTCN,#0xde
                           000003  1321 	C$config.c$13$1$14 ==.
                                   1322 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:13: WDTCN     = 0xAD;
      0003B9 75 FF AD         [24] 1323 	mov	_WDTCN,#0xad
                           000006  1324 	C$config.c$14$1$14 ==.
                           000006  1325 	XG$Reset_Sources_Init$0$0 ==.
      0003BC 22               [24] 1326 	ret
                                   1327 ;------------------------------------------------------------
                                   1328 ;Allocation info for local variables in function 'Timer_Init'
                                   1329 ;------------------------------------------------------------
                           000007  1330 	G$Timer_Init$0$0 ==.
                           000007  1331 	C$config.c$16$1$14 ==.
                                   1332 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:16: void Timer_Init()
                                   1333 ;	-----------------------------------------
                                   1334 ;	 function Timer_Init
                                   1335 ;	-----------------------------------------
      0003BD                       1336 _Timer_Init:
                           000007  1337 	C$config.c$18$1$15 ==.
                                   1338 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:18: SFRPAGE   = TIMER01_PAGE;
      0003BD 75 84 00         [24] 1339 	mov	_SFRPAGE,#0x00
                           00000A  1340 	C$config.c$19$1$15 ==.
                                   1341 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:19: TCON      = 0x41;
      0003C0 75 88 41         [24] 1342 	mov	_TCON,#0x41
                           00000D  1343 	C$config.c$20$1$15 ==.
                                   1344 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:20: TMOD      = 0x20;
      0003C3 75 89 20         [24] 1345 	mov	_TMOD,#0x20
                           000010  1346 	C$config.c$21$1$15 ==.
                                   1347 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:21: CKCON     = 0x18;
      0003C6 75 8E 18         [24] 1348 	mov	_CKCON,#0x18
                           000013  1349 	C$config.c$22$1$15 ==.
                                   1350 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:22: TH1       = 0xAF;
      0003C9 75 8D AF         [24] 1351 	mov	_TH1,#0xaf
                           000016  1352 	C$config.c$23$1$15 ==.
                                   1353 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:23: SFRPAGE   = TMR2_PAGE;
      0003CC 75 84 00         [24] 1354 	mov	_SFRPAGE,#0x00
                           000019  1355 	C$config.c$24$1$15 ==.
                                   1356 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:24: TMR2CN    = 0x04;
      0003CF 75 C8 04         [24] 1357 	mov	_TMR2CN,#0x04
                           00001C  1358 	C$config.c$25$1$15 ==.
                                   1359 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:25: TMR2CF    = 0x0A;
      0003D2 75 C9 0A         [24] 1360 	mov	_TMR2CF,#0x0a
                           00001F  1361 	C$config.c$26$1$15 ==.
                                   1362 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:26: RCAP2L    = 0x3C;
      0003D5 75 CA 3C         [24] 1363 	mov	_RCAP2L,#0x3c
                           000022  1364 	C$config.c$27$1$15 ==.
                                   1365 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:27: RCAP2H    = 0xF6;
      0003D8 75 CB F6         [24] 1366 	mov	_RCAP2H,#0xf6
                           000025  1367 	C$config.c$28$1$15 ==.
                           000025  1368 	XG$Timer_Init$0$0 ==.
      0003DB 22               [24] 1369 	ret
                                   1370 ;------------------------------------------------------------
                                   1371 ;Allocation info for local variables in function 'UART_Init'
                                   1372 ;------------------------------------------------------------
                           000026  1373 	G$UART_Init$0$0 ==.
                           000026  1374 	C$config.c$30$1$15 ==.
                                   1375 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:30: void UART_Init()
                                   1376 ;	-----------------------------------------
                                   1377 ;	 function UART_Init
                                   1378 ;	-----------------------------------------
      0003DC                       1379 _UART_Init:
                           000026  1380 	C$config.c$32$1$16 ==.
                                   1381 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:32: SFRPAGE   = UART0_PAGE;
      0003DC 75 84 00         [24] 1382 	mov	_SFRPAGE,#0x00
                           000029  1383 	C$config.c$33$1$16 ==.
                                   1384 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:33: SCON0     = 0x70;
      0003DF 75 98 70         [24] 1385 	mov	_SCON0,#0x70
                           00002C  1386 	C$config.c$34$1$16 ==.
                           00002C  1387 	XG$UART_Init$0$0 ==.
      0003E2 22               [24] 1388 	ret
                                   1389 ;------------------------------------------------------------
                                   1390 ;Allocation info for local variables in function 'SPI_Init'
                                   1391 ;------------------------------------------------------------
                           00002D  1392 	G$SPI_Init$0$0 ==.
                           00002D  1393 	C$config.c$36$1$16 ==.
                                   1394 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:36: void SPI_Init()
                                   1395 ;	-----------------------------------------
                                   1396 ;	 function SPI_Init
                                   1397 ;	-----------------------------------------
      0003E3                       1398 _SPI_Init:
                           00002D  1399 	C$config.c$38$1$17 ==.
                                   1400 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:38: SFRPAGE   = SPI0_PAGE;
      0003E3 75 84 00         [24] 1401 	mov	_SFRPAGE,#0x00
                           000030  1402 	C$config.c$39$1$17 ==.
                                   1403 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:39: SPI0CFG   = 0x40;
      0003E6 75 9A 40         [24] 1404 	mov	_SPI0CFG,#0x40
                           000033  1405 	C$config.c$40$1$17 ==.
                                   1406 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:40: SPI0CN    = 0x01;
      0003E9 75 F8 01         [24] 1407 	mov	_SPI0CN,#0x01
                           000036  1408 	C$config.c$41$1$17 ==.
                                   1409 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:41: SPI0CKR   = 0x7C;
      0003EC 75 9D 7C         [24] 1410 	mov	_SPI0CKR,#0x7c
                           000039  1411 	C$config.c$42$1$17 ==.
                           000039  1412 	XG$SPI_Init$0$0 ==.
      0003EF 22               [24] 1413 	ret
                                   1414 ;------------------------------------------------------------
                                   1415 ;Allocation info for local variables in function 'DAC_Init'
                                   1416 ;------------------------------------------------------------
                           00003A  1417 	G$DAC_Init$0$0 ==.
                           00003A  1418 	C$config.c$44$1$17 ==.
                                   1419 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:44: void DAC_Init()
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function DAC_Init
                                   1422 ;	-----------------------------------------
      0003F0                       1423 _DAC_Init:
                           00003A  1424 	C$config.c$46$1$18 ==.
                                   1425 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:46: SFRPAGE   = DAC0_PAGE;
      0003F0 75 84 00         [24] 1426 	mov	_SFRPAGE,#0x00
                           00003D  1427 	C$config.c$47$1$18 ==.
                                   1428 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:47: DAC0CN    = 0x04;
      0003F3 75 D4 04         [24] 1429 	mov	_DAC0CN,#0x04
                           000040  1430 	C$config.c$48$1$18 ==.
                           000040  1431 	XG$DAC_Init$0$0 ==.
      0003F6 22               [24] 1432 	ret
                                   1433 ;------------------------------------------------------------
                                   1434 ;Allocation info for local variables in function 'Voltage_Reference_Init'
                                   1435 ;------------------------------------------------------------
                           000041  1436 	G$Voltage_Reference_Init$0$0 ==.
                           000041  1437 	C$config.c$50$1$18 ==.
                                   1438 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:50: void Voltage_Reference_Init()
                                   1439 ;	-----------------------------------------
                                   1440 ;	 function Voltage_Reference_Init
                                   1441 ;	-----------------------------------------
      0003F7                       1442 _Voltage_Reference_Init:
                           000041  1443 	C$config.c$52$1$19 ==.
                                   1444 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:52: SFRPAGE   = ADC0_PAGE;
      0003F7 75 84 00         [24] 1445 	mov	_SFRPAGE,#0x00
                           000044  1446 	C$config.c$53$1$19 ==.
                                   1447 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:53: REF0CN    = 0x03;
      0003FA 75 D1 03         [24] 1448 	mov	_REF0CN,#0x03
                           000047  1449 	C$config.c$54$1$19 ==.
                           000047  1450 	XG$Voltage_Reference_Init$0$0 ==.
      0003FD 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'Port_IO_Init'
                                   1454 ;------------------------------------------------------------
                           000048  1455 	G$Port_IO_Init$0$0 ==.
                           000048  1456 	C$config.c$56$1$19 ==.
                                   1457 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:56: void Port_IO_Init()
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function Port_IO_Init
                                   1460 ;	-----------------------------------------
      0003FE                       1461 _Port_IO_Init:
                           000048  1462 	C$config.c$94$1$20 ==.
                                   1463 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:94: SFRPAGE   = CONFIG_PAGE;
      0003FE 75 84 0F         [24] 1464 	mov	_SFRPAGE,#0x0f
                           00004B  1465 	C$config.c$95$1$20 ==.
                                   1466 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:95: P0MDOUT   = 0xFF;
      000401 75 A4 FF         [24] 1467 	mov	_P0MDOUT,#0xff
                           00004E  1468 	C$config.c$96$1$20 ==.
                                   1469 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:96: P1MDOUT   = 0xFF;
      000404 75 A5 FF         [24] 1470 	mov	_P1MDOUT,#0xff
                           000051  1471 	C$config.c$97$1$20 ==.
                                   1472 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:97: P2MDOUT   = 0xFF;
      000407 75 A6 FF         [24] 1473 	mov	_P2MDOUT,#0xff
                           000054  1474 	C$config.c$98$1$20 ==.
                                   1475 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:98: P3MDOUT   = 0xFF;
      00040A 75 A7 FF         [24] 1476 	mov	_P3MDOUT,#0xff
                           000057  1477 	C$config.c$99$1$20 ==.
                                   1478 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:99: XBR2      = 0x40;
      00040D 75 E3 40         [24] 1479 	mov	_XBR2,#0x40
                           00005A  1480 	C$config.c$100$1$20 ==.
                           00005A  1481 	XG$Port_IO_Init$0$0 ==.
      000410 22               [24] 1482 	ret
                                   1483 ;------------------------------------------------------------
                                   1484 ;Allocation info for local variables in function 'Oscillator_Init'
                                   1485 ;------------------------------------------------------------
                                   1486 ;i                         Allocated to registers r6 r7 
                                   1487 ;------------------------------------------------------------
                           00005B  1488 	G$Oscillator_Init$0$0 ==.
                           00005B  1489 	C$config.c$102$1$20 ==.
                                   1490 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:102: void Oscillator_Init()
                                   1491 ;	-----------------------------------------
                                   1492 ;	 function Oscillator_Init
                                   1493 ;	-----------------------------------------
      000411                       1494 _Oscillator_Init:
                           00005B  1495 	C$config.c$105$1$21 ==.
                                   1496 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:105: SFRPAGE   = CONFIG_PAGE;
      000411 75 84 0F         [24] 1497 	mov	_SFRPAGE,#0x0f
                           00005E  1498 	C$config.c$106$1$21 ==.
                                   1499 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:106: OSCXCN    = 0x67;
      000414 75 8C 67         [24] 1500 	mov	_OSCXCN,#0x67
                           000061  1501 	C$config.c$107$1$21 ==.
                                   1502 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:107: for (i = 0; i < 3000; i++);  // Wait 1ms for initialization
      000417 7E B8            [12] 1503 	mov	r6,#0xb8
      000419 7F 0B            [12] 1504 	mov	r7,#0x0b
      00041B                       1505 00107$:
      00041B EE               [12] 1506 	mov	a,r6
      00041C 24 FF            [12] 1507 	add	a,#0xff
      00041E FC               [12] 1508 	mov	r4,a
      00041F EF               [12] 1509 	mov	a,r7
      000420 34 FF            [12] 1510 	addc	a,#0xff
      000422 FD               [12] 1511 	mov	r5,a
      000423 8C 06            [24] 1512 	mov	ar6,r4
      000425 8D 07            [24] 1513 	mov	ar7,r5
      000427 EC               [12] 1514 	mov	a,r4
      000428 4D               [12] 1515 	orl	a,r5
      000429 70 F0            [24] 1516 	jnz	00107$
                           000075  1517 	C$config.c$108$1$21 ==.
                                   1518 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:108: while ((OSCXCN & 0x80) == 0);
      00042B                       1519 00102$:
      00042B E5 8C            [12] 1520 	mov	a,_OSCXCN
      00042D 30 E7 FB         [24] 1521 	jnb	acc.7,00102$
                           00007A  1522 	C$config.c$109$1$21 ==.
                                   1523 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:109: CLKSEL    = 0x01;
      000430 75 97 01         [24] 1524 	mov	_CLKSEL,#0x01
                           00007D  1525 	C$config.c$110$1$21 ==.
                           00007D  1526 	XG$Oscillator_Init$0$0 ==.
      000433 22               [24] 1527 	ret
                                   1528 ;------------------------------------------------------------
                                   1529 ;Allocation info for local variables in function 'Init_Device'
                                   1530 ;------------------------------------------------------------
                           00007E  1531 	G$Init_Device$0$0 ==.
                           00007E  1532 	C$config.c$114$1$21 ==.
                                   1533 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:114: void Init_Device(void)
                                   1534 ;	-----------------------------------------
                                   1535 ;	 function Init_Device
                                   1536 ;	-----------------------------------------
      000434                       1537 _Init_Device:
                           00007E  1538 	C$config.c$116$1$23 ==.
                                   1539 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:116: Reset_Sources_Init();
      000434 12 03 B6         [24] 1540 	lcall	_Reset_Sources_Init
                           000081  1541 	C$config.c$117$1$23 ==.
                                   1542 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:117: Timer_Init();
      000437 12 03 BD         [24] 1543 	lcall	_Timer_Init
                           000084  1544 	C$config.c$118$1$23 ==.
                                   1545 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:118: UART_Init();
      00043A 12 03 DC         [24] 1546 	lcall	_UART_Init
                           000087  1547 	C$config.c$119$1$23 ==.
                                   1548 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:119: SPI_Init();
      00043D 12 03 E3         [24] 1549 	lcall	_SPI_Init
                           00008A  1550 	C$config.c$120$1$23 ==.
                                   1551 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:120: DAC_Init();
      000440 12 03 F0         [24] 1552 	lcall	_DAC_Init
                           00008D  1553 	C$config.c$121$1$23 ==.
                                   1554 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:121: Voltage_Reference_Init();
      000443 12 03 F7         [24] 1555 	lcall	_Voltage_Reference_Init
                           000090  1556 	C$config.c$122$1$23 ==.
                                   1557 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:122: Port_IO_Init();
      000446 12 03 FE         [24] 1558 	lcall	_Port_IO_Init
                           000093  1559 	C$config.c$123$1$23 ==.
                                   1560 ;	C:\Users\202019050142\Documents\micap\Trabalho\/config.c:123: Oscillator_Init();
      000449 12 04 11         [24] 1561 	lcall	_Oscillator_Init
                           000096  1562 	C$config.c$124$1$23 ==.
                           000096  1563 	XG$Init_Device$0$0 ==.
      00044C 22               [24] 1564 	ret
                                   1565 ;------------------------------------------------------------
                                   1566 ;Allocation info for local variables in function 'delay_ms'
                                   1567 ;------------------------------------------------------------
                                   1568 ;t                         Allocated to registers r6 r7 
                                   1569 ;------------------------------------------------------------
                           000097  1570 	G$delay_ms$0$0 ==.
                           000097  1571 	C$glcd.c$132$1$23 ==.
                                   1572 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:132: void delay_ms(unsigned int t){
                                   1573 ;	-----------------------------------------
                                   1574 ;	 function delay_ms
                                   1575 ;	-----------------------------------------
      00044D                       1576 _delay_ms:
      00044D AE 82            [24] 1577 	mov	r6,dpl
      00044F AF 83            [24] 1578 	mov	r7,dph
                           00009B  1579 	C$glcd.c$133$1$25 ==.
                                   1580 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:133: TMOD |= 0x01;
      000451 43 89 01         [24] 1581 	orl	_TMOD,#0x01
                           00009E  1582 	C$glcd.c$134$1$25 ==.
                                   1583 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:134: TMOD &= ~0x02;
      000454 53 89 FD         [24] 1584 	anl	_TMOD,#0xfd
      000457                       1585 00106$:
                           0000A1  1586 	C$glcd.c$135$1$25 ==.
                                   1587 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:135: for(;t>0;t--){
      000457 EE               [12] 1588 	mov	a,r6
      000458 4F               [12] 1589 	orl	a,r7
      000459 60 16            [24] 1590 	jz	00108$
                           0000A5  1591 	C$glcd.c$136$2$26 ==.
                                   1592 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:136: TR0 = 0;
      00045B C2 8C            [12] 1593 	clr	_TR0
                           0000A7  1594 	C$glcd.c$137$2$26 ==.
                                   1595 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:137: TF0 = 0;
      00045D C2 8D            [12] 1596 	clr	_TF0
                           0000A9  1597 	C$glcd.c$138$2$26 ==.
                                   1598 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:138: TL0 = 0x58;
      00045F 75 8A 58         [24] 1599 	mov	_TL0,#0x58
                           0000AC  1600 	C$glcd.c$139$2$26 ==.
                                   1601 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:139: TH0 = 0x9E;
      000462 75 8C 9E         [24] 1602 	mov	_TH0,#0x9e
                           0000AF  1603 	C$glcd.c$140$2$26 ==.
                                   1604 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:140: TR0 = 1;
      000465 D2 8C            [12] 1605 	setb	_TR0
                           0000B1  1606 	C$glcd.c$141$2$26 ==.
                                   1607 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:141: while(TF0 == 0);
      000467                       1608 00101$:
      000467 30 8D FD         [24] 1609 	jnb	_TF0,00101$
                           0000B4  1610 	C$glcd.c$135$1$25 ==.
                                   1611 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:135: for(;t>0;t--){
      00046A 1E               [12] 1612 	dec	r6
      00046B BE FF 01         [24] 1613 	cjne	r6,#0xff,00127$
      00046E 1F               [12] 1614 	dec	r7
      00046F                       1615 00127$:
      00046F 80 E6            [24] 1616 	sjmp	00106$
      000471                       1617 00108$:
                           0000BB  1618 	C$glcd.c$143$1$25 ==.
                           0000BB  1619 	XG$delay_ms$0$0 ==.
      000471 22               [24] 1620 	ret
                                   1621 ;------------------------------------------------------------
                                   1622 ;Allocation info for local variables in function 'le_glcd'
                                   1623 ;------------------------------------------------------------
                                   1624 ;byte                      Allocated to registers 
                                   1625 ;------------------------------------------------------------
                           0000BC  1626 	G$le_glcd$0$0 ==.
                           0000BC  1627 	C$glcd.c$145$1$25 ==.
                                   1628 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:145: unsigned char le_glcd(__bit cd, __bit cs){
                                   1629 ;	-----------------------------------------
                                   1630 ;	 function le_glcd
                                   1631 ;	-----------------------------------------
      000472                       1632 _le_glcd:
                           0000BC  1633 	C$glcd.c$148$1$28 ==.
                                   1634 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:148: RW = HI;
      000472 D2 A3            [12] 1635 	setb	_P2_3
                           0000BE  1636 	C$glcd.c$149$1$28 ==.
                                   1637 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:149: CS1 = cs;
      000474 A2 0B            [12] 1638 	mov	c,_le_glcd_PARM_2
      000476 92 A0            [24] 1639 	mov	_P2_0,c
                           0000C2  1640 	C$glcd.c$150$1$28 ==.
                                   1641 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:150: CS2 = !cs;
      000478 A2 0B            [12] 1642 	mov	c,_le_glcd_PARM_2
      00047A B3               [12] 1643 	cpl	c
      00047B 92 A1            [24] 1644 	mov	_P2_1,c
                           0000C7  1645 	C$glcd.c$151$1$28 ==.
                                   1646 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:151: RS = cd;
      00047D A2 0A            [12] 1647 	mov	c,_le_glcd_PARM_1
      00047F 92 A2            [24] 1648 	mov	_P2_2,c
                           0000CB  1649 	C$glcd.c$152$1$28 ==.
                                   1650 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:152: NOP4();
      000481 00               [12] 1651 	NOP	
      000482 00               [12] 1652 	NOP	
      000483 00               [12] 1653 	NOP	
      000484 00               [12] 1654 	NOP	
                           0000CF  1655 	C$glcd.c$154$1$28 ==.
                                   1656 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:154: E = HI;
      000485 D2 A4            [12] 1657 	setb	_P2_4
                           0000D1  1658 	C$glcd.c$155$1$28 ==.
                                   1659 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:155: NOP8();
      000487 00               [12] 1660 	NOP	
      000488 00               [12] 1661 	NOP	
      000489 00               [12] 1662 	NOP	
      00048A 00               [12] 1663 	NOP	
      00048B 00               [12] 1664 	NOP	
      00048C 00               [12] 1665 	NOP	
      00048D 00               [12] 1666 	NOP	
      00048E 00               [12] 1667 	NOP	
                           0000D9  1668 	C$glcd.c$157$1$28 ==.
                                   1669 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:157: SFRPAGE=CONFIG_PAGE;
      00048F 75 84 0F         [24] 1670 	mov	_SFRPAGE,#0x0f
                           0000DC  1671 	C$glcd.c$158$1$28 ==.
                                   1672 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:158: byte = DB;
      000492 85 C8 82         [24] 1673 	mov	dpl,_P4
                           0000DF  1674 	C$glcd.c$159$1$28 ==.
                                   1675 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:159: SFRPAGE=LEGACY_PAGE;
      000495 75 84 00         [24] 1676 	mov	_SFRPAGE,#0x00
                           0000E2  1677 	C$glcd.c$160$1$28 ==.
                                   1678 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:160: NOP4();
      000498 00               [12] 1679 	NOP	
      000499 00               [12] 1680 	NOP	
      00049A 00               [12] 1681 	NOP	
      00049B 00               [12] 1682 	NOP	
                           0000E6  1683 	C$glcd.c$162$1$28 ==.
                                   1684 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:162: E = LO;
      00049C C2 A4            [12] 1685 	clr	_P2_4
                           0000E8  1686 	C$glcd.c$163$1$28 ==.
                                   1687 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:163: NOP12();
      00049E 00               [12] 1688 	NOP	
      00049F 00               [12] 1689 	NOP	
      0004A0 00               [12] 1690 	NOP	
      0004A1 00               [12] 1691 	NOP	
      0004A2 00               [12] 1692 	NOP	
      0004A3 00               [12] 1693 	NOP	
      0004A4 00               [12] 1694 	NOP	
      0004A5 00               [12] 1695 	NOP	
      0004A6 00               [12] 1696 	NOP	
      0004A7 00               [12] 1697 	NOP	
      0004A8 00               [12] 1698 	NOP	
      0004A9 00               [12] 1699 	NOP	
                           0000F4  1700 	C$glcd.c$164$1$28 ==.
                                   1701 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:164: return (byte);
                           0000F4  1702 	C$glcd.c$166$1$28 ==.
                           0000F4  1703 	XG$le_glcd$0$0 ==.
      0004AA 22               [24] 1704 	ret
                                   1705 ;------------------------------------------------------------
                                   1706 ;Allocation info for local variables in function 'esc_glcd'
                                   1707 ;------------------------------------------------------------
                                   1708 ;byte                      Allocated to registers r7 
                                   1709 ;------------------------------------------------------------
                           0000F5  1710 	G$esc_glcd$0$0 ==.
                           0000F5  1711 	C$glcd.c$168$1$28 ==.
                                   1712 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:168: void esc_glcd(unsigned char byte, __bit cd, __bit cs){
                                   1713 ;	-----------------------------------------
                                   1714 ;	 function esc_glcd
                                   1715 ;	-----------------------------------------
      0004AB                       1716 _esc_glcd:
      0004AB AF 82            [24] 1717 	mov	r7,dpl
                           0000F7  1718 	C$glcd.c$169$1$30 ==.
                                   1719 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:169: while(le_glcd(CO, cs) & 0x80);
      0004AD                       1720 00101$:
      0004AD C2 0A            [12] 1721 	clr	_le_glcd_PARM_1
      0004AF A2 0D            [12] 1722 	mov	c,_esc_glcd_PARM_3
      0004B1 92 0B            [24] 1723 	mov	_le_glcd_PARM_2,c
      0004B3 C0 07            [24] 1724 	push	ar7
      0004B5 12 04 72         [24] 1725 	lcall	_le_glcd
      0004B8 E5 82            [12] 1726 	mov	a,dpl
      0004BA D0 07            [24] 1727 	pop	ar7
      0004BC 20 E7 EE         [24] 1728 	jb	acc.7,00101$
                           000109  1729 	C$glcd.c$171$1$30 ==.
                                   1730 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:171: RW = LO;
      0004BF C2 A3            [12] 1731 	clr	_P2_3
                           00010B  1732 	C$glcd.c$172$1$30 ==.
                                   1733 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:172: CS1 = cs;
      0004C1 A2 0D            [12] 1734 	mov	c,_esc_glcd_PARM_3
      0004C3 92 A0            [24] 1735 	mov	_P2_0,c
                           00010F  1736 	C$glcd.c$173$1$30 ==.
                                   1737 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:173: CS2 = !cs;
      0004C5 A2 0D            [12] 1738 	mov	c,_esc_glcd_PARM_3
      0004C7 B3               [12] 1739 	cpl	c
      0004C8 92 A1            [24] 1740 	mov	_P2_1,c
                           000114  1741 	C$glcd.c$174$1$30 ==.
                                   1742 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:174: RS = cd;
      0004CA A2 0C            [12] 1743 	mov	c,_esc_glcd_PARM_2
      0004CC 92 A2            [24] 1744 	mov	_P2_2,c
                           000118  1745 	C$glcd.c$175$1$30 ==.
                                   1746 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:175: SFRPAGE=CONFIG_PAGE;
      0004CE 75 84 0F         [24] 1747 	mov	_SFRPAGE,#0x0f
                           00011B  1748 	C$glcd.c$176$1$30 ==.
                                   1749 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:176: DB = byte;
      0004D1 8F C8            [24] 1750 	mov	_P4,r7
                           00011D  1751 	C$glcd.c$177$1$30 ==.
                                   1752 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:177: SFRPAGE=LEGACY_PAGE;
      0004D3 75 84 00         [24] 1753 	mov	_SFRPAGE,#0x00
                           000120  1754 	C$glcd.c$178$1$30 ==.
                                   1755 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:178: NOP4();
      0004D6 00               [12] 1756 	NOP	
      0004D7 00               [12] 1757 	NOP	
      0004D8 00               [12] 1758 	NOP	
      0004D9 00               [12] 1759 	NOP	
                           000124  1760 	C$glcd.c$180$1$30 ==.
                                   1761 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:180: E = HI;
      0004DA D2 A4            [12] 1762 	setb	_P2_4
                           000126  1763 	C$glcd.c$181$1$30 ==.
                                   1764 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:181: NOP12();
      0004DC 00               [12] 1765 	NOP	
      0004DD 00               [12] 1766 	NOP	
      0004DE 00               [12] 1767 	NOP	
      0004DF 00               [12] 1768 	NOP	
      0004E0 00               [12] 1769 	NOP	
      0004E1 00               [12] 1770 	NOP	
      0004E2 00               [12] 1771 	NOP	
      0004E3 00               [12] 1772 	NOP	
      0004E4 00               [12] 1773 	NOP	
      0004E5 00               [12] 1774 	NOP	
      0004E6 00               [12] 1775 	NOP	
      0004E7 00               [12] 1776 	NOP	
                           000132  1777 	C$glcd.c$183$1$30 ==.
                                   1778 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:183: E = LO;
      0004E8 C2 A4            [12] 1779 	clr	_P2_4
                           000134  1780 	C$glcd.c$184$1$30 ==.
                                   1781 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:184: SFRPAGE=CONFIG_PAGE;
      0004EA 75 84 0F         [24] 1782 	mov	_SFRPAGE,#0x0f
                           000137  1783 	C$glcd.c$185$1$30 ==.
                                   1784 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:185: DB = 0xff;
      0004ED 75 C8 FF         [24] 1785 	mov	_P4,#0xff
                           00013A  1786 	C$glcd.c$186$1$30 ==.
                                   1787 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:186: SFRPAGE=LEGACY_PAGE;
      0004F0 75 84 00         [24] 1788 	mov	_SFRPAGE,#0x00
                           00013D  1789 	C$glcd.c$187$1$30 ==.
                                   1790 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:187: NOP12();
      0004F3 00               [12] 1791 	NOP	
      0004F4 00               [12] 1792 	NOP	
      0004F5 00               [12] 1793 	NOP	
      0004F6 00               [12] 1794 	NOP	
      0004F7 00               [12] 1795 	NOP	
      0004F8 00               [12] 1796 	NOP	
      0004F9 00               [12] 1797 	NOP	
      0004FA 00               [12] 1798 	NOP	
      0004FB 00               [12] 1799 	NOP	
      0004FC 00               [12] 1800 	NOP	
      0004FD 00               [12] 1801 	NOP	
      0004FE 00               [12] 1802 	NOP	
                           000149  1803 	C$glcd.c$188$1$30 ==.
                           000149  1804 	XG$esc_glcd$0$0 ==.
      0004FF 22               [24] 1805 	ret
                                   1806 ;------------------------------------------------------------
                                   1807 ;Allocation info for local variables in function 'ini_glcd'
                                   1808 ;------------------------------------------------------------
                                   1809 ;cs                        Allocated to registers r7 
                                   1810 ;------------------------------------------------------------
                           00014A  1811 	G$ini_glcd$0$0 ==.
                           00014A  1812 	C$glcd.c$190$1$30 ==.
                                   1813 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:190: void ini_glcd(){
                                   1814 ;	-----------------------------------------
                                   1815 ;	 function ini_glcd
                                   1816 ;	-----------------------------------------
      000500                       1817 _ini_glcd:
                           00014A  1818 	C$glcd.c$192$1$31 ==.
                                   1819 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:192: E = LO;
      000500 C2 A4            [12] 1820 	clr	_P2_4
                           00014C  1821 	C$glcd.c$193$1$31 ==.
                                   1822 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:193: RST = HI;
      000502 D2 A5            [12] 1823 	setb	_P2_5
                           00014E  1824 	C$glcd.c$194$1$31 ==.
                                   1825 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:194: CS1 = HI;
      000504 D2 A0            [12] 1826 	setb	_P2_0
                           000150  1827 	C$glcd.c$195$1$31 ==.
                                   1828 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:195: CS2 = HI;
      000506 D2 A1            [12] 1829 	setb	_P2_1
                           000152  1830 	C$glcd.c$196$1$31 ==.
                                   1831 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:196: SFRPAGE=CONFIG_PAGE;
      000508 75 84 0F         [24] 1832 	mov	_SFRPAGE,#0x0f
                           000155  1833 	C$glcd.c$197$1$31 ==.
                                   1834 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:197: DB = 0xff;
      00050B 75 C8 FF         [24] 1835 	mov	_P4,#0xff
                           000158  1836 	C$glcd.c$198$1$31 ==.
                                   1837 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:198: SFRPAGE=LEGACY_PAGE;
      00050E 75 84 00         [24] 1838 	mov	_SFRPAGE,#0x00
                           00015B  1839 	C$glcd.c$200$1$31 ==.
                                   1840 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:200: while(cs<2){
      000511 7F 00            [12] 1841 	mov	r7,#0x00
      000513                       1842 00104$:
      000513 BF 02 00         [24] 1843 	cjne	r7,#0x02,00119$
      000516                       1844 00119$:
      000516 50 4E            [24] 1845 	jnc	00107$
                           000162  1846 	C$glcd.c$201$2$32 ==.
                                   1847 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:201: while(le_glcd(CO, cs) & 0x10);
      000518                       1848 00101$:
      000518 EF               [12] 1849 	mov	a,r7
      000519 24 FF            [12] 1850 	add	a,#0xff
      00051B 92 0E            [24] 1851 	mov	_ini_glcd_sloc0_1_0,c
      00051D C2 0A            [12] 1852 	clr	_le_glcd_PARM_1
      00051F A2 0E            [12] 1853 	mov	c,_ini_glcd_sloc0_1_0
      000521 92 0B            [24] 1854 	mov	_le_glcd_PARM_2,c
      000523 C0 07            [24] 1855 	push	ar7
      000525 12 04 72         [24] 1856 	lcall	_le_glcd
      000528 E5 82            [12] 1857 	mov	a,dpl
      00052A D0 07            [24] 1858 	pop	ar7
      00052C 20 E4 E9         [24] 1859 	jb	acc.4,00101$
                           000179  1860 	C$glcd.c$203$2$32 ==.
                                   1861 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:203: esc_glcd(0x3f, CO, cs);
      00052F C2 0C            [12] 1862 	clr	_esc_glcd_PARM_2
      000531 A2 0E            [12] 1863 	mov	c,_ini_glcd_sloc0_1_0
      000533 92 0D            [24] 1864 	mov	_esc_glcd_PARM_3,c
      000535 75 82 3F         [24] 1865 	mov	dpl,#0x3f
      000538 C0 07            [24] 1866 	push	ar7
      00053A 12 04 AB         [24] 1867 	lcall	_esc_glcd
                           000187  1868 	C$glcd.c$205$2$32 ==.
                                   1869 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:205: esc_glcd(0x40, CO, cs);
      00053D C2 0C            [12] 1870 	clr	_esc_glcd_PARM_2
      00053F A2 0E            [12] 1871 	mov	c,_ini_glcd_sloc0_1_0
      000541 92 0D            [24] 1872 	mov	_esc_glcd_PARM_3,c
      000543 75 82 40         [24] 1873 	mov	dpl,#0x40
      000546 12 04 AB         [24] 1874 	lcall	_esc_glcd
                           000193  1875 	C$glcd.c$206$2$32 ==.
                                   1876 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:206: esc_glcd(0xb8, CO, cs);
      000549 C2 0C            [12] 1877 	clr	_esc_glcd_PARM_2
      00054B A2 0E            [12] 1878 	mov	c,_ini_glcd_sloc0_1_0
      00054D 92 0D            [24] 1879 	mov	_esc_glcd_PARM_3,c
      00054F 75 82 B8         [24] 1880 	mov	dpl,#0xb8
      000552 12 04 AB         [24] 1881 	lcall	_esc_glcd
                           00019F  1882 	C$glcd.c$207$2$32 ==.
                                   1883 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:207: esc_glcd(0xc0, CO, cs);
      000555 C2 0C            [12] 1884 	clr	_esc_glcd_PARM_2
      000557 A2 0E            [12] 1885 	mov	c,_ini_glcd_sloc0_1_0
      000559 92 0D            [24] 1886 	mov	_esc_glcd_PARM_3,c
      00055B 75 82 C0         [24] 1887 	mov	dpl,#0xc0
      00055E 12 04 AB         [24] 1888 	lcall	_esc_glcd
      000561 D0 07            [24] 1889 	pop	ar7
                           0001AD  1890 	C$glcd.c$208$2$32 ==.
                                   1891 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:208: cs++;
      000563 0F               [12] 1892 	inc	r7
      000564 80 AD            [24] 1893 	sjmp	00104$
      000566                       1894 00107$:
                           0001B0  1895 	C$glcd.c$210$1$31 ==.
                           0001B0  1896 	XG$ini_glcd$0$0 ==.
      000566 22               [24] 1897 	ret
                                   1898 ;------------------------------------------------------------
                                   1899 ;Allocation info for local variables in function 'conf_Y'
                                   1900 ;------------------------------------------------------------
                                   1901 ;y                         Allocated to registers r7 
                                   1902 ;------------------------------------------------------------
                           0001B1  1903 	G$conf_Y$0$0 ==.
                           0001B1  1904 	C$glcd.c$212$1$31 ==.
                                   1905 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:212: void conf_Y(unsigned char y, __bit cs){
                                   1906 ;	-----------------------------------------
                                   1907 ;	 function conf_Y
                                   1908 ;	-----------------------------------------
      000567                       1909 _conf_Y:
      000567 AF 82            [24] 1910 	mov	r7,dpl
                           0001B3  1911 	C$glcd.c$213$1$34 ==.
                                   1912 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:213: y &= 0x3f;
      000569 53 07 3F         [24] 1913 	anl	ar7,#0x3f
                           0001B6  1914 	C$glcd.c$214$1$34 ==.
                                   1915 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:214: esc_glcd(0x40 | y, CO, cs);
      00056C 74 40            [12] 1916 	mov	a,#0x40
      00056E 4F               [12] 1917 	orl	a,r7
      00056F F5 82            [12] 1918 	mov	dpl,a
      000571 C2 0C            [12] 1919 	clr	_esc_glcd_PARM_2
      000573 A2 0F            [12] 1920 	mov	c,_conf_Y_PARM_2
      000575 92 0D            [24] 1921 	mov	_esc_glcd_PARM_3,c
      000577 12 04 AB         [24] 1922 	lcall	_esc_glcd
                           0001C4  1923 	C$glcd.c$215$1$34 ==.
                           0001C4  1924 	XG$conf_Y$0$0 ==.
      00057A 22               [24] 1925 	ret
                                   1926 ;------------------------------------------------------------
                                   1927 ;Allocation info for local variables in function 'conf_pag'
                                   1928 ;------------------------------------------------------------
                                   1929 ;pag                       Allocated to registers r7 
                                   1930 ;------------------------------------------------------------
                           0001C5  1931 	G$conf_pag$0$0 ==.
                           0001C5  1932 	C$glcd.c$218$1$34 ==.
                                   1933 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:218: void conf_pag(unsigned char pag, __bit cs){
                                   1934 ;	-----------------------------------------
                                   1935 ;	 function conf_pag
                                   1936 ;	-----------------------------------------
      00057B                       1937 _conf_pag:
      00057B AF 82            [24] 1938 	mov	r7,dpl
                           0001C7  1939 	C$glcd.c$219$1$36 ==.
                                   1940 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:219: pag &= 0x07;
      00057D 53 07 07         [24] 1941 	anl	ar7,#0x07
                           0001CA  1942 	C$glcd.c$220$1$36 ==.
                                   1943 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:220: esc_glcd(0xb8 | pag, CO, cs);
      000580 74 B8            [12] 1944 	mov	a,#0xb8
      000582 4F               [12] 1945 	orl	a,r7
      000583 F5 82            [12] 1946 	mov	dpl,a
      000585 C2 0C            [12] 1947 	clr	_esc_glcd_PARM_2
      000587 A2 10            [12] 1948 	mov	c,_conf_pag_PARM_2
      000589 92 0D            [24] 1949 	mov	_esc_glcd_PARM_3,c
      00058B 12 04 AB         [24] 1950 	lcall	_esc_glcd
                           0001D8  1951 	C$glcd.c$221$1$36 ==.
                           0001D8  1952 	XG$conf_pag$0$0 ==.
      00058E 22               [24] 1953 	ret
                                   1954 ;------------------------------------------------------------
                                   1955 ;Allocation info for local variables in function 'limpa_glcd'
                                   1956 ;------------------------------------------------------------
                                   1957 ;pag                       Allocated to registers r7 
                                   1958 ;y                         Allocated to registers r6 
                                   1959 ;------------------------------------------------------------
                           0001D9  1960 	G$limpa_glcd$0$0 ==.
                           0001D9  1961 	C$glcd.c$223$1$36 ==.
                                   1962 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:223: void limpa_glcd(__bit cs){
                                   1963 ;	-----------------------------------------
                                   1964 ;	 function limpa_glcd
                                   1965 ;	-----------------------------------------
      00058F                       1966 _limpa_glcd:
                           0001D9  1967 	C$glcd.c$226$1$38 ==.
                                   1968 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:226: for(pag=0; pag<8; pag++){
      00058F 7F 00            [12] 1969 	mov	r7,#0x00
      000591                       1970 00105$:
                           0001DB  1971 	C$glcd.c$227$2$39 ==.
                                   1972 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:227: conf_pag(pag, cs);
      000591 A2 11            [12] 1973 	mov	c,_limpa_glcd_PARM_1
      000593 92 10            [24] 1974 	mov	_conf_pag_PARM_2,c
      000595 8F 82            [24] 1975 	mov	dpl,r7
      000597 C0 07            [24] 1976 	push	ar7
      000599 12 05 7B         [24] 1977 	lcall	_conf_pag
                           0001E6  1978 	C$glcd.c$228$2$39 ==.
                                   1979 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:228: conf_Y(0, cs);
      00059C A2 11            [12] 1980 	mov	c,_limpa_glcd_PARM_1
      00059E 92 0F            [24] 1981 	mov	_conf_Y_PARM_2,c
      0005A0 75 82 00         [24] 1982 	mov	dpl,#0x00
      0005A3 12 05 67         [24] 1983 	lcall	_conf_Y
      0005A6 D0 07            [24] 1984 	pop	ar7
                           0001F2  1985 	C$glcd.c$229$1$38 ==.
                                   1986 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:229: for(y=0; y<64; y++){
      0005A8 7E 00            [12] 1987 	mov	r6,#0x00
      0005AA                       1988 00103$:
                           0001F4  1989 	C$glcd.c$230$3$40 ==.
                                   1990 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:230: esc_glcd(0x00, DA, cs);
      0005AA D2 0C            [12] 1991 	setb	_esc_glcd_PARM_2
      0005AC A2 11            [12] 1992 	mov	c,_limpa_glcd_PARM_1
      0005AE 92 0D            [24] 1993 	mov	_esc_glcd_PARM_3,c
      0005B0 75 82 00         [24] 1994 	mov	dpl,#0x00
      0005B3 C0 07            [24] 1995 	push	ar7
      0005B5 C0 06            [24] 1996 	push	ar6
      0005B7 12 04 AB         [24] 1997 	lcall	_esc_glcd
      0005BA D0 06            [24] 1998 	pop	ar6
      0005BC D0 07            [24] 1999 	pop	ar7
                           000208  2000 	C$glcd.c$229$2$39 ==.
                                   2001 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:229: for(y=0; y<64; y++){
      0005BE 0E               [12] 2002 	inc	r6
      0005BF BE 40 00         [24] 2003 	cjne	r6,#0x40,00120$
      0005C2                       2004 00120$:
      0005C2 40 E6            [24] 2005 	jc	00103$
                           00020E  2006 	C$glcd.c$226$1$38 ==.
                                   2007 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:226: for(pag=0; pag<8; pag++){
      0005C4 0F               [12] 2008 	inc	r7
      0005C5 BF 08 00         [24] 2009 	cjne	r7,#0x08,00122$
      0005C8                       2010 00122$:
      0005C8 40 C7            [24] 2011 	jc	00105$
                           000214  2012 	C$glcd.c$233$1$38 ==.
                           000214  2013 	XG$limpa_glcd$0$0 ==.
      0005CA 22               [24] 2014 	ret
                                   2015 ;------------------------------------------------------------
                                   2016 ;Allocation info for local variables in function 'caractere_para_ascii'
                                   2017 ;------------------------------------------------------------
                                   2018 ;cod_ascii                 Allocated to registers r7 
                                   2019 ;------------------------------------------------------------
                           000215  2020 	G$caractere_para_ascii$0$0 ==.
                           000215  2021 	C$glcd.c$235$1$38 ==.
                                   2022 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:235: unsigned char caractere_para_ascii(unsigned char cod_ascii){
                                   2023 ;	-----------------------------------------
                                   2024 ;	 function caractere_para_ascii
                                   2025 ;	-----------------------------------------
      0005CB                       2026 _caractere_para_ascii:
      0005CB AF 82            [24] 2027 	mov	r7,dpl
                           000217  2028 	C$glcd.c$236$1$42 ==.
                                   2029 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:236: if(cod_ascii >= 32 && cod_ascii <= 127){
      0005CD BF 20 00         [24] 2030 	cjne	r7,#0x20,00112$
      0005D0                       2031 00112$:
      0005D0 40 0C            [24] 2032 	jc	00102$
      0005D2 EF               [12] 2033 	mov	a,r7
      0005D3 24 80            [12] 2034 	add	a,#0xff - 0x7f
      0005D5 40 07            [24] 2035 	jc	00102$
                           000221  2036 	C$glcd.c$237$2$43 ==.
                                   2037 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:237: return cod_ascii - 32;
      0005D7 EF               [12] 2038 	mov	a,r7
      0005D8 24 E0            [12] 2039 	add	a,#0xe0
      0005DA F5 82            [12] 2040 	mov	dpl,a
      0005DC 80 03            [24] 2041 	sjmp	00104$
      0005DE                       2042 00102$:
                           000228  2043 	C$glcd.c$240$1$42 ==.
                                   2044 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:240: return 0;
      0005DE 75 82 00         [24] 2045 	mov	dpl,#0x00
      0005E1                       2046 00104$:
                           00022B  2047 	C$glcd.c$241$1$42 ==.
                           00022B  2048 	XG$caractere_para_ascii$0$0 ==.
      0005E1 22               [24] 2049 	ret
                                   2050 ;------------------------------------------------------------
                                   2051 ;Allocation info for local variables in function 'escreve_caractere'
                                   2052 ;------------------------------------------------------------
                                   2053 ;c                         Allocated to registers r7 
                                   2054 ;linha                     Allocated to registers r7 
                                   2055 ;------------------------------------------------------------
                           00022C  2056 	G$escreve_caractere$0$0 ==.
                           00022C  2057 	C$glcd.c$243$1$42 ==.
                                   2058 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:243: void escreve_caractere(char c, __bit cs){
                                   2059 ;	-----------------------------------------
                                   2060 ;	 function escreve_caractere
                                   2061 ;	-----------------------------------------
      0005E2                       2062 _escreve_caractere:
                           00022C  2063 	C$glcd.c$244$1$45 ==.
                                   2064 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:244: unsigned char linha = caractere_para_ascii(c);
      0005E2 12 05 CB         [24] 2065 	lcall	_caractere_para_ascii
                           00022F  2066 	C$glcd.c$246$1$45 ==.
                                   2067 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:246: esc_glcd(fonte[linha][0], DA, cs);
      0005E5 E5 82            [12] 2068 	mov	a,dpl
      0005E7 75 F0 05         [24] 2069 	mov	b,#0x05
      0005EA A4               [48] 2070 	mul	ab
      0005EB 24 AB            [12] 2071 	add	a,#_fonte
      0005ED FE               [12] 2072 	mov	r6,a
      0005EE 74 0D            [12] 2073 	mov	a,#(_fonte >> 8)
      0005F0 35 F0            [12] 2074 	addc	a,b
      0005F2 FF               [12] 2075 	mov	r7,a
      0005F3 8E 82            [24] 2076 	mov	dpl,r6
      0005F5 8F 83            [24] 2077 	mov	dph,r7
      0005F7 E4               [12] 2078 	clr	a
      0005F8 93               [24] 2079 	movc	a,@a+dptr
      0005F9 FD               [12] 2080 	mov	r5,a
      0005FA D2 0C            [12] 2081 	setb	_esc_glcd_PARM_2
      0005FC A2 12            [12] 2082 	mov	c,_escreve_caractere_PARM_2
      0005FE 92 0D            [24] 2083 	mov	_esc_glcd_PARM_3,c
      000600 8D 82            [24] 2084 	mov	dpl,r5
      000602 C0 07            [24] 2085 	push	ar7
      000604 C0 06            [24] 2086 	push	ar6
      000606 12 04 AB         [24] 2087 	lcall	_esc_glcd
      000609 D0 06            [24] 2088 	pop	ar6
      00060B D0 07            [24] 2089 	pop	ar7
                           000257  2090 	C$glcd.c$247$1$45 ==.
                                   2091 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:247: esc_glcd(fonte[linha][1], DA, cs);
      00060D 8E 82            [24] 2092 	mov	dpl,r6
      00060F 8F 83            [24] 2093 	mov	dph,r7
      000611 A3               [24] 2094 	inc	dptr
      000612 E4               [12] 2095 	clr	a
      000613 93               [24] 2096 	movc	a,@a+dptr
      000614 FD               [12] 2097 	mov	r5,a
      000615 D2 0C            [12] 2098 	setb	_esc_glcd_PARM_2
      000617 A2 12            [12] 2099 	mov	c,_escreve_caractere_PARM_2
      000619 92 0D            [24] 2100 	mov	_esc_glcd_PARM_3,c
      00061B 8D 82            [24] 2101 	mov	dpl,r5
      00061D C0 07            [24] 2102 	push	ar7
      00061F C0 06            [24] 2103 	push	ar6
      000621 12 04 AB         [24] 2104 	lcall	_esc_glcd
      000624 D0 06            [24] 2105 	pop	ar6
      000626 D0 07            [24] 2106 	pop	ar7
                           000272  2107 	C$glcd.c$248$1$45 ==.
                                   2108 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:248: esc_glcd(fonte[linha][2], DA, cs);
      000628 8E 82            [24] 2109 	mov	dpl,r6
      00062A 8F 83            [24] 2110 	mov	dph,r7
      00062C A3               [24] 2111 	inc	dptr
      00062D A3               [24] 2112 	inc	dptr
      00062E E4               [12] 2113 	clr	a
      00062F 93               [24] 2114 	movc	a,@a+dptr
      000630 FD               [12] 2115 	mov	r5,a
      000631 D2 0C            [12] 2116 	setb	_esc_glcd_PARM_2
      000633 A2 12            [12] 2117 	mov	c,_escreve_caractere_PARM_2
      000635 92 0D            [24] 2118 	mov	_esc_glcd_PARM_3,c
      000637 8D 82            [24] 2119 	mov	dpl,r5
      000639 C0 07            [24] 2120 	push	ar7
      00063B C0 06            [24] 2121 	push	ar6
      00063D 12 04 AB         [24] 2122 	lcall	_esc_glcd
      000640 D0 06            [24] 2123 	pop	ar6
      000642 D0 07            [24] 2124 	pop	ar7
                           00028E  2125 	C$glcd.c$249$1$45 ==.
                                   2126 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:249: esc_glcd(fonte[linha][3], DA, cs);
      000644 8E 82            [24] 2127 	mov	dpl,r6
      000646 8F 83            [24] 2128 	mov	dph,r7
      000648 A3               [24] 2129 	inc	dptr
      000649 A3               [24] 2130 	inc	dptr
      00064A A3               [24] 2131 	inc	dptr
      00064B E4               [12] 2132 	clr	a
      00064C 93               [24] 2133 	movc	a,@a+dptr
      00064D FD               [12] 2134 	mov	r5,a
      00064E D2 0C            [12] 2135 	setb	_esc_glcd_PARM_2
      000650 A2 12            [12] 2136 	mov	c,_escreve_caractere_PARM_2
      000652 92 0D            [24] 2137 	mov	_esc_glcd_PARM_3,c
      000654 8D 82            [24] 2138 	mov	dpl,r5
      000656 C0 07            [24] 2139 	push	ar7
      000658 C0 06            [24] 2140 	push	ar6
      00065A 12 04 AB         [24] 2141 	lcall	_esc_glcd
      00065D D0 06            [24] 2142 	pop	ar6
      00065F D0 07            [24] 2143 	pop	ar7
                           0002AB  2144 	C$glcd.c$250$1$45 ==.
                                   2145 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:250: esc_glcd(fonte[linha][4], DA, cs);
      000661 8E 82            [24] 2146 	mov	dpl,r6
      000663 8F 83            [24] 2147 	mov	dph,r7
      000665 A3               [24] 2148 	inc	dptr
      000666 A3               [24] 2149 	inc	dptr
      000667 A3               [24] 2150 	inc	dptr
      000668 A3               [24] 2151 	inc	dptr
      000669 E4               [12] 2152 	clr	a
      00066A 93               [24] 2153 	movc	a,@a+dptr
      00066B FF               [12] 2154 	mov	r7,a
      00066C D2 0C            [12] 2155 	setb	_esc_glcd_PARM_2
      00066E A2 12            [12] 2156 	mov	c,_escreve_caractere_PARM_2
      000670 92 0D            [24] 2157 	mov	_esc_glcd_PARM_3,c
      000672 8F 82            [24] 2158 	mov	dpl,r7
      000674 12 04 AB         [24] 2159 	lcall	_esc_glcd
                           0002C1  2160 	C$glcd.c$251$1$45 ==.
                                   2161 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:251: esc_glcd(0x00, DA, cs);
      000677 D2 0C            [12] 2162 	setb	_esc_glcd_PARM_2
      000679 A2 12            [12] 2163 	mov	c,_escreve_caractere_PARM_2
      00067B 92 0D            [24] 2164 	mov	_esc_glcd_PARM_3,c
      00067D 75 82 00         [24] 2165 	mov	dpl,#0x00
      000680 12 04 AB         [24] 2166 	lcall	_esc_glcd
                           0002CD  2167 	C$glcd.c$252$1$45 ==.
                                   2168 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:252: esc_glcd(0x00, DA, cs);
      000683 D2 0C            [12] 2169 	setb	_esc_glcd_PARM_2
      000685 A2 12            [12] 2170 	mov	c,_escreve_caractere_PARM_2
      000687 92 0D            [24] 2171 	mov	_esc_glcd_PARM_3,c
      000689 75 82 00         [24] 2172 	mov	dpl,#0x00
      00068C 12 04 AB         [24] 2173 	lcall	_esc_glcd
                           0002D9  2174 	C$glcd.c$253$1$45 ==.
                                   2175 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:253: esc_glcd(0x00, DA, cs);
      00068F D2 0C            [12] 2176 	setb	_esc_glcd_PARM_2
      000691 A2 12            [12] 2177 	mov	c,_escreve_caractere_PARM_2
      000693 92 0D            [24] 2178 	mov	_esc_glcd_PARM_3,c
      000695 75 82 00         [24] 2179 	mov	dpl,#0x00
      000698 12 04 AB         [24] 2180 	lcall	_esc_glcd
                           0002E5  2181 	C$glcd.c$254$1$45 ==.
                           0002E5  2182 	XG$escreve_caractere$0$0 ==.
      00069B 22               [24] 2183 	ret
                                   2184 ;------------------------------------------------------------
                                   2185 ;Allocation info for local variables in function 'putchar'
                                   2186 ;------------------------------------------------------------
                                   2187 ;c                         Allocated to registers r7 
                                   2188 ;------------------------------------------------------------
                           0002E6  2189 	G$putchar$0$0 ==.
                           0002E6  2190 	C$glcd.c$256$1$45 ==.
                                   2191 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:256: void putchar(char c){
                                   2192 ;	-----------------------------------------
                                   2193 ;	 function putchar
                                   2194 ;	-----------------------------------------
      00069C                       2195 _putchar:
                           0002E6  2196 	C$glcd.c$259$1$47 ==.
                                   2197 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:259: if(c<=8){
      00069C E5 82            [12] 2198 	mov	a,dpl
      00069E FF               [12] 2199 	mov	r7,a
      00069F 24 F7            [12] 2200 	add	a,#0xff - 0x08
      0006A1 40 2A            [24] 2201 	jc	00105$
                           0002ED  2202 	C$glcd.c$260$2$48 ==.
                                   2203 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:260: conf_pag(c-1, ESQ);
      0006A3 EF               [12] 2204 	mov	a,r7
      0006A4 14               [12] 2205 	dec	a
      0006A5 FE               [12] 2206 	mov	r6,a
      0006A6 C2 10            [12] 2207 	clr	_conf_pag_PARM_2
      0006A8 8E 82            [24] 2208 	mov	dpl,r6
      0006AA C0 06            [24] 2209 	push	ar6
      0006AC 12 05 7B         [24] 2210 	lcall	_conf_pag
                           0002F9  2211 	C$glcd.c$261$2$48 ==.
                                   2212 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:261: conf_Y(0, ESQ);
      0006AF C2 0F            [12] 2213 	clr	_conf_Y_PARM_2
      0006B1 75 82 00         [24] 2214 	mov	dpl,#0x00
      0006B4 12 05 67         [24] 2215 	lcall	_conf_Y
      0006B7 D0 06            [24] 2216 	pop	ar6
                           000303  2217 	C$glcd.c$262$2$48 ==.
                                   2218 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:262: conf_pag(c-1, DIR);
      0006B9 D2 10            [12] 2219 	setb	_conf_pag_PARM_2
      0006BB 8E 82            [24] 2220 	mov	dpl,r6
      0006BD 12 05 7B         [24] 2221 	lcall	_conf_pag
                           00030A  2222 	C$glcd.c$263$2$48 ==.
                                   2223 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:263: conf_Y(0, DIR);
      0006C0 D2 0F            [12] 2224 	setb	_conf_Y_PARM_2
      0006C2 75 82 00         [24] 2225 	mov	dpl,#0x00
      0006C5 12 05 67         [24] 2226 	lcall	_conf_Y
                           000312  2227 	C$glcd.c$264$2$48 ==.
                                   2228 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:264: conta_caractere = 0;
      0006C8 75 09 00         [24] 2229 	mov	_conta_caractere,#0x00
      0006CB 80 11            [24] 2230 	sjmp	00107$
      0006CD                       2231 00105$:
                           000317  2232 	C$glcd.c$267$2$49 ==.
                                   2233 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:267: if(conta_caractere<8){
      0006CD 74 F8            [12] 2234 	mov	a,#0x100 - 0x08
      0006CF 25 09            [12] 2235 	add	a,_conta_caractere
                           00031B  2236 	C$glcd.c$268$3$50 ==.
                                   2237 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:268: lado = ESQ;
                           00031B  2238 	C$glcd.c$270$3$51 ==.
                                   2239 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:270: lado = DIR;
      0006D1 92 13            [24] 2240 	mov	_putchar_lado_1_47,c
                           00031D  2241 	C$glcd.c$273$2$49 ==.
                                   2242 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:273: escreve_caractere(c, lado);
      0006D3 A2 13            [12] 2243 	mov	c,_putchar_lado_1_47
      0006D5 92 12            [24] 2244 	mov	_escreve_caractere_PARM_2,c
      0006D7 8F 82            [24] 2245 	mov	dpl,r7
      0006D9 12 05 E2         [24] 2246 	lcall	_escreve_caractere
                           000326  2247 	C$glcd.c$274$2$49 ==.
                                   2248 ;	C:\Users\202019050142\Documents\micap\Trabalho\glcd.c:274: conta_caractere++;
      0006DC 05 09            [12] 2249 	inc	_conta_caractere
      0006DE                       2250 00107$:
                           000328  2251 	C$glcd.c$276$1$47 ==.
                           000328  2252 	XG$putchar$0$0 ==.
      0006DE 22               [24] 2253 	ret
                                   2254 	.area CSEG    (CODE)
                                   2255 	.area CONST   (CODE)
                           000000  2256 G$fonte$0$0 == .
      000DAB                       2257 _fonte:
      000DAB 00                    2258 	.db #0x00	; 0
      000DAC 00                    2259 	.db #0x00	; 0
      000DAD 00                    2260 	.db #0x00	; 0
      000DAE 00                    2261 	.db #0x00	; 0
      000DAF 00                    2262 	.db #0x00	; 0
      000DB0 00                    2263 	.db #0x00	; 0
      000DB1 00                    2264 	.db #0x00	; 0
      000DB2 5F                    2265 	.db #0x5f	; 95
      000DB3 00                    2266 	.db #0x00	; 0
      000DB4 00                    2267 	.db #0x00	; 0
      000DB5 00                    2268 	.db #0x00	; 0
      000DB6 07                    2269 	.db #0x07	; 7
      000DB7 00                    2270 	.db #0x00	; 0
      000DB8 07                    2271 	.db #0x07	; 7
      000DB9 00                    2272 	.db #0x00	; 0
      000DBA 14                    2273 	.db #0x14	; 20
      000DBB 7F                    2274 	.db #0x7f	; 127
      000DBC 14                    2275 	.db #0x14	; 20
      000DBD 7F                    2276 	.db #0x7f	; 127
      000DBE 14                    2277 	.db #0x14	; 20
      000DBF 24                    2278 	.db #0x24	; 36
      000DC0 2A                    2279 	.db #0x2a	; 42
      000DC1 7F                    2280 	.db #0x7f	; 127
      000DC2 2A                    2281 	.db #0x2a	; 42
      000DC3 12                    2282 	.db #0x12	; 18
      000DC4 23                    2283 	.db #0x23	; 35
      000DC5 13                    2284 	.db #0x13	; 19
      000DC6 08                    2285 	.db #0x08	; 8
      000DC7 64                    2286 	.db #0x64	; 100	'd'
      000DC8 62                    2287 	.db #0x62	; 98	'b'
      000DC9 36                    2288 	.db #0x36	; 54	'6'
      000DCA 49                    2289 	.db #0x49	; 73	'I'
      000DCB 55                    2290 	.db #0x55	; 85	'U'
      000DCC 22                    2291 	.db #0x22	; 34
      000DCD 50                    2292 	.db #0x50	; 80	'P'
      000DCE 00                    2293 	.db #0x00	; 0
      000DCF 05                    2294 	.db #0x05	; 5
      000DD0 03                    2295 	.db #0x03	; 3
      000DD1 00                    2296 	.db #0x00	; 0
      000DD2 00                    2297 	.db #0x00	; 0
      000DD3 00                    2298 	.db #0x00	; 0
      000DD4 1C                    2299 	.db #0x1c	; 28
      000DD5 22                    2300 	.db #0x22	; 34
      000DD6 41                    2301 	.db #0x41	; 65	'A'
      000DD7 00                    2302 	.db #0x00	; 0
      000DD8 00                    2303 	.db #0x00	; 0
      000DD9 41                    2304 	.db #0x41	; 65	'A'
      000DDA 22                    2305 	.db #0x22	; 34
      000DDB 1C                    2306 	.db #0x1c	; 28
      000DDC 00                    2307 	.db #0x00	; 0
      000DDD 08                    2308 	.db #0x08	; 8
      000DDE 2A                    2309 	.db #0x2a	; 42
      000DDF 1C                    2310 	.db #0x1c	; 28
      000DE0 2A                    2311 	.db #0x2a	; 42
      000DE1 08                    2312 	.db #0x08	; 8
      000DE2 08                    2313 	.db #0x08	; 8
      000DE3 08                    2314 	.db #0x08	; 8
      000DE4 3E                    2315 	.db #0x3e	; 62
      000DE5 08                    2316 	.db #0x08	; 8
      000DE6 08                    2317 	.db #0x08	; 8
      000DE7 00                    2318 	.db #0x00	; 0
      000DE8 50                    2319 	.db #0x50	; 80	'P'
      000DE9 30                    2320 	.db #0x30	; 48	'0'
      000DEA 00                    2321 	.db #0x00	; 0
      000DEB 00                    2322 	.db #0x00	; 0
      000DEC 08                    2323 	.db #0x08	; 8
      000DED 08                    2324 	.db #0x08	; 8
      000DEE 08                    2325 	.db #0x08	; 8
      000DEF 08                    2326 	.db #0x08	; 8
      000DF0 08                    2327 	.db #0x08	; 8
      000DF1 00                    2328 	.db #0x00	; 0
      000DF2 30                    2329 	.db #0x30	; 48	'0'
      000DF3 30                    2330 	.db #0x30	; 48	'0'
      000DF4 00                    2331 	.db #0x00	; 0
      000DF5 00                    2332 	.db #0x00	; 0
      000DF6 20                    2333 	.db #0x20	; 32
      000DF7 10                    2334 	.db #0x10	; 16
      000DF8 08                    2335 	.db #0x08	; 8
      000DF9 04                    2336 	.db #0x04	; 4
      000DFA 02                    2337 	.db #0x02	; 2
      000DFB 3E                    2338 	.db #0x3e	; 62
      000DFC 51                    2339 	.db #0x51	; 81	'Q'
      000DFD 49                    2340 	.db #0x49	; 73	'I'
      000DFE 45                    2341 	.db #0x45	; 69	'E'
      000DFF 3E                    2342 	.db #0x3e	; 62
      000E00 00                    2343 	.db #0x00	; 0
      000E01 42                    2344 	.db #0x42	; 66	'B'
      000E02 7F                    2345 	.db #0x7f	; 127
      000E03 40                    2346 	.db #0x40	; 64
      000E04 00                    2347 	.db #0x00	; 0
      000E05 42                    2348 	.db #0x42	; 66	'B'
      000E06 61                    2349 	.db #0x61	; 97	'a'
      000E07 51                    2350 	.db #0x51	; 81	'Q'
      000E08 49                    2351 	.db #0x49	; 73	'I'
      000E09 46                    2352 	.db #0x46	; 70	'F'
      000E0A 21                    2353 	.db #0x21	; 33
      000E0B 41                    2354 	.db #0x41	; 65	'A'
      000E0C 45                    2355 	.db #0x45	; 69	'E'
      000E0D 4B                    2356 	.db #0x4b	; 75	'K'
      000E0E 31                    2357 	.db #0x31	; 49	'1'
      000E0F 18                    2358 	.db #0x18	; 24
      000E10 14                    2359 	.db #0x14	; 20
      000E11 12                    2360 	.db #0x12	; 18
      000E12 7F                    2361 	.db #0x7f	; 127
      000E13 10                    2362 	.db #0x10	; 16
      000E14 27                    2363 	.db #0x27	; 39
      000E15 45                    2364 	.db #0x45	; 69	'E'
      000E16 45                    2365 	.db #0x45	; 69	'E'
      000E17 45                    2366 	.db #0x45	; 69	'E'
      000E18 39                    2367 	.db #0x39	; 57	'9'
      000E19 3C                    2368 	.db #0x3c	; 60
      000E1A 4A                    2369 	.db #0x4a	; 74	'J'
      000E1B 49                    2370 	.db #0x49	; 73	'I'
      000E1C 49                    2371 	.db #0x49	; 73	'I'
      000E1D 30                    2372 	.db #0x30	; 48	'0'
      000E1E 01                    2373 	.db #0x01	; 1
      000E1F 71                    2374 	.db #0x71	; 113	'q'
      000E20 09                    2375 	.db #0x09	; 9
      000E21 05                    2376 	.db #0x05	; 5
      000E22 03                    2377 	.db #0x03	; 3
      000E23 36                    2378 	.db #0x36	; 54	'6'
      000E24 49                    2379 	.db #0x49	; 73	'I'
      000E25 49                    2380 	.db #0x49	; 73	'I'
      000E26 49                    2381 	.db #0x49	; 73	'I'
      000E27 36                    2382 	.db #0x36	; 54	'6'
      000E28 06                    2383 	.db #0x06	; 6
      000E29 49                    2384 	.db #0x49	; 73	'I'
      000E2A 49                    2385 	.db #0x49	; 73	'I'
      000E2B 29                    2386 	.db #0x29	; 41
      000E2C 1E                    2387 	.db #0x1e	; 30
      000E2D 00                    2388 	.db #0x00	; 0
      000E2E 36                    2389 	.db #0x36	; 54	'6'
      000E2F 36                    2390 	.db #0x36	; 54	'6'
      000E30 00                    2391 	.db #0x00	; 0
      000E31 00                    2392 	.db #0x00	; 0
      000E32 00                    2393 	.db #0x00	; 0
      000E33 56                    2394 	.db #0x56	; 86	'V'
      000E34 36                    2395 	.db #0x36	; 54	'6'
      000E35 00                    2396 	.db #0x00	; 0
      000E36 00                    2397 	.db #0x00	; 0
      000E37 00                    2398 	.db #0x00	; 0
      000E38 08                    2399 	.db #0x08	; 8
      000E39 14                    2400 	.db #0x14	; 20
      000E3A 22                    2401 	.db #0x22	; 34
      000E3B 41                    2402 	.db #0x41	; 65	'A'
      000E3C 14                    2403 	.db #0x14	; 20
      000E3D 14                    2404 	.db #0x14	; 20
      000E3E 14                    2405 	.db #0x14	; 20
      000E3F 14                    2406 	.db #0x14	; 20
      000E40 14                    2407 	.db #0x14	; 20
      000E41 41                    2408 	.db #0x41	; 65	'A'
      000E42 22                    2409 	.db #0x22	; 34
      000E43 14                    2410 	.db #0x14	; 20
      000E44 08                    2411 	.db #0x08	; 8
      000E45 00                    2412 	.db #0x00	; 0
      000E46 02                    2413 	.db #0x02	; 2
      000E47 01                    2414 	.db #0x01	; 1
      000E48 51                    2415 	.db #0x51	; 81	'Q'
      000E49 09                    2416 	.db #0x09	; 9
      000E4A 06                    2417 	.db #0x06	; 6
      000E4B 32                    2418 	.db #0x32	; 50	'2'
      000E4C 49                    2419 	.db #0x49	; 73	'I'
      000E4D 79                    2420 	.db #0x79	; 121	'y'
      000E4E 41                    2421 	.db #0x41	; 65	'A'
      000E4F 3E                    2422 	.db #0x3e	; 62
      000E50 7E                    2423 	.db #0x7e	; 126
      000E51 11                    2424 	.db #0x11	; 17
      000E52 11                    2425 	.db #0x11	; 17
      000E53 11                    2426 	.db #0x11	; 17
      000E54 7E                    2427 	.db #0x7e	; 126
      000E55 7F                    2428 	.db #0x7f	; 127
      000E56 49                    2429 	.db #0x49	; 73	'I'
      000E57 49                    2430 	.db #0x49	; 73	'I'
      000E58 49                    2431 	.db #0x49	; 73	'I'
      000E59 36                    2432 	.db #0x36	; 54	'6'
      000E5A 3E                    2433 	.db #0x3e	; 62
      000E5B 41                    2434 	.db #0x41	; 65	'A'
      000E5C 41                    2435 	.db #0x41	; 65	'A'
      000E5D 41                    2436 	.db #0x41	; 65	'A'
      000E5E 22                    2437 	.db #0x22	; 34
      000E5F 7F                    2438 	.db #0x7f	; 127
      000E60 41                    2439 	.db #0x41	; 65	'A'
      000E61 41                    2440 	.db #0x41	; 65	'A'
      000E62 22                    2441 	.db #0x22	; 34
      000E63 1C                    2442 	.db #0x1c	; 28
      000E64 7F                    2443 	.db #0x7f	; 127
      000E65 49                    2444 	.db #0x49	; 73	'I'
      000E66 49                    2445 	.db #0x49	; 73	'I'
      000E67 49                    2446 	.db #0x49	; 73	'I'
      000E68 41                    2447 	.db #0x41	; 65	'A'
      000E69 7F                    2448 	.db #0x7f	; 127
      000E6A 09                    2449 	.db #0x09	; 9
      000E6B 09                    2450 	.db #0x09	; 9
      000E6C 01                    2451 	.db #0x01	; 1
      000E6D 01                    2452 	.db #0x01	; 1
      000E6E 3E                    2453 	.db #0x3e	; 62
      000E6F 41                    2454 	.db #0x41	; 65	'A'
      000E70 41                    2455 	.db #0x41	; 65	'A'
      000E71 51                    2456 	.db #0x51	; 81	'Q'
      000E72 32                    2457 	.db #0x32	; 50	'2'
      000E73 7F                    2458 	.db #0x7f	; 127
      000E74 08                    2459 	.db #0x08	; 8
      000E75 08                    2460 	.db #0x08	; 8
      000E76 08                    2461 	.db #0x08	; 8
      000E77 7F                    2462 	.db #0x7f	; 127
      000E78 00                    2463 	.db #0x00	; 0
      000E79 41                    2464 	.db #0x41	; 65	'A'
      000E7A 7F                    2465 	.db #0x7f	; 127
      000E7B 41                    2466 	.db #0x41	; 65	'A'
      000E7C 00                    2467 	.db #0x00	; 0
      000E7D 20                    2468 	.db #0x20	; 32
      000E7E 40                    2469 	.db #0x40	; 64
      000E7F 41                    2470 	.db #0x41	; 65	'A'
      000E80 3F                    2471 	.db #0x3f	; 63
      000E81 01                    2472 	.db #0x01	; 1
      000E82 7F                    2473 	.db #0x7f	; 127
      000E83 08                    2474 	.db #0x08	; 8
      000E84 14                    2475 	.db #0x14	; 20
      000E85 22                    2476 	.db #0x22	; 34
      000E86 41                    2477 	.db #0x41	; 65	'A'
      000E87 7F                    2478 	.db #0x7f	; 127
      000E88 40                    2479 	.db #0x40	; 64
      000E89 40                    2480 	.db #0x40	; 64
      000E8A 40                    2481 	.db #0x40	; 64
      000E8B 40                    2482 	.db #0x40	; 64
      000E8C 7F                    2483 	.db #0x7f	; 127
      000E8D 02                    2484 	.db #0x02	; 2
      000E8E 04                    2485 	.db #0x04	; 4
      000E8F 02                    2486 	.db #0x02	; 2
      000E90 7F                    2487 	.db #0x7f	; 127
      000E91 7F                    2488 	.db #0x7f	; 127
      000E92 04                    2489 	.db #0x04	; 4
      000E93 08                    2490 	.db #0x08	; 8
      000E94 10                    2491 	.db #0x10	; 16
      000E95 7F                    2492 	.db #0x7f	; 127
      000E96 3E                    2493 	.db #0x3e	; 62
      000E97 41                    2494 	.db #0x41	; 65	'A'
      000E98 41                    2495 	.db #0x41	; 65	'A'
      000E99 41                    2496 	.db #0x41	; 65	'A'
      000E9A 3E                    2497 	.db #0x3e	; 62
      000E9B 7F                    2498 	.db #0x7f	; 127
      000E9C 09                    2499 	.db #0x09	; 9
      000E9D 09                    2500 	.db #0x09	; 9
      000E9E 09                    2501 	.db #0x09	; 9
      000E9F 06                    2502 	.db #0x06	; 6
      000EA0 3E                    2503 	.db #0x3e	; 62
      000EA1 41                    2504 	.db #0x41	; 65	'A'
      000EA2 51                    2505 	.db #0x51	; 81	'Q'
      000EA3 21                    2506 	.db #0x21	; 33
      000EA4 5E                    2507 	.db #0x5e	; 94
      000EA5 7F                    2508 	.db #0x7f	; 127
      000EA6 09                    2509 	.db #0x09	; 9
      000EA7 19                    2510 	.db #0x19	; 25
      000EA8 29                    2511 	.db #0x29	; 41
      000EA9 46                    2512 	.db #0x46	; 70	'F'
      000EAA 46                    2513 	.db #0x46	; 70	'F'
      000EAB 49                    2514 	.db #0x49	; 73	'I'
      000EAC 49                    2515 	.db #0x49	; 73	'I'
      000EAD 49                    2516 	.db #0x49	; 73	'I'
      000EAE 31                    2517 	.db #0x31	; 49	'1'
      000EAF 01                    2518 	.db #0x01	; 1
      000EB0 01                    2519 	.db #0x01	; 1
      000EB1 7F                    2520 	.db #0x7f	; 127
      000EB2 01                    2521 	.db #0x01	; 1
      000EB3 01                    2522 	.db #0x01	; 1
      000EB4 3F                    2523 	.db #0x3f	; 63
      000EB5 40                    2524 	.db #0x40	; 64
      000EB6 40                    2525 	.db #0x40	; 64
      000EB7 40                    2526 	.db #0x40	; 64
      000EB8 3F                    2527 	.db #0x3f	; 63
      000EB9 1F                    2528 	.db #0x1f	; 31
      000EBA 20                    2529 	.db #0x20	; 32
      000EBB 40                    2530 	.db #0x40	; 64
      000EBC 20                    2531 	.db #0x20	; 32
      000EBD 1F                    2532 	.db #0x1f	; 31
      000EBE 7F                    2533 	.db #0x7f	; 127
      000EBF 20                    2534 	.db #0x20	; 32
      000EC0 18                    2535 	.db #0x18	; 24
      000EC1 20                    2536 	.db #0x20	; 32
      000EC2 7F                    2537 	.db #0x7f	; 127
      000EC3 63                    2538 	.db #0x63	; 99	'c'
      000EC4 14                    2539 	.db #0x14	; 20
      000EC5 08                    2540 	.db #0x08	; 8
      000EC6 14                    2541 	.db #0x14	; 20
      000EC7 63                    2542 	.db #0x63	; 99	'c'
      000EC8 03                    2543 	.db #0x03	; 3
      000EC9 04                    2544 	.db #0x04	; 4
      000ECA 78                    2545 	.db #0x78	; 120	'x'
      000ECB 04                    2546 	.db #0x04	; 4
      000ECC 03                    2547 	.db #0x03	; 3
      000ECD 61                    2548 	.db #0x61	; 97	'a'
      000ECE 51                    2549 	.db #0x51	; 81	'Q'
      000ECF 49                    2550 	.db #0x49	; 73	'I'
      000ED0 45                    2551 	.db #0x45	; 69	'E'
      000ED1 43                    2552 	.db #0x43	; 67	'C'
      000ED2 00                    2553 	.db #0x00	; 0
      000ED3 00                    2554 	.db #0x00	; 0
      000ED4 7F                    2555 	.db #0x7f	; 127
      000ED5 41                    2556 	.db #0x41	; 65	'A'
      000ED6 41                    2557 	.db #0x41	; 65	'A'
      000ED7 02                    2558 	.db #0x02	; 2
      000ED8 04                    2559 	.db #0x04	; 4
      000ED9 08                    2560 	.db #0x08	; 8
      000EDA 10                    2561 	.db #0x10	; 16
      000EDB 20                    2562 	.db #0x20	; 32
      000EDC 41                    2563 	.db #0x41	; 65	'A'
      000EDD 41                    2564 	.db #0x41	; 65	'A'
      000EDE 7F                    2565 	.db #0x7f	; 127
      000EDF 00                    2566 	.db #0x00	; 0
      000EE0 00                    2567 	.db #0x00	; 0
      000EE1 04                    2568 	.db #0x04	; 4
      000EE2 02                    2569 	.db #0x02	; 2
      000EE3 01                    2570 	.db #0x01	; 1
      000EE4 02                    2571 	.db #0x02	; 2
      000EE5 04                    2572 	.db #0x04	; 4
      000EE6 40                    2573 	.db #0x40	; 64
      000EE7 40                    2574 	.db #0x40	; 64
      000EE8 40                    2575 	.db #0x40	; 64
      000EE9 40                    2576 	.db #0x40	; 64
      000EEA 40                    2577 	.db #0x40	; 64
      000EEB 00                    2578 	.db #0x00	; 0
      000EEC 01                    2579 	.db #0x01	; 1
      000EED 02                    2580 	.db #0x02	; 2
      000EEE 04                    2581 	.db #0x04	; 4
      000EEF 00                    2582 	.db #0x00	; 0
      000EF0 20                    2583 	.db #0x20	; 32
      000EF1 54                    2584 	.db #0x54	; 84	'T'
      000EF2 54                    2585 	.db #0x54	; 84	'T'
      000EF3 54                    2586 	.db #0x54	; 84	'T'
      000EF4 78                    2587 	.db #0x78	; 120	'x'
      000EF5 7F                    2588 	.db #0x7f	; 127
      000EF6 48                    2589 	.db #0x48	; 72	'H'
      000EF7 44                    2590 	.db #0x44	; 68	'D'
      000EF8 44                    2591 	.db #0x44	; 68	'D'
      000EF9 38                    2592 	.db #0x38	; 56	'8'
      000EFA 38                    2593 	.db #0x38	; 56	'8'
      000EFB 44                    2594 	.db #0x44	; 68	'D'
      000EFC 44                    2595 	.db #0x44	; 68	'D'
      000EFD 44                    2596 	.db #0x44	; 68	'D'
      000EFE 20                    2597 	.db #0x20	; 32
      000EFF 38                    2598 	.db #0x38	; 56	'8'
      000F00 44                    2599 	.db #0x44	; 68	'D'
      000F01 44                    2600 	.db #0x44	; 68	'D'
      000F02 48                    2601 	.db #0x48	; 72	'H'
      000F03 7F                    2602 	.db #0x7f	; 127
      000F04 38                    2603 	.db #0x38	; 56	'8'
      000F05 54                    2604 	.db #0x54	; 84	'T'
      000F06 54                    2605 	.db #0x54	; 84	'T'
      000F07 54                    2606 	.db #0x54	; 84	'T'
      000F08 18                    2607 	.db #0x18	; 24
      000F09 08                    2608 	.db #0x08	; 8
      000F0A 7E                    2609 	.db #0x7e	; 126
      000F0B 09                    2610 	.db #0x09	; 9
      000F0C 01                    2611 	.db #0x01	; 1
      000F0D 02                    2612 	.db #0x02	; 2
      000F0E 08                    2613 	.db #0x08	; 8
      000F0F 14                    2614 	.db #0x14	; 20
      000F10 54                    2615 	.db #0x54	; 84	'T'
      000F11 54                    2616 	.db #0x54	; 84	'T'
      000F12 3C                    2617 	.db #0x3c	; 60
      000F13 7F                    2618 	.db #0x7f	; 127
      000F14 08                    2619 	.db #0x08	; 8
      000F15 04                    2620 	.db #0x04	; 4
      000F16 04                    2621 	.db #0x04	; 4
      000F17 78                    2622 	.db #0x78	; 120	'x'
      000F18 00                    2623 	.db #0x00	; 0
      000F19 44                    2624 	.db #0x44	; 68	'D'
      000F1A 7D                    2625 	.db #0x7d	; 125
      000F1B 40                    2626 	.db #0x40	; 64
      000F1C 00                    2627 	.db #0x00	; 0
      000F1D 20                    2628 	.db #0x20	; 32
      000F1E 40                    2629 	.db #0x40	; 64
      000F1F 44                    2630 	.db #0x44	; 68	'D'
      000F20 3D                    2631 	.db #0x3d	; 61
      000F21 00                    2632 	.db #0x00	; 0
      000F22 00                    2633 	.db #0x00	; 0
      000F23 7F                    2634 	.db #0x7f	; 127
      000F24 10                    2635 	.db #0x10	; 16
      000F25 28                    2636 	.db #0x28	; 40
      000F26 44                    2637 	.db #0x44	; 68	'D'
      000F27 00                    2638 	.db #0x00	; 0
      000F28 41                    2639 	.db #0x41	; 65	'A'
      000F29 7F                    2640 	.db #0x7f	; 127
      000F2A 40                    2641 	.db #0x40	; 64
      000F2B 00                    2642 	.db #0x00	; 0
      000F2C 7C                    2643 	.db #0x7c	; 124
      000F2D 04                    2644 	.db #0x04	; 4
      000F2E 18                    2645 	.db #0x18	; 24
      000F2F 04                    2646 	.db #0x04	; 4
      000F30 78                    2647 	.db #0x78	; 120	'x'
      000F31 7C                    2648 	.db #0x7c	; 124
      000F32 08                    2649 	.db #0x08	; 8
      000F33 04                    2650 	.db #0x04	; 4
      000F34 04                    2651 	.db #0x04	; 4
      000F35 78                    2652 	.db #0x78	; 120	'x'
      000F36 38                    2653 	.db #0x38	; 56	'8'
      000F37 44                    2654 	.db #0x44	; 68	'D'
      000F38 44                    2655 	.db #0x44	; 68	'D'
      000F39 44                    2656 	.db #0x44	; 68	'D'
      000F3A 38                    2657 	.db #0x38	; 56	'8'
      000F3B 7C                    2658 	.db #0x7c	; 124
      000F3C 14                    2659 	.db #0x14	; 20
      000F3D 14                    2660 	.db #0x14	; 20
      000F3E 14                    2661 	.db #0x14	; 20
      000F3F 08                    2662 	.db #0x08	; 8
      000F40 08                    2663 	.db #0x08	; 8
      000F41 14                    2664 	.db #0x14	; 20
      000F42 14                    2665 	.db #0x14	; 20
      000F43 18                    2666 	.db #0x18	; 24
      000F44 7C                    2667 	.db #0x7c	; 124
      000F45 7C                    2668 	.db #0x7c	; 124
      000F46 08                    2669 	.db #0x08	; 8
      000F47 04                    2670 	.db #0x04	; 4
      000F48 04                    2671 	.db #0x04	; 4
      000F49 08                    2672 	.db #0x08	; 8
      000F4A 48                    2673 	.db #0x48	; 72	'H'
      000F4B 54                    2674 	.db #0x54	; 84	'T'
      000F4C 54                    2675 	.db #0x54	; 84	'T'
      000F4D 54                    2676 	.db #0x54	; 84	'T'
      000F4E 20                    2677 	.db #0x20	; 32
      000F4F 04                    2678 	.db #0x04	; 4
      000F50 3F                    2679 	.db #0x3f	; 63
      000F51 44                    2680 	.db #0x44	; 68	'D'
      000F52 40                    2681 	.db #0x40	; 64
      000F53 20                    2682 	.db #0x20	; 32
      000F54 3C                    2683 	.db #0x3c	; 60
      000F55 40                    2684 	.db #0x40	; 64
      000F56 40                    2685 	.db #0x40	; 64
      000F57 20                    2686 	.db #0x20	; 32
      000F58 7C                    2687 	.db #0x7c	; 124
      000F59 1C                    2688 	.db #0x1c	; 28
      000F5A 20                    2689 	.db #0x20	; 32
      000F5B 40                    2690 	.db #0x40	; 64
      000F5C 20                    2691 	.db #0x20	; 32
      000F5D 1C                    2692 	.db #0x1c	; 28
      000F5E 3C                    2693 	.db #0x3c	; 60
      000F5F 40                    2694 	.db #0x40	; 64
      000F60 30                    2695 	.db #0x30	; 48	'0'
      000F61 40                    2696 	.db #0x40	; 64
      000F62 3C                    2697 	.db #0x3c	; 60
      000F63 44                    2698 	.db #0x44	; 68	'D'
      000F64 28                    2699 	.db #0x28	; 40
      000F65 10                    2700 	.db #0x10	; 16
      000F66 28                    2701 	.db #0x28	; 40
      000F67 44                    2702 	.db #0x44	; 68	'D'
      000F68 0C                    2703 	.db #0x0c	; 12
      000F69 50                    2704 	.db #0x50	; 80	'P'
      000F6A 50                    2705 	.db #0x50	; 80	'P'
      000F6B 50                    2706 	.db #0x50	; 80	'P'
      000F6C 3C                    2707 	.db #0x3c	; 60
      000F6D 44                    2708 	.db #0x44	; 68	'D'
      000F6E 64                    2709 	.db #0x64	; 100	'd'
      000F6F 54                    2710 	.db #0x54	; 84	'T'
      000F70 4C                    2711 	.db #0x4c	; 76	'L'
      000F71 44                    2712 	.db #0x44	; 68	'D'
      000F72 00                    2713 	.db #0x00	; 0
      000F73 08                    2714 	.db #0x08	; 8
      000F74 36                    2715 	.db #0x36	; 54	'6'
      000F75 41                    2716 	.db #0x41	; 65	'A'
      000F76 00                    2717 	.db #0x00	; 0
      000F77 00                    2718 	.db #0x00	; 0
      000F78 00                    2719 	.db #0x00	; 0
      000F79 7F                    2720 	.db #0x7f	; 127
      000F7A 00                    2721 	.db #0x00	; 0
      000F7B 00                    2722 	.db #0x00	; 0
      000F7C 00                    2723 	.db #0x00	; 0
      000F7D 41                    2724 	.db #0x41	; 65	'A'
      000F7E 36                    2725 	.db #0x36	; 54	'6'
      000F7F 08                    2726 	.db #0x08	; 8
      000F80 00                    2727 	.db #0x00	; 0
      000F81 08                    2728 	.db #0x08	; 8
      000F82 08                    2729 	.db #0x08	; 8
      000F83 2A                    2730 	.db #0x2a	; 42
      000F84 1C                    2731 	.db #0x1c	; 28
      000F85 08                    2732 	.db #0x08	; 8
      000F86 08                    2733 	.db #0x08	; 8
      000F87 1C                    2734 	.db #0x1c	; 28
      000F88 2A                    2735 	.db #0x2a	; 42
      000F89 08                    2736 	.db #0x08	; 8
      000F8A 08                    2737 	.db #0x08	; 8
                                   2738 	.area XINIT   (CODE)
                                   2739 	.area CABS    (ABS,CODE)
