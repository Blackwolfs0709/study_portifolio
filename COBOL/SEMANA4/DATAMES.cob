       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATAMES.
      *===========================================
      *== AUTOR: YAGO             EMPRESA: XPTO
      *== OBJETIVO: MODULO QUE DEVOLVE DATA POR EXTENSO
      *== DATA: 04/03/2025
      *== OBSERVAÇÕES:
      *===========================================
       ENVIROMENT                  DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       01  WRK-DATA.
           05  WRK-ANO PIC 9(04).
           05  WRK-MES PIC 9(02).
           05  WRK-DIA PIC 9(02).
       01  WRK-MESES.
           05  WRK-MES-EXT PIC X(09) OCCURS 12 TIMES.

       LINKAGE                     SECTION.
       01  LNK-AREA.
           05  LNK-DATA PIC X(40).
      
       PROCEDURE DIVISION USING LNK-AREA.
       0001-PRINCIPAL              SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           GOBACK.
       0100-INICIALIZAR            SECTION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
       0200-PROCESSAR              SECTION.
           PERFORM 0250-MONTAMES
           
           STRING 'SAO PAULO, '
                   WRK-DIA 
                   ' DE '
                   WRK-MES-EXT(WRK-MES)
                   ' DE '
                   WRK-ANO
                   INTO LNK-DATA.

       0250-MONTAMES               SECTION.
           MOVE "JANEIRO " TO WRK-MES-EXT(1).
           MOVE "FEVEREIRO " TO WRK-MES-EXT(2).
           MOVE "MARÇO " TO WRK-MES-EXT(3).
           MOVE "ABRIL " TO WRK-MES-EXT(4).
           MOVE "MAIO " TO WRK-MES-EXT(5).
           MOVE "JUNHO " TO WRK-MES-EXT(6).
           MOVE "JULHO " TO WRK-MES-EXT(7).
           MOVE "AGOSTO " TO WRK-MES-EXT(8).
           MOVE "SETEMBRO " TO WRK-MES-EXT(9).
           MOVE "OUTUBRO " TO WRK-MES-EXT(10).
           MOVE "NOVEMBRO " TO WRK-MES-EXT(11).
           MOVE "DEZEMBRO " TO WRK-MES-EXT(12).

       0300-FINALIZAR              SECTION.
           STOP RUN.