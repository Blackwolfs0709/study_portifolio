       IDENTIFICATION                  DIVISION.
       PROGRAM-ID. PROG1.
      *===========================================
      *====AUTHOR: YAGO
      *====CORREÇÃO 
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMA.

       DATA                            DIVISION.
       WORKING-STORAGE                 SECTION.
       01  WRK-VALDOLAR    PIC 9(003)V99  VALUE ZEROS.
       01  WRK-QTDDOLAR    PIC 9(003)V99  VALUE ZEROS.
       01  WRK-VALOR-REAL  PIC 9(005)V99  VALUE ZEROS.
       01  WRK-VR-EDT      PIC ZZ.ZZ9,99.
      *TIPOS DE VARIAVEIS:
      *9 - NUMERO
      *A - LETRA
      *X - ALFANUMERICO
       
       PROCEDURE                       DIVISION.
           DISPLAY "INSIRA VALOR DO DOLAR "
           ACCEPT WRK-VALDOLAR.
           DISPLAY "INSIRA QUANTIDADE DE DOLAR"
           ACCEPT WRK-QTDOLAR.

           COMPUTE WRK-VALOR-REAL = WRK-QTDDOLAR * WRK-VALDOLAR.
           MOVE WRK-VALOR-REAL TO WRK-VR-EDT.

           DISPLAY "CONVERSÃO " WRK-VR-EDT. 
           STOP RUN.
   