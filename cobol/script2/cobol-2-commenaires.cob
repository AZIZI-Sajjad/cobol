       *> Déclare la division contenant l'identification générale du programme.
       IDENTIFICATION DIVISION.

       *> Définit le nom interne du programme COBOL.
       PROGRAM-ID. COBOLT-2-COMMENTAIRES.


       *> Déclare la division contenant les données utilisées par le programme.
       DATA DIVISION.


       *> Déclare la section contenant les variables de travail.
       WORKING-STORAGE SECTION.


       *> Déclare une variable texte de 30 caractères destinée au nom.
       01 WS-NOM                PIC X(30).

       *> Déclare une variable numérique pouvant contenir 3 chiffres.
       01 WS-AGE                PIC 9(3).

       *> Déclare un compteur sur 1 chiffre et l'initialise à 1.
       01 WS-COMPTEUR           PIC 9 VALUE 1.

       *> Déclare une variable numérique sur 4 chiffres pour l'année de naissance.
       01 WS-ANNEE-NAISSANCE    PIC 9(4).

       *> Déclare l'année courante sur 4 chiffres et l'initialise à 2026.
       01 WS-ANNEE-COURANTE     PIC 9(4) VALUE 2026.


       *> Déclare la division contenant les instructions exécutables.
       PROCEDURE DIVISION.


       *> Définit un paragraphe nommé DEBUT-PROGRAMME.
       DEBUT-PROGRAMME.


       *> Affiche une question à l'écran.
           DISPLAY "Quel est votre nom ?"

       *> Attend une saisie et place la valeur dans WS-NOM.
           ACCEPT WS-NOM


       *> Affiche une question demandant l'âge.
           DISPLAY "Quel est votre age ?"

       *> Attend une saisie et place la valeur dans WS-AGE.
           ACCEPT WS-AGE


       *> Commence un calcul dont le résultat sera placé dans WS-ANNEE-NAISSANCE.
           COMPUTE WS-ANNEE-NAISSANCE =

       *> Soustrait l'âge à l'année courante.
               WS-ANNEE-COURANTE - WS-AGE

       *> Termine explicitement l'instruction COMPUTE.
           END-COMPUTE


       *> Affiche le texte Bonjour suivi du contenu de WS-NOM.
           DISPLAY "Bonjour " WS-NOM

       *> Affiche la première partie du message concernant l'année de naissance.
           DISPLAY "Vous etes ne approximativement en "

       *> Continue l'instruction DISPLAY avec l'année calculée.
               WS-ANNEE-NAISSANCE


       *> Teste si la valeur de WS-AGE est supérieure ou égale à 18.
           IF WS-AGE >= 18

       *> Cette instruction est exécutée lorsque la condition est vraie.
               DISPLAY "Vous etes majeur."

       *> Définit le traitement effectué lorsque la condition est fausse.
           ELSE

       *> Cette instruction est exécutée lorsque l'âge est inférieur à 18.
               DISPLAY "Vous etes mineur."

       *> Termine explicitement la structure conditionnelle IF.
           END-IF


       *> Affiche un message avant de commencer la boucle.
           DISPLAY "Comptage de 1 a 5 :"


       *> Répète les instructions jusqu'à ce que le compteur soit supérieur à 5.
           PERFORM UNTIL WS-COMPTEUR > 5

       *> Affiche la valeur actuelle du compteur.
               DISPLAY "Compteur : " WS-COMPTEUR

       *> Ajoute 1 à la variable WS-COMPTEUR.
               ADD 1 TO WS-COMPTEUR

       *> Termine explicitement la boucle PERFORM.
           END-PERFORM


       *> Affiche un message indiquant la fin du programme.
           DISPLAY "Fin du programme."


       *> Arrête normalement l'exécution du programme COBOL.
           STOP RUN.
