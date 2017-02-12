" Vim syntax file
" Language: WLA-DX Assembly
" Maintainer: Tommy Savaria
" Latest Revision: 13 January 2017

if exists("b:current_syntax")
	finish
endif

syn match wlaIdentifier /\w\+/
syn match wlaDirective /\c\<\(24bitaccu\|base\|computesneschecksum\|endemuvector\|endnativevector\|endsnes\|fastrom\|hirom\|index\|lorom\|slowrom\|smc\|snesemuvector\|snesheader\|snesnativevector\|16bit\|8bit\|asc\|asciitable\|asctable\|asm\|background\|bank\|block\|br\|breakpoint\|byt\|db\|dbcos\|dbm\|dbrnd\|dbsin\|def\|define\|ds\|dsb\|dstruct\|dsw\|dw\|dwcos\|dwm\|dwrnd\|dwsin\|else\|emptyfill\|endasm\|endb\|ende\|endif\|endm\|endme\|endr\|endro\|ends\|endst\|enum\|equ\|export\|fail\|fclose\|fopen\|fread\|fsize\|if\|ifdef\|ifdefm\|ifeq\|ifexists\|ifgr\|ifgreq\|ifle\|ifleeq\|ifndef\|ifndefm\|ifneq\|incbin\|incdir\|include\|input\|instanceof\|macro\|memorymap\|org\|orga\|outname\|printt\|printv\|ramsection\|redef\|redefine\|repeat\|rept\|rombankmap\|rombanks\|rombanksize\|section\|seed\|shift\|slot\|struct\|sym\|symbol\|unbackground\|undef\|undefine\|word\|cartridgetype\|computegbchecksum\|computegbcomplementcheck\|licenseecodenew\|licenseecodeold\|ramsize\|romdmg\|romgbc\|romsgb\|name\|computesmschecksum\|sdsctag\|smsta\)\>/ 
syn match wla6502Instruction /\c\<\(ADC\|AND\|ASL\|BCC\|BCS\|BEQ\|BIT\|BMI\|BNE\|BPL\|BRK\|BVC\|BVS\|CLC\|CLD\|CLI\|CLV\|CMP\|CPX\|CPY\|DEC\|DEX\|DEY\|EOR\|INA\|INC\|INX\|INY\|JMP\|JSR\|LDA\|LDX\|LDY\|LSR\|NOP\|ORA\|PHA\|PHP\|PLA\|PLP\|ROL\|ROR\|RTI\|RTS\|SBC\|SEC\|SED\|SEI\|STA\|STX\|STY\|TAX\|TAY\|TSX\|TXA\|TXS\|TYA\)\>/
syn match wla65816Instruction /\c\<\(BRL\|COP\|JML\|JSL\|MVN\|MVP\|PEA\|PEI\|PER\|PHB\|PHD\|PHK\|PLB\|PLD\|REP\|RTL\|SEP\|TCD\|TCS\|TDC\|TSC\|TXY\|TYX\|WDM\|XBA\|XCE\)\>/
syn match wla65C02Instruction /\c\<\(BRA\|PHX\|PHY\|PLX\|PLY\|STP\|STZ\|TRB\|TSB\|WAI)\)\>/

syn match wlaDecNumber /\d\+/
syn match wlaHexNumber /\$[0-9A-Fa-f]\+/
syn match wlaBinNumber /%[01]\+/

syn match wlaString /".*"/
syn match wlaComment /;.*\n/

hi def link wla6502Instruction Statement
hi def link wla65816Instruction Statement
hi def link wla65C02Instruction Statement

hi def link wlaDirective PreProc

hi def link wlaDecNumber Number
hi def link wlaHexNumber Number
hi def link wlaBinNumber Number

hi def link wlaComment Comment
hi def link wlaSpecial Special
hi def link wlaString String
hi def link wlaIdentifier Identifier
