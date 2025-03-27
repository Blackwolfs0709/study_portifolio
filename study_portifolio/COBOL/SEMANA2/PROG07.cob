       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG07.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: SOMA
      *== DATA: 
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       01   WRK-DADOS.
           05  WRK-NUM1        PIC 9(03) VALUE ZEROS.
           05  WRK-NUM2        PIC 9(03) VALUE ZEROS.

       77  WRK-RESUL       PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
       0100-RECEBE                 SECTION.
       0200-MOSTRA                 SECTION.
       0300-FINALIZAR              SECTION.
           STOP RUN.