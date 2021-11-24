    .global _start
    .text
_start:
    MOV r7, #4
    MOV r0, #1
    LDR r1, =hallo
    MOV r2, #12
    SWI 0

    MOV r7, #1
    SWI 0

    .data
hallo:  .ascii "hello world\n"

