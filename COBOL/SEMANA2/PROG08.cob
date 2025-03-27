       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG08.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: EXEMPLO DE OPERAÇÃO SOMA (ADD)
      *== DATA: 
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       77  WRK-NUM1            PIC 9(04) VALUE ZEROS.
       77  WRK-NUM2            PIC 9(04) VALUE ZEROS.
       77  WRK-RESULTADO       PIC S9(07)V99 VALUE ZEROS.
       77  WRK-RESULTADO-ED    PIC -ZZ.ZZZ.ZZ9,99 VALUE ZEROS.
     
       PROCEDURE DIVISION.
       0100-RECEBE                 SECTION.
           DISPLAY "DIGITE NUMERO 1 ".
               ACCEPT WRK-NUM1.
           DISPLAY "DIGITE NUMERO 2 ".
               ACCEPT WRK-NUM2.
       0150-PROCESSA
      *-------------------------ADD---------------------
      *    ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULTADO.
      *-----------------------------------------------
      *-----------------------SUBTRACT---------------------
      *    SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULTADO.
      *-----------------------------------------------
      *------------------------DIVIDE---------------------
      *    DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO.
      *        ON SIZE ERROR
      *            DISPLAY "ERRO - DIVISÃO POR 0"
      *-----------------------------------------------
      *-----------------------MULTIPLY---------------------
      *    MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO.
      *-----------------------------------------------
       0200-MOSTRA                 SECTION.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           DISPLAY "RESULTADO... " WRK-RESULTADO-ED.
       0300-FINALIZAR              SECTION.
           STOP RUN.