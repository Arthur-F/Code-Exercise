      OPEN (UNIT=6,FILE='M1')
      XA=0.0
      XB=1.0
      Y1=XA*XA+XA-1
      WRITE(6,9)'I' ,'X' ,'Y'
      WRITE(6,10)XA,Y1
 9    FORMAT(1X,A2,12X,A2,23X,A2)
 10   FORMAT(1X,5X,2E25.10)
 40   FORMAT(1X,I5,2E25.10)
      Y2=XB*XB+XB-1
      WRITE(6,10)XB,Y2
      I=0
 30   I=I+1
      IF(I.GT.100) GOTO 20
      XC=0.5*(XA+XB)
      Y3=XC*XC+XC-1
      IF(ABS(XC-XA).LT.1.E-7) GOTO 20
      WRITE (6,40) I,XC,Y3
      IF(Y3*Y1.GT.0.0) XA=XC
      IF(Y3*Y2.GT.0.0) XB=XC
      Y1=XA*XA+XA-1 
      Y2=XB*XB+XB-1
      GOTO 30
 20   STOP 
      END