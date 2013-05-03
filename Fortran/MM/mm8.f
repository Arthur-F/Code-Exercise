      OPEN(UNIT=6,FILE='M6')
	  E=1.E-5
	  X=1.E-17
 40   FORMAT(1X,I5,E20.10)
      I=0
 30	  I=I+1
	  IF(I.GT.100) GOTO 20
	  Y=-1-(5.5E11+2*4.77E13)*9.3E-17
	  X2=X-(0.1-X+9.3E-17*(1-X*5.5E11-X*X*4.77E13))/(-1-(5.5E11+2*4.77
     &E13)*9.3E-17)
	  WRITE(6,40) I,X2
	  IF(ABS((X2-X)/X).LT.E) GOTO 20
	  X=X2
	  GOTO 30
 20   STOP
      END
