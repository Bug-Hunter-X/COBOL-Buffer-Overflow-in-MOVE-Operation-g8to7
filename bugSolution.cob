01  WS-AREA-1.         PIC X(100). 
01  WS-AREA-2.         PIC X(100). 
01  WS-LENGTH PIC 9(4) COMP.

PROCEDURE DIVISION.
    MOVE FUNCTION LENGTH(WS-AREA-1) TO WS-LENGTH.
    IF WS-LENGTH > 100 THEN
        DISPLAY "Error: Data exceeds target field size." 
        STOP RUN.
    END-IF.
    MOVE WS-AREA-1 TO WS-AREA-2
    DISPLAY "Data moved successfully."
    STOP RUN.
END PROGRAM.