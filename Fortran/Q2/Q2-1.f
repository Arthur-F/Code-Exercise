      DIMENSION Y(100)
      OPEN (UNIT=1,FILE='M1')
      EE=2.30258509
      X=1.0
 10   FORMAT (1X,I5,2E20.10)
      DO 100 I=1,100
     	Y(I)=EE*LOG(X*X*(8.0-X*X)**0.5)+((6.0-X)*X)**0.5-1
     	WRITE (1,10)I,X,Y(I)
     	X=X+1.0
 100  CONTINUE
 20   STOP
      END
