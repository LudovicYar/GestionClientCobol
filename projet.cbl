      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 client.
           02 nom PIC x(30).
           02 prenom PIC x(30).
           02 adresse.
               03 rue pic x(30).
               03 cp PIC 9(5).
               03 ville PIC x(30).
           02 prodFinancier.
               03 intitule PIC x(30).
               03 somme PIC 9(9)v9(2).
               03 dateCreation.
                   04 jour PIC 9(2).
                   04 mois PIC 9(2).
                   04 annee PIC 9(4).
       01 screenT PIC 9(1).

       SCREEN SECTION.

       01 accueil.
          02 BLANK SCREEN.
          02 LINE 5 COL 1 VALUE '         Accueil          '.
          02 LINE 4 COL 50 VALUE '         Creer un client        '.
           2 LINE 5 COL 50 VALUE '         Afficher un client  '.
           2 LINE 6 COL 50 VALUE '         Afficher un fichier        '.
           2 LINE 4 COL 96 VALUE 'Appuyez sur 1'.
           2 LINE 5 COL 96 VALUE 'Appuyez sur 2 '.
           2 LINE 6 COL 96 VALUE 'Appuyez sur 3'.


       1 askprenom.
           2 LINE 10 COL 15 VALUE ' '.
           2 PIC x(30) TO prenom REQUIRED.
       1 asknom.
           2 LINE 11 COL 15 VALUE ' '.
           2 PIC x(30) TO nom REQUIRED.
       1 askadresse.
           2 LINE 12 COL 15 VALUE ' '.
           2 PIC x(30) TO adresse REQUIRED.
       1 ask.
           2 LINE 8 COL 85 VALUE ' '.
           2 PIC x TO screenT REQUIRED.

       01 creerClient.
           2 BLANK SCREEN.
           2 LINE 5 COL 4 VALUE '         Enregistrer un client       '.
           2 LINE 4 COL 50 VALUE '         Accueil        '.
           2 LINE 5 COL 50 VALUE '         Afficher un client  '.
           2 LINE 6 COL 50 VALUE '         Afficher un fichier        '.
           2 LINE 4 COL 96 VALUE 'Appuyez sur 1'.
           2 LINE 5 COL 96 VALUE 'Appuyez sur 2 '.
           2 LINE 6 COL 96 VALUE 'Appuyez sur 3'.
           2 LINE 10 COL 4 VALUE 'Prenom :'.
           2 LINE 11 COL 4 VALUE 'Nom :'.
           2 LINE 12 COL 4 VALUE 'Adresse :'.


       1 afficherClient.
           2 BLANK SCREEN.
           2 LINE 5 COL 4 VALUE '         Clients          '.
           2 LINE 5 COL 50 VALUE '         Accueil  '.
           2 LINE 4 COL 50 VALUE '         Creer un client        '.
           2 LINE 6 COL 50 VALUE '         Afficher un fichier        '.
           2 LINE 4 COL 96 VALUE 'Appuyez sur 1'.
           2 LINE 5 COL 96 VALUE 'Appuyez sur 2 '.
           2 LINE 6 COL 96 VALUE 'Appuyez sur 3'.
           2 LINE 10 COL 4 VALUE '         Prenom'.
           2 LINE 10 COL 43 VALUE 'Nom'.
           2 LINE 10 COL 73 VALUE 'Adresse'.
           2 LINE 11 COL 12 VALUE '-----------------------------------'.
           2 LINE 11 COL 46 VALUE '-----------------------------------'.
           2 LINE 12 COL 4 VALUE '         '.

       1 afficherFichier.
           2 BLANK SCREEN.
           2 LINE 5 COL 4 VALUE '         Fichier          '.
           2 LINE 4 COL 50 VALUE '         Creer un client        '.
           2 LINE 5 COL 50 VALUE '         Afficher un client  '.
           2 LINE 6 COL 50 VALUE '         Afficher un fichier        '.
           2 LINE 4 COL 96 VALUE 'Appuyez sur 1'.
           2 LINE 5 COL 96 VALUE 'Appuyez sur 2 '.
           2 LINE 6 COL 96 VALUE 'Appuyez sur 3'.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY creerClient.
           accept askprenom.
           accept asknom.
           accept askadresse.
           accept ask.
           DISPLAY afficherClient
           DISPLAY prenom nom adresse.
           DISPLAY "            "prenom nom adresse.
           DISPLAY "            "prenom nom adresse.
           DISPLAY "            "prenom nom adresse.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
