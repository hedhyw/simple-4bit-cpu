`define CAP 4
`define REG_COUNT 6 // must be >= 3
`define DATA_FRAME_SIZE 16 // `CAP * 4

`define ASM_LDI  `CAP'h0
`define ASM_CLR  `CAP'h1
`define ASM_SER  `CAP'h2
`define ASM_MOV  `CAP'h3
`define ASM_ADD  `CAP'h4
`define ASM_ADDI `CAP'h5
`define ASM_INC  `CAP'h6
//`define ASM_DEC  `CAP'h7
`define ASM_JMP  `CAP'h7
`define ASM_AND  `CAP'h8
`define ASM_ANDI `CAP'h9
`define ASM_OR   `CAP'hA
`define ASM_ORI  `CAP'hB
`define ASM_COM  `CAP'hC
`define ASM_EOR  `CAP'hD
`define ASM_ADC  `CAP'hE
`define ASM_ADCI `CAP'hF
