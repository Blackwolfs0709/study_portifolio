       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA09.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: CALCULAR MEDIA DO ALUNO
      *== DATA: 22/02/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       77  WRK-NOTA1   PIC 9(02)V99    VALUE ZEROS.
       77  WRK-NOTA2   PIC 9(02)V99    VALUE ZEROS.
       77  WRK-MEDIA   PIC 9(02)V99    VALUE ZEROS.
            
       PROCEDURE DIVISION.
       0100-RECEBE                 SECTION.
           DISPLAY "NOTA 1 ".
               ACCEPT WRK-NOTA1.
           DISPLAY "NOTA 2 ".
               ACCEPT WRK-NOTA2.

       0150-PROCESSA               SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

       0200-MOSTRA                 SECTION.
           DISPLAY "MEDIA  " WRK-MEDIA.
               IF WRK-MEDIA GREATER 7
                   DISPLAY "APROVADO"
               ELSE
                   DISPLAY "REPROVADO"
               END-IF.

       0300-FINALIZAR              SECTION.
           STOP RUN.