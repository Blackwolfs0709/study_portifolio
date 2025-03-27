       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXE1.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: REALIZAR PAGAMENTOS COM O SALDO
      *== DATA: 
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       01  WRK-SALDOI       PIC S9(009)V99 VALUE ZEROS.
       01  WRK-SALDOF       PIC S9(009)V99 VALUE ZEROS.
       01  WRK-PAG          PIC 9(009)V99 VALUE ZEROS.
       01  WRK-QTPAG        PIC 9(010)V99 VALUE ZEROS.

       01  WRK-ED    PIC -Z.ZZZ.ZZZ.ZZ9,99
      
       PROCEDURE DIVISION.
       0100-PRINCIPAL                  SECTION.
           PERFORM 0200-INICIALIZAR.
           PERFORM 0300-PROCESSAR.
           PERFORM 0400-FINALIZAR.
           STOP RUN.
       0100-PRINCIPAL-FIM. EXIT.

       0200-INICIALIZAR                SECTION.
           DISPLAY "SALDO INICIAL  ".
           ACCEPT WRK-SALDOI.

           DISPLAY "PAGAMENTO    ".
           ACCEPT WRK-PAG.
       0200-INICIALIZAR-FIM. EXIT.

       0300-PROCESSAR                  SECTION.
           PERFORM UNTIL WRK-PAG EQUAL 0
               COMPUTE WRK-QTPAG = WRK-QTPAG + WRK-PAG
               DISPLAY "PAGAMENTO "
               ACCEPT WRK-PAG
           END-PERFORM.

           COMPUTE WRK-SALDOF = WRK-SALDOI + WRK-QTPAG.
       0300-PROCESSAR-FIM. EXIT.

       0400-FINALIZAR                  SECTION.
           DISPLAY "SALDO INICIAL  " WRK-SALDOI.
           DISPLAY "PAGAMENTOS " WRK-QTPAG.
           DISPLAY "SALDO FINAL " WRK-SALDOF.
       0400-FINALIZAR-FIM. EXIT.