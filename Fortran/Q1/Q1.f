      OPEN (UNIT=6,FILE='M6')
      B=84.0
      C=160.0
      D=3.0
      E=84.0
      X=1.5
      WRITE(6,10)'I=','X=     ','Y=     '
 40   FORMAT(1X,I5,2E20.10)
 10   FORMAT(1X,A5,2A20)
      I=0
 30   I=I+1
      IF(I.GT.100) GOTO 20
      Y=X**3-B*X+C
      WRITE(6,40) I,X,Y
      IF(ABS(Y).LT.1.E-4) GOTO 20
      X=X-Y/(D*X*X-E)
      GOTO 30
 20   STOP
      END