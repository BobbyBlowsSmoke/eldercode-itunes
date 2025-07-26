IDENTIFICATION DIVISION.
PROGRAM-ID. INSTALL-ITUNES.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-COMMAND  PIC X(256).
01 WS-TRIMMED  PIC X(256).
*>01 WS-LENGTH   PIC 9(4) BINARY.

PROCEDURE DIVISION.
*>BEGIN.
MAIN-PARAGRAPH.
       DISPLAY "Starting iTunes installation automation..."

       *>* Step 1: sudo apt update -y
       MOVE "sudo apt update -y" TO WS-COMMAND
       *>CALL "SYSTEM" USING WS-COMMAND
       PERFORM EXEC-COMMAND

       *>* Step 2: sudo apt install wine64 -y
       MOVE "sudo apt install wine64 -y" TO WS-COMMAND
       *>CALL "SYSTEM" USING WS-COMMAND 
       PERFORM EXEC-COMMAND

       *>* Step 3: Run the iTunes installer
       MOVE "wine /home/bobbyblowssmoke/Downloads/iTunes64Setup.exe" TO WS-COMMAND
       *>CALL "SYSTEM" USING WS-COMMAND
       PERFORM EXEC-COMMAND

       DISPLAY "Installation commands executed. Check for errors."
       STOP RUN.

EXEC-COMMAND.
       *>* Trim trailing spaces from WS-COMMAND -> WS-TRIMMED
       MOVE FUNCTION TRIM(WS-COMMAND TRAILING) TO WS-TRIMMED
       *>INSPECT WS-TRIMMED REPLACING TRAILING SPACES BY LOW-VALUES
       CALL "SYSTEM" USING WS-TRIMMED
       .