IDENTIFICATION DIVISION.
PROGRAM-ID. RUNSHELL.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 CMD-Line    PIC X(100).
*>01 RETURN-CODE PIC S9(4) COMP.

PROCEDURE DIVISION.
       PERFORM MAIN-PARAGRAPH
       STOP RUN.

MAIN-PARAGRAPH.
       DISPLAY "Running 'ls -l' command...".

       MOVE "ls -l" TO CMD-LINE.
       CALL "SYSTEM" USING CMD-LINE
                     *>RETURNING RETURN-CODE.

       DISPLAY "Command finished with return code: " RETURN-CODE.

       DISPLAY "Running 'date' command...".

       MOVE "date" TO CMD-LINE.
       CALL "SYSTEM" USING CMD-LINE
                     *>RETURNING RETURN-CODE.

       DISPLAY "Command finished with return code: " RETURN-CODE.

       STOP RUN.
