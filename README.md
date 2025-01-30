# COBOL Buffer Overflow Example

This repository demonstrates a potential buffer overflow vulnerability in a COBOL program.  The vulnerability arises from a `MOVE` operation where the source data exceeds the size of the target field.  This can lead to unpredictable behavior and program crashes.

## Vulnerability

The `bug.cob` file contains a COBOL program with two data areas, `WS-AREA-1` and `WS-AREA-2`, both defined with a size of 100 characters. The program attempts to move the contents of `WS-AREA-1` into `WS-AREA-2`. If `WS-AREA-1` contains more than 100 characters, a buffer overflow occurs.

## Solution

The `bugSolution.cob` file demonstrates a corrected version of the program.  This version includes checks to ensure the source data does not exceed the target field's size before performing the `MOVE` operation.