MVI B, 04H

LOOP1: LXI H, 2050H
       MVI C, 04H

LOOP2: MOV A, M
       INX H
       CMP M
       JC NEXT
       JZ NEXT

       MOV D, M
       MOV M, A
       DCX H
       MOV M, D
       INX H

NEXT:  DCR C
       JNZ LOOP2
       DCR B
       JNZ LOOP1

HLT
