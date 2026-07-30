IDENTIFICATION DIVISION.
PROGRAM-ID. COBOLT-2.

DATA DIVISION.

WORKING-STORAGE SECTION.

01 WS-NOM                PIC X(30).
01 WS-AGE                PIC 9(3).
01 WS-COMPTEUR           PIC 9 VALUE 1.
01 WS-ANNEE-NAISSANCE    PIC 9(4).
01 WS-ANNEE-COURANTE     PIC 9(4) VALUE 2026.

PROCEDURE DIVISION.

DEBUT-PROGRAMME.

    DISPLAY "Quel est votre nom ?"
    ACCEPT WS-NOM

    DISPLAY "Quel est votre age ?"
    ACCEPT WS-AGE

    COMPUTE WS-ANNEE-NAISSANCE =
        WS-ANNEE-COURANTE - WS-AGE
    END-COMPUTE

    DISPLAY "Bonjour " WS-NOM
    DISPLAY "Vous etes ne approximativement en "
        WS-ANNEE-NAISSANCE

    IF WS-AGE >= 18
        DISPLAY "Vous etes majeur."
    ELSE
        DISPLAY "Vous etes mineur."
    END-IF

    DISPLAY "Comptage de 1 a 5 :"

    PERFORM UNTIL WS-COMPTEUR > 5
        DISPLAY "Compteur : " WS-COMPTEUR
        ADD 1 TO WS-COMPTEUR
    END-PERFORM

    DISPLAY "Fin du programme."

    STOP RUN.
