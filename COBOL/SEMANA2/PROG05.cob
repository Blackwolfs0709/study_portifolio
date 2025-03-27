       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG05.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: VARIAVEL DE NIVEL(ESTRUTURAL)
      *== DATA: 14/02/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       01  WRK-DATA.
           02  WRK-ANO    PIC X(04)   VALUE SPACES.
           02  WRK-MES    PIC X(04)   VALUE SPACES.
           02  WRK-DIA    PIC X(04)   VALUE SPACES.
       PROCEDURE DIVISION.
       0100-RECEBE                 SECTION.
           ACCEPT  WRK-DATA FROM DATE YYYMMDD.

       0200-MOSTRA                 SECTION.
           DISPLAY "DIA " WRK-DATA(07:02)
                   "MES " WRK-DATA(05:02)
                   "ANO " WRK-DATA(01:04)
      *OS PARENTESES REPRESENTA POSIÇÃO E QUANTIDADE DE CASAS
      *RESPECTIVAMENTE

       0300-FINALIZAR              SECTION.
           STOP RUN.