       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA14.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: IMPRESSAO TABUADA 1 AO 10
      *== DATA: 25/02/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                      DIVISION.
       CONFIGURATION                   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE                 SECTION.
       77  WRK-NUMERO      PIC 9(02)   VALUE ZEROS.
       77  WRK-CONTADOR    PIC 9(02)   VALUE 1.
       77  WRK-RESULTADO   PIC 9(02)   VALUE ZEROS.
      
       PROCEDURE DIVISION.
       0100-INICIALIZAR                SECTION.
           DISPLAY "QUAL O NUMERO .."
               ACCEPT WRK-NUMERO.

       0200-PROCESSAR                  SECTION.

           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1 UNTIL WRK-CONTADOR
           GRATER 10
               COMPUTE WRK-RESULTADO = WRK-NUMERO * 1
               DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
           END-PERFORM.
      *==================== UNTIL
      *PERFORM UNTIL WRK-CONTADOR GREATER 10
      *COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
      *ADD 1 TO WRK-CONTADOR
      *END-PERFORM.

      *==================== TIME
      *PERFORM 10 TIMES
      *COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
      *ADD 1 TO WRK-CONTADOR
      *END-PERFORM.

       0300-FINALIZAR                  SECTION.
           STOP RUN.