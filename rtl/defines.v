`define WORD 63:0
`define IRAMBUS 12:0
`define INSNBUS 79:0
`define ICODEBUS 3:0
`define IFUNBUS 3:0
`define REGBUS 3:0
`define INSN_BYTE0 79:72
`define INSN_BYTE1_9 71:0
`define ICODE  7:4
`define IFUN   3:0

 //instruct code
`define     IHALT           4'h0    
`define     INOP            4'h1   
`define     IRRMOVQ         4'h2  
`define     IIRMOVQ         4'h3
`define     IRMMOVQ         4'h4
`define     IMRMOVQ         4'h5
`define     IOPQ            4'h6
`define     IJXX            4'h7
`define     ICALL           4'h8
`define     IRET            4'h9
`define     IPUSHQ          4'hA
`define     IPOPQ           4'hB


//register id

`define RRAX 4'h0
`define RRCX 4'h1
`define RRDX 4'h2
`define RRBX 4'h3
`define RRSP 4'h4
`define RRBP 4'h5
`define RRSI 4'h6
`define RRDI 4'h7
`define R8   4'h8
`define R9   4'h9
`define R10  4'ha
`define R11  4'hb
`define R12  4'hc
`define R13  4'hd
`define R14  4'he
`define RNONE 4'hf
//ifun opq code
`define ALUADD 4'h0
`define ALUSUB 4'h1
`define ALUAND 4'h2
`define ALUXOR 4'h3
//compair code
`define C_YES 4'h0
`define C_LE  4'h1
`define C_L   4'h2
`define C_E   4'h3
`define C_NE  4'h4
`define C_GE  4'h5
`define C_G   4'h6

//stat code
`define SAOK 2'h1
`define SADR 3'h2
`define SINS 3'h3
`define SHLT 4'h4


