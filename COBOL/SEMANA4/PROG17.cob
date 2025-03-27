       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG17.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: TESTAR CONSUMO DO MODULO DATAMES
      *== DATA: 04/03/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       77  WRK-DATA    PIC X(40).
       
       PROCEDURE DIVISION USING LNK-AREA.
       0001-PRINCIPAL              SECTION.
           CALL "DATAMES" USING WRK-DATA.
           DISPLAY WRK-DATA.
           STOP RUN.