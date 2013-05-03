      OPEN (UNIT=6,FILE='M2')
      X=0.0
      WRITE(6,10)'I=','X=     ','Y=     '
 40   FORMAT(1X,I5,2E20.10)
 10   FORMAT(1X,A5,2A20)
      I=0
 30   I=I+1
      IF(I.GT.100) GOTO 20
      Y=X**2+X-1.0
      WRITE(6,40) I,X,Y
      IF(ABS(Y).LT.1.E-7) GOTO 20
      X=X-Y/(2*X+1)
      GOTO 30
 20   STOP
      END