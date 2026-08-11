LDA 2050H
MOV B,A

LDA 2051H
MOV C,A

MOV D,B

LOOP: MOV A,D
      MOV E,C

CHECK: CMP E
       JC NEXT
       SUB E
       JZ FOUND
       JMP CHECK

NEXT: MOV A,D
      ADD B
      MOV D,A
      JMP LOOP

FOUND: MOV A,D
       STA 2052H
       HLT
