       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ02.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: LEITURA DE UM REGISTRO
      *== DATA: 05/03/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "C:\Users\yago.moura\Documents\study_portifolio\COBOL\SEMANA5\CLIENTES.DAT.txt"
               FILE STATUS IS FS-CLIENTES.

       DATA DIVISION.
       FILE SECTION.
       FD  CLIENTES.
       01  REG-CLIENTES.
           05 REG-ID            PIC 9(04).
           05 REG-NOME          PIC X(20).
           05 REG-TELEFONE      PIC X(11).

       WORKING-STORAGE             SECTION.
       77  FS-CLIENTES  PIC 9(02) VALUE ZEROS.
       77  WRK-MSG-ERRO PIC X(30) VALUE SPACES.
      
       PROCEDURE                   DIVISION.
       0000-PRINCIPAL              SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
               STOP RUN.

       0100-INICIALIZAR            SECTION.
           OPEN INPUT CLIENTES .
           IF FS-CLIENTES EQUAL 35
               MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
               PERFORM 9000-TRATA-ERRO
           ELSE
               DISPLAY "ARQUIVO OK ".

       0200-PROCESSAR              SECTION.
           READ CLIENTES.
           IF FS-CLIENTES EQUAL 10
               DISPLAY "ARQUIVO VAZIO "
           ELSE
               DISPLAY "ID...  " REG-ID
               DISPLAY "NOME...  " REG-NOME
               DISPLAY "TELEFONE...  " REG-TELEFONE
           END-IF.

       0300-FINALIZAR              SECTION.
           DISPLAY "FIM DE PROGRAMA".
           CLOSE CLIENTES.

       9000-TRATA-ERRO.
           DISPLAY WRK-MSG-ERRO.
               GOBACK.