# Bases du langage COBOL

## Source : 
```bash
https://www.youtube.com/watch?v=MfpUjL_Dl4g
```
## Présentation

COBOL signifie **Common Business-Oriented Language**.

Créé en **1959**, il a été conçu pour :

- le traitement des données d’entreprise ;
- la gestion bancaire, administrative et comptable ;
- fonctionner sur différentes plateformes matérielles ;
- produire des programmes lisibles, structurés et maintenables.

COBOL reste très présent dans les banques, les assurances, les administrations, les transports et les systèmes de gestion historiques.

---

## Pourquoi apprendre COBOL ?

COBOL est encore utilisé pour traiter de grandes quantités de données et des transactions critiques.

Ses principaux avantages sont :

- grande stabilité ;
- excellente fiabilité ;
- traitement efficace de volumes importants ;
- compatibilité avec des applications anciennes ;
- forte demande de maintenance et de modernisation des systèmes existants.

Son principal inconvénient est sa syntaxe stricte et très structurée.

---

# Format d’une ligne COBOL

Le format historique provient des cartes perforées IBM de **80 colonnes**.

| Colonnes | Zone | Utilisation |
|---|---|---|
| 1 à 6 | Séquence | Numérotation historique des lignes |
| 7 | Indicateur | Commentaire, continuation ou débogage |
| 8 à 11 | Zone A | Divisions, sections, paragraphes et niveaux `01` ou `77` |
| 12 à 72 | Zone B | Instructions COBOL |
| 73 à 80 | Identification | Informations ignorées par le compilateur |

## Colonne 7

Les principaux indicateurs sont :

```text
*    Ligne de commentaire
-    Continuation de la ligne précédente
D    Ligne exécutée uniquement en mode débogage
```

## Zone A

La zone A contient principalement :

- les noms de divisions ;
- les noms de sections ;
- les noms de paragraphes ;
- les niveaux hiérarchiques `01` et `77`.

## Zone B

La zone B contient les instructions du programme :

```cobol
           MOVE "Nicolas" TO WS-PRENOM
           DISPLAY WS-PRENOM
           STOP RUN
```

---

# Structure hiérarchique

Un programme COBOL est organisé ainsi :

```text
Programme
└── Divisions
    └── Sections
        └── Paragraphes
            └── Phrases
                └── Instructions
```

Une instruction commence généralement par un mot réservé :

```text
MOVE
DISPLAY
ADD
DIVIDE
COMPUTE
PERFORM
IF
```

Une phrase COBOL peut contenir une ou plusieurs instructions.

Le point `.` termine une phrase et ferme toutes les instructions encore ouvertes.

Un terminateur explicite peut également être utilisé :

```cobol
           IF WS-AGE >= 18
               DISPLAY "Vous êtes majeur"
           END-IF
```

---

# Les quatre divisions principales

## 1. IDENTIFICATION DIVISION

Cette division identifie le programme.

Elle doit être placée en premier.

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BONJOUR.
```

`PROGRAM-ID` est obligatoire. Les autres informations sont facultatives :

```text
AUTHOR
INSTALLATION
DATE-WRITTEN
DATE-COMPILED
SECURITY
```

---

## 2. ENVIRONMENT DIVISION

Cette division décrit l’environnement d’exécution et la gestion des fichiers.

Elle est facultative.

Principales sections :

```text
CONFIGURATION SECTION
INPUT-OUTPUT SECTION
```

Principaux paragraphes :

```text
SOURCE-COMPUTER
OBJECT-COMPUTER
SPECIAL-NAMES
FILE-CONTROL
I-O-CONTROL
```

Exemple pour utiliser la virgule comme séparateur décimal :

```cobol
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
```

---

## 3. DATA DIVISION

Cette division contient les données utilisées par le programme.

Principales sections :

```text
FILE SECTION
WORKING-STORAGE SECTION
LINKAGE SECTION
```

### FILE SECTION

Décrit la structure des fichiers manipulés par le programme.

### WORKING-STORAGE SECTION

Déclare les variables internes du programme.

```cobol
       WORKING-STORAGE SECTION.
       01 WS-PRENOM PIC X(20) VALUE "Nicolas".
       01 WS-AGE    PIC 99 VALUE 18.
```

### LINKAGE SECTION

Contient les données reçues depuis un autre programme.

---

## 4. PROCEDURE DIVISION

Cette division contient la logique du programme.

L’exécution commence dans cette division et se termine généralement par :

```cobol
           STOP RUN.
```

ou :

```cobol
           GOBACK.
```

---

# Exemple minimal

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       PROCEDURE DIVISION.
           DISPLAY "Hello World"
           STOP RUN.
```

---

# Exemple avec variable et paragraphe

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-PRENOM PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
       0000-TRAITEMENT-PRINCIPAL.
           MOVE "Nicolas" TO WS-PRENOM
           PERFORM 8000-AFFICHAGE
           STOP RUN.

       8000-AFFICHAGE.
           DISPLAY WS-PRENOM.
```

L’instruction `PERFORM` permet d’exécuter un paragraphe.

---

# Points essentiels à retenir

- COBOL est un langage fortement structuré.
- La position du code dans la ligne peut être importante.
- La colonne 7 contient les indicateurs spéciaux.
- La zone A contient la structure du programme.
- La zone B contient les instructions.
- `IDENTIFICATION DIVISION` et `PROGRAM-ID` sont indispensables.
- Les variables sont généralement déclarées dans `WORKING-STORAGE SECTION`.
- La logique du programme se trouve dans `PROCEDURE DIVISION`.
- Le point termine une phrase COBOL.
- Un programme se termine généralement avec `STOP RUN` ou `GOBACK`.