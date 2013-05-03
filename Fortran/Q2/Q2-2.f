      OPEN (UNIT=6,FILE='M6')
      EE=2.30258509
      XA=0.1
      XB=2.8
      Y1=EE*LOG(XA*XA*(8.0-XA*XA)**0.5)+((6.0-XA)*XA)**0.5-1.0
      WRITE(6,9)'I' ,'X4' ,'Y'
      WRITE(6,10)XA,Y1
 9    FORMAT(1X,A2,12X,A2,18X,A2)
 10   FORMAT(1X,5X,2E20.10)
 40   FORMAT(1X,I5,2E20.10)
      Y2=EE*LOG(XB*XB*(8.0-XB*XB)**0.5)+((6.0-XB)*XB)**0.5-1.0
      WRITE(6,10)XB,Y2
      I=0
 30   I=I+1
      IF(I.GT.100) GOTO 20
      XC=0.5*(XA+XB)
      Y3=EE*LOG(XC*XC*(8.0-XC*XC)**0.5)+((6.0-XC)*XC)**0.5-1.0   
      IF(ABS(XC-XA).LT.1.E-6) GOTO 20
      WRITE (6,40) I,XC,Y3
      IF(Y3*Y1.GT.0.0) XA=XC
      IF(Y3*Y2.GT.0.0) XB=XC
      Y1=EE*LOG(XA*XA*(8.0-XA*XA)**0.5)+((6.0-XA)*XA)**0.5-1.0 
      Y2=EE*LOG(XB*XB*(8.0-XB*XB)**0.5)+((6.0-XB)*XB)**0.5-1.0
      GOTO 30
 20   XX=(8.0-XC*XC)**0.5
      XY=6.0-XC
      XZ=(5-XY)/XX
      WRITE(6,58)'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      WRITE(6,59)'X1','X2','X3','X4'
      WRITE(6,60)XZ,XX,XY,XC
 58   FORMAT(1X,A40)
 59   FORMAT(6X,A2,13X,A2,11X,A2,11X,A2)
 60   FORMAT(1X,4E13.5)
      STOP 
      END