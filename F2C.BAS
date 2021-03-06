100 REM *** FAHRENHEIT TO CELSIUS CONVERSION PROGRAM  ***
120 REM *** BATCH VERSION. READS FROM ASCII TEXT FILE ***
140 REM *** NAMED finput.txt AND OUTPUTS ON STDOUT    ***
160 REM *** EXECUTION INFO ARE PRINTED ON LOGFILE     ***
180 REM *** f2c.log                                   ***
185 REM SAVING PROGRAM NAME IN PN$ VARIABLE
190 LET PN$ = "F2C.BAS"
195 REM READ INPUT FROM FILE finput.txt
200 OPEN "I",1,"finput.txt"
210 REM APPEND LOG OUTPUT TO FILE F2C2F.LOG
220 OPEN "O",2,"F2C2F.log"
240 PRINT #2, "******************************************"
260 PRINT #2, "*** PROGRAM F2C.BAS CONVERTS TEMPERATURE"
280 PRINT #2, "*** FROM FAHRENHEIT TO CELSIUS DEGREES"
300 PRINT #2, "*** BATCH MODE"
320 PRINT #2, "******************************************"
330 PRINT #2, "VALUES ARE APROXIMATED TO CLOSEST INTEGER"
340 PRINT #2, "NB DATES ARE IN US FORMAT: mm-dd-yyyy"
350 PRINT #2, "LOG FORMAT: DATE|TIME|PROGRAM|MESSAGE"
360 PRINT #2, "******************************************"
380 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"STARTING PROGRAM ";PN$
400 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READING TEMPERATURE IN FAHRENHEIT DEGREES"
420 INPUT #1, F
440 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READ F : ";F
445 IF F < -459.67 THEN PRINT #2, DATE$;"|";TIME$;"|";PN$;"|"F;": ILLEGAL INPUT":GOTO 500
460 LET C = (F - 32)*5/9
470 PRINT USING "####.##";C
480 PRINT #2, DATE$;"|";TIME$;"|";PN$;"| ";F;" FAHRENHEIT DEGREES = ";INT(C+.5);" CELSIUS DEGREES"
500 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READING RUN AGAIN CONVERSION OPTION (YES/NO)"
520 INPUT #1, A$
540 IF A$ = "YES" OR A$ = "yes" OR A$ = "Yes" THEN 380
560 IF A$ = "NO" OR A$ = "no" OR A$ = "No" THEN 600
570 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READ ";A$;": ILLEGAL INPUT"
580 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"ACCEPTABLE INPUTS: YES OR NO": GOTO 500
600 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"PROGRAM END HAS BEEN SELECTED"
620 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"EXPECTING TO READ ENTER TO END"
640 INPUT #1, Z
660 CLOSE 1,2
620 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"TERMINATING PROGRAM.GOODBYE."
630 PRINT -999
680 SYSTEM
700 END
