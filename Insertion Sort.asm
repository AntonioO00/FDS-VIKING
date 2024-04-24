main
    ldi lr, ret_imprimir1
    bnz r7, imprimir_numeros1
ret_imprimir1
    ldi lr, ret_ordenar
    bnz r7, ordenar
ret_ordenar
    ldi lr, ret_imprimir2
    bnz r7, imprimir_numeros2
ret_imprimir2
    ldi lr, ret_ordenar2
    bnz r7, ordenar2
ret_ordenar2
    ldi lr, ret_imprimir3
    bnz r7, imprimir_numeros3
ret_imprimir3
    hcf

imprimir_numeros1
    ldi r1, 0
    ldw r2, N1
    ldi r3, numeros1
    ldi r4, 10
    stw r4, 0xf000
loop_imprimir1
    ldw r4, r3
    bnz r4, fim_imprimir1
    stw r4, 0xf002
    ldi r4, 32
    stw r4, 0xf000
    add r1, 1
    add r3, 2
    sub r5, r1, r2
    bnz r5, loop_imprimir1
    bnz r7, lr

fim_imprimir1
    ldi r4, 10
    stw r4, 0xf000
    bnz r7, lr

ordenar
    ldi r1, 0
loop_i
    ldw r3, N1
    sub r3, 1
    slt r3, r1, r3
    bez r3, fim_i

    xor r0, r0, r0
    add r2, r1, r0
    add r2, 1
loop_j
    ldw r3, N1
    slt r3, r2, r3
    bez r3, fim_j

    ldi r5, numeros1
    add r3, r5, r1
    add r3, r3, r1
    ldw r3, r3
    add r4, r5, r2
    add r4, r4, r2
    ldw r4, r4

    slt r5, r4, r3
    bez r5, pular

    xor r0, r0, r0
    add r0, r3, r0

    ldi r5, numeros1
    add r3, r5, r1
    add r3, r3, r1
    stw r4, r3

    add r4, r5, r2
    add r4, r4, r2
    stw r0, r4
pular
    add r2, 1
    bnz r7, loop_j
fim_j
    add r1, 1
    bnz r7, loop_i
fim_i
    bnz r7, ret_imprimir1

imprimir_numeros2
    ldi r1, 0
    ldw r2, N2
    ldi r3, numeros2
    ldi r4, 10
    stw r4, 0xf000
loop_imprimir2
    ldw r4, r3
    bnz r4, fim_imprimir2
    stw r4, 0xf002
    ldi r4, 32
    stw r4, 0xf000
    add r1, 1
    add r3, 2
    sub r5, r1, r2
    bnz r5, loop_imprimir2
    bnz r7, lr

fim_imprimir2
    ldi r4, 10
    stw r4, 0xf000
    bnz r7, lr

ordenar2
    ldi r1, 0
loop_i2
    ldw r3, N2
    sub r3, 1
    slt r3, r1, r3
    bez r3, fim_i2

    xor r0, r0, r0
    add r2, r1, r0
    add r2, 1
loop_j2
    ldw r3, N2
    slt r3, r2, r3
    bez r3, fim_j2

    ldi r5, numeros2
    add r3, r5, r1
    add r3, r3, r1
    ldw r3, r3
    add r4, r5, r2
    add r4, r4, r2
    ldw r4, r4

    slt r5, r4, r3
    bez r5, pular2

    xor r0, r0, r0
    add r0, r3, r0

    ldi r5, numeros2
    add r3, r5, r1
    add r3, r3, r1
    stw r4, r3

    add r4, r5, r2
    add r4, r4, r2
    stw r0, r4
pular2
    add r2, 1
    bnz r7, loop_j2
fim_j2
    add r1, 1
    bnz r7, loop_i2
fim_i2
    bnz r7, ret_imprimir2

imprimir_numeros3
    ldi r1, 0
    ldw r2, N3
    ldi r3, numeros3
    ldi r4, 10
    stw r4, 0xf000
loop_imprimir3
    ldw r4, r3
    bnz r4, fim_imprimir3
    stw r4, 0xf002
    ldi r4, 32
    stw r4, 0xf000
    add r1, 1
    add r3, 2
    sub r5, r1, r2
    bnz r5, loop_imprimir3
    bnz r7, lr

fim_imprimir3
    ldi r4, 10
    stw r4, 0xf000
    bnz r7, lr

ordenar3
    ldi r1, 0
loop_i3
    ldw r3, N3
    sub r3, 1
    slt r3, r1, r3
    bez r3, fim_i3

    xor r0, r0, r0
    add r2, r1, r0
    add r2, 1
loop_j3
    ldw r3, N3
    slt r3, r2, r3
    bez r3, fim_j3

    ldi r5, numeros3
    add r3, r5, r1
    add r3, r3, r1
    ldw r3, r3
    add r4, r5, r2
    add r4, r4, r2
    ldw r4, r4

    slt r5, r4, r3
    bez r5, pular3

    xor r0, r0, r0
    add r0, r3, r0

    ldi r5, numeros3
    add r3, r5, r1
    add r3, r3, r1
    stw r4, r3

    add r4, r5, r2
    add r4, r4, r2
    stw r0, r4
pular3
    add r2, 1
    bnz r7, loop_j3
fim_j3
    add r1, 1
    bnz r7, loop_i3
fim_i3
    bnz r7, lr

N1 10
numeros1 -5 8 -22 123 77 -1 99 -33 10 12

N2 6
numeros2 42 -5 0 11 9 8

N3 7
numeros3 99 -22 56 34 12 8 1
