100 REM *** FAHRENHEIT TO CELSIUS CONVERSION PROGRAM     ***
120 REM *** BATCH MODE 2. READS FROM ASCII TEXT FILE     ***
140 REM *** NAMED finputbis.txt AND OUTPUTS ON STDOUT    ***
160 REM *** EXECUTION INFO ARE PRINTED ON LOGFILE        ***
180 REM *** NAMED F2C2F.LOG                              ***
185 REM SAVING PROGRAM NAME IN PN$ VARIABLE
190 LET PN$ = "F2CBIS.BAS"
195 REM READ INPUT FROM FILE finput.txt
200 'OPEN "I",1,"finputbis.csv"
205 OPEN "finputbis.csv" FOR INPUT AS #1
210 REM APPEND LOG OUTPUT TO FILE F2C2F.LOG
220 'OPEN "A",2,"F2C2F.log"
225 OPEN "F2C2F.log" FOR APPEND AS #2
240 PRINT #2, "******************************************"
260 PRINT #2, "*** PROGRAM F2CBIS.BAS CONVERTS TEMPERATURE"
280 PRINT #2, "*** FROM FAHRENHEIT TO CELSIUS DEGREES"
300 PRINT #2, "*** BATCH MODE 2"
320 PRINT #2, "******************************************"
330 PRINT #2, "VALUES ARE APROXIMATED TO CLOSEST INTEGER"
335 PRINT #2, "VALUE -999 REPRESENTS END OF INPUT DATA"
340 PRINT #2, "NB DATES ARE IN US FORMAT: mm-dd-yyyy"
350 PRINT #2, "LOG FORMAT: DATE|TIME|PROGRAM|MESSAGE"
360 PRINT #2, "******************************************"
380 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"STARTING PROGRAM ";PN$
400 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READING TEMPERATURES IN FAHRENHEIT DEGREES"
420 INPUT #1, F
440 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READ F = ";F
445 IF F = -999 THEN 620
450 IF F < -459.67 THEN PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"READ ";F;": ILLEGAL INPUT":GOTO 420
460 LET C = (F - 32)*5/9
470 PRINT USING "####.##";C
480 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";F;" FAHRENHEIT DEGREES = ";INT(C+.5);" CELSIUS DEGREES"
485 GOTO 420
660 CLOSE 1,2
620 PRINT #2, DATE$;"|";TIME$;"|";PN$;"|";"TERMINATING PROGRAM.GOODBYE."
630 PRINT -999
680 'SYSTEM
700 END
