       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG06.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: VARIAVEL ESTRUTURAL (GRUPO) - EX2
      *== DATA: 19/02/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       01  WRK-ENTRADA.
           05  WRK-CODIGO  PIC 9(04) VALUE ZEROS.
           05  WRK-NOME    PIC X(15) VALUE SPACES.
           05  WRK-SALARIO PIC 9(06) VALUE ZEROS.
      
       PROCEDURE DIVISION.
       0100-RECEBE                 SECTION.
           DISPLAY "INSIRA OS DADOS: ".
           ACCEPT WRK-ENTRADA.
           
       0200-MOSTRA                 SECTION.
           DISPLAY "CODIGO: " WRK-CODIGO.
           DISPLAY "NOME: " WRK-NOME.
           DISPLAY "SALARIO: " WRK-SALARIO.
       0300-FINALIZAR              SECTION.
           STOP RUN.