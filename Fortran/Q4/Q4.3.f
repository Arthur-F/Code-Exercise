      OPEN (UNIT=6,FILE='M3')
      X=0.0
      Y=X*X+X-1
      WRITE(6,10)'I=','X= ','Y='
 40   FORMAT(1X,I5,2E20.10)
 10   FORMAT(1X,A5,2A20)
      I=1
      WRITE(6,40) I,X,Y
 30   I=I+1
      IF(I.GT.100) GOTO 20
      X=1/(X+1)
      Y=X*X+X-1
      WRITE(6,40) I,X,Y
      IF(ABS(Y).LT.1.E-7) GOTO 20
      GOTO 30
 20   STOP
      END