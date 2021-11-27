    .global _start              @ Declade global _start label. required to run.
    .text                       @ Start of .text section
_start:
    MOV r7, #4                  @ move code for write call into r7
    MOV r0, #1                  @ Specify fd. 1 for stdout
    LDR r1, =hello              @ Load our 'hello' data constant into r1
    MOV r2, #12                 @ set r2 to size of our hello message
    SWI 0                       @ write

    MOV r7, #1                  @ move code for exit call into r7
    SWI 0                       @ exit

    .data                       @ start of .data section
hello:  .ascii "hello world\n"  @ declare hello world message
