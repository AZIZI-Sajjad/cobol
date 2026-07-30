123456*89ABCDEFGH                                                      72
      *                                                                 73...80
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.

       PROCEDURE DIVISION.
           DISPLAY "Bonjour et bienvenue sur le Terminal COBOL!"
           DISPLAY "Ligne 8 ignoré car elle commence à partir de la " 
                   "73ème colonne!"
                                                                        "Ligne 8 ignoré car elle commence à partir de 73ème colonne"
           STOP RUN.
