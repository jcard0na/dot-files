set history save
set history filename ~/.gdb_history

define reconnect
   target remote :3333
end

define reload
    mon reset
    make
    load
    mon reset
    continue
end

define kl27_dump
#     printf "SIM\n"
#     printf "SIM_SOPT1:\t0x%x\n", 0x40047000
#     printf "SIM_SOPT1CFG:\t0x%x\n", 0x40047004
#     printf "SIM_SOPT2:\t0x%x\n", 0x40048004
#     printf "SIM_SOPT4:\t0x%x\n", 0x4004800c
#     printf "SIM_SOPT5:\t0x%x\n", 0x40048010
#     printf "SIM_SOPT7:\t0x%x\n", 0x40048008
#     printf "SIM_SDID:\t0x%x\n", 0x40048024
#     printf "SIM_SCGC4:\t0x%x\n", 0x40048034
#     printf "SIM_SCGC5:\t0x%x\n", 0x40048038
#     printf "SIM_SCGC6:\t0x%x\n", 0x4004803c
#     printf "SIM_SCGC7:\t0x%x\n", 0x40048040
#     printf "SIM_CLKDIV1:\t0x%x\n", 0x40048044
#     printf "SIM_FCFG1:\t0x%x\n", 0x4004804c
#     printf "SIM_FCFG2:\t0x%x\n", 0x40048050
#     printf "SIM_COPC:\t0x%x\n", 0x40048100
#     printf "\n\n"
#     printf "SMC\n"
#     printf "SMC_PMPROT:\t0x%02x\n", *((uint8_t *)0x4007E000)
#     printf "SMC_PMCTRL:\t0x%02x\n", *((uint8_t *)0x4007E001)
#     printf "SMC_STOPCTRL:\t0x%02x\n", *((uint8_t *)0x4007E002)
#     printf "SMC_PMSTAT:\t0x%02x\n", *((uint8_t *)0x4007E003)
#     printf "\n\n"
#     printf "PMC\n"
#     printf "PMC_LVDSC1:\t0x%02x\n", *((uint8_t *)0x4007D000)
#     printf "PMC_LVDSC2:\t0x%02x\n", *((uint8_t *)0x4007D001)
#     printf "PMC_REGSC:\t0x%02x\n", *((uint8_t *)0x4007D002)
#     printf "\n\n"
#     printf "LLWU\n"
#     printf "LLWU_PE1:\t0x%02x\n", *((uint8_t *)0x4007c000)
#     printf "LLWU_PE2:\t0x%02x\n", *((uint8_t *)0x4007c001)
#     printf "LLWU_PE3:\t0x%02x\n", *((uint8_t *)0x4007c002)
#     printf "LLWU_PE4:\t0x%02x\n", *((uint8_t *)0x4007c003)
#     printf "LLWU_ME:\t0x%02x\n", *((uint8_t *)0x4007c004)
#     printf "LLWU_F1:\t0x%02x\n", *((uint8_t *)0x4007c005)
#     printf "LLWU_F2:\t0x%02x\n", *((uint8_t *)0x4007c006)
#     printf "LLWU_F3:\t0x%02x\n", *((uint8_t *)0x4007c007)
#     printf "LLWU_FILT1:\t0x%02x\n", *((uint8_t *)0x4007c008)
#     printf "LLWU_FILT2:\t0x%02x\n", *((uint8_t *)0x4007c009)
#     printf "\n\n"
#     
#     printf "RCM\n"
#     printf "RCM_SRS0:\t0x%02x\n", *((uint8_t *)0x4007F000)
#     printf "RCM_SRS1:\t0x%02x\n", *((uint8_t *)0x4007F001)
#     printf "RCM_RPFC:\t0x%02x\n", *((uint8_t *)0x4007F004)
#     printf "RCM_RPFW:\t0x%02x\n", *((uint8_t *)0x4007F005)
#     printf "RCM_FM:  \t0x%02x\n", *((uint8_t *)0x4007F006)
#     printf "RCM_MR:  \t0x%02x\n", *((uint8_t *)0x4007F007)
#     printf "RCM_SSRS0:\t0x%02x\n", *((uint8_t *)0x4007F008)
#     printf "RCM_SSRS1:\t0x%02x\n", *((uint8_t *)0x4007F009)
#     printf "\n\n"

    printf "I2S0\n"
    printf "I2S0_TCSR:\t0x%02x\n", *((uint8_t *)0x4002F000)
    printf "I2S0_TCR2:\t0x%02x\n", *((uint8_t *)0x4002F008)
    printf "I2S0_TCR3:\t0x%02x\n", *((uint8_t *)0x4002F00C)
    printf "I2S0_TCR4:\t0x%02x\n", *((uint8_t *)0x4002F010)
    printf "I2S0_TCR5:\t0x%02x\n", *((uint8_t *)0x4002F014)
    printf "I2S0_TDR0:\t0x%02x\n", *((uint8_t *)0x4002F020)
    printf "I2S0_TMR:\t0x%02x\n", *((uint8_t *)0x4002F060)
    printf "I2S0_RCSR:\t0x%02x\n", *((uint8_t *)0x4002F080)
    printf "I2S0_RCR2:\t0x%02x\n", *((uint8_t *)0x4002F088)
    printf "I2S0_RCR3:\t0x%02x\n", *((uint8_t *)0x4002F08C)
    printf "I2S0_RCR4:\t0x%02x\n", *((uint8_t *)0x4002F090)
    printf "I2S0_RCR5:\t0x%02x\n", *((uint8_t *)0x4002F094)
    printf "I2S0_RDR0:\t0x%02x\n", *((uint8_t *)0x4002F0A0)
    printf "I2S0_RMR:\t0x%02x\n", *((uint8_t *)0x4002F0E0)
    printf "I2S0_MCR:\t0x%02x\n", *((uint8_t *)0x4002F100)
    printf "\n\n"

    printf "SPI\n"
    printf "SPI0_S:    \t0x%02x\n", *((uint8_t *)0x40076000)
    printf "SPI0_BR:    \t0x%02x\n", *((uint8_t *)0x40076001)
    printf "SPI0_C2:    \t0x%02x\n", *((uint8_t *)0x40076002)
    printf "SPI0_C1:    \t0x%02x\n", *((uint8_t *)0x40076003)
    printf "SPI0_ML:    \t0x%02x\n", *((uint8_t *)0x40076004)
    printf "SPI0_MH:    \t0x%02x\n", *((uint8_t *)0x40076005)
    printf "SPI0_DL:    \t0x%02x\n", *((uint8_t *)0x40076006)
    printf "SPI0_DH:    \t0x%02x\n", *((uint8_t *)0x40076007)
    printf "SPI0_CI:    \t0x%02x\n", *((uint8_t *)0x4007600A)
    printf "SPI0_C3:    \t0x%02x\n", *((uint8_t *)0x4007600B)
    printf "SPI1_S:    \t0x%02x\n", *((uint8_t *)0x40077000)
    printf "SPI1_BR:    \t0x%02x\n", *((uint8_t *)0x40077001)
    printf "SPI1_C2:    \t0x%02x\n", *((uint8_t *)0x40077002)
    printf "SPI1_C1:    \t0x%02x\n", *((uint8_t *)0x40077003)
    printf "SPI1_ML:    \t0x%02x\n", *((uint8_t *)0x40077004)
    printf "SPI1_MH:    \t0x%02x\n", *((uint8_t *)0x40077005)
    printf "SPI1_DL:    \t0x%02x\n", *((uint8_t *)0x40077006)
    printf "SPI1_DH:    \t0x%02x\n", *((uint8_t *)0x40077007)
    printf "SPI1_CI:    \t0x%02x\n", *((uint8_t *)0x4007700A)
    printf "SPI1_C3:    \t0x%02x\n", *((uint8_t *)0x4007700B)
    
    printf "MCG\n"
    printf "MCG_C1:  \t0x%02x\n", *((uint8_t *)0x40064000)
    printf "MCG_C2:  \t0x%02x\n", *((uint8_t *)0x40064001)
    printf "MCG_S:   \t0x%02x\n", *((uint8_t *)0x40064006)
    printf "MCG_SC:  \t0x%02x\n", *((uint8_t *)0x40064008)
    printf "MCG_MC:  \t0x%02x\n", *((uint8_t *)0x40064018)
    printf "\n\n"
    
    printf "OSC\n"
    printf "OSC0_CR:\t0x%02x\n", *((uint8_t *)0x40065000)
    printf "\n\n"
end 
