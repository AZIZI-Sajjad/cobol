       *> Ci-dessous le résultat :

       *> Le nombre le plus élevé est : 66
       *> Le plus petit nombre est    : 12

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAXMIN.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01  WS-AUXILIARES.
           05  WS-MAX      PIC 9(2)  VALUE 0.
           05  WS-MIN      PIC 9(2)  VALUE 99.
           05  WS-I        PIC 9(2)  VALUE 0. 
           05  WS-TAB      VALUE "1915664112".
               10 WS-ELE   PIC 9(2) OCCURS 5 TIMES.

       PROCEDURE DIVISION.

       PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
            IF WS-ELE (WS-I) > WS-MAX
               MOVE WS-ELE (WS-I) TO WS-MAX
            END-IF
            IF WS-ELE (WS-I) < WS-MIN
               MOVE WS-ELE (WS-I) TO WS-MIN
            END-IF  
       END-PERFORM. 

       DISPLAY 'Le nombre le plus élevé est : ' WS-MAX.
       DISPLAY 'Le plus petit nombre est    : ' WS-MIN.
       STOP RUN.

