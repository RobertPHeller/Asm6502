# Asm6502 -- 6502 assembler in SNOBOL4

This is a *simple* 6502 assembler, written in SNOBOL4.  It works with 
CSNOBOL4 version 1.2 (December 9, 2008), which I built on my Raspberry Pi 5.

It implements the base 6502 instruction set with the WDC additional
instructions and addressing modes, along with these "directives":

- Label DEF Constant    ; Set Label equal to Constant
- Label ORG Constant    ; Set the location counter to Constant
- Label WORD Constant   ; Store a 16-bit Constant here
- Label BYTE Constant   ; Store a 8-bit Constant here
- Label DATA Constant   ; Allocate Constant bytes of memory here (Zeroed)
- Label END             ; End  of program (required)

Labels start with a letter and contain only letters and digits.  Case 
insensitive, stored internally in uppercase.

Constants can be decimal, hex (with either a dollar sign or 0X prefix), or
single characters (using single quotes). A '*' as an address means the current
location.

Running the program:

snobol4 -b Asm6502.sno [-l listing] [-o hexfile] [sourcefile]

If -l listing is omited, listing is to stdout, of -o hexfile omited, hex code 
is written to out.hex, if sourcefile is omitted, code is read from stdin.

Print listing to default printer:

./list2lp.sh listing

Convert listing to PDF:

./list2lp.sh -o listing.ps listing && ps2pdf listing.ps listing.pdf
