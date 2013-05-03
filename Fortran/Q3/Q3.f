      OPEN (UNIT=3,FILE='M3')
      AK=1.6E-5
      B1=7.6
      B2=30.9
      B3=12.3
      B4=8.7
      X1=0.02
      X2=0.5
      E=1.E-6
      Y1=2.0*AK*B4*X1**4+(AK*B3+1.0)*X1**3-0.02*X1*X1-AK*B1*X1-2.0*AK
      WRITE(3,9)'I=','X=','Y='
      WRITE(3,10)X1,Y1
 9    FORMAT(3X,A2,10X,A2,18X,A2)
 10   FORMAT(1X,5X,2E20.10)
 40   FORMAT(1X,I5,2E20.10)
      Y2=2.0*AK*B4*X2**4+(AK*B3+1.0)*X2**3-0.02*X2*X2-AK*B1*X2-2.0*AK
      WRITE(3,10)X2,Y2
      IF(Y1*Y2.GT.0.0) GOTO 20
      I=0
 30   I=I+1
      IF(I.GT.100) GOTO 20
      X3=0.5*(X1+X2)
      Y3=2.0*AK*B4*X3**4+(AK*B3+1.0)*X3**3-0.02*X3*X3-AK*B1*X3-2.0*AK
      IF(ABS(X3-X1).LT.E) GOTO 20
      WRITE(3,40)I,X3,Y3
      IF(Y3*Y1.GT.0.0) X1=X3
      IF(Y3*Y2.GT.0.0) X2=X3
      Y1=2.0*AK*B4*X1**4+(AK*B3+1.0)*X1**3-0.02*X1*X1-AK*B1*X1-2.0*AK
      Y2=2.0*AK*B4*X2**4+(AK*B3+1.0)*X2**3-0.02*X2*X2-AK*B1*X2-2.0*AK
      GOTO 30
 20   C=X3
      P=AK/(C*C)
      C1=B1*P*C
      C2=B2*P*C**2
      C3=B3*P*C**3
      C4=B4*P*C**4
      S=P+C1+C2+C3+C4
      WRITE(3,58)'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      WRITE(3,59)'CL','PB','PBCL','PBCL2','PBCL3','PBCL4','S'
      WRITE(3,60)C,P,C1,C2,C3,C4,S
 58   FORMAT(1X,A40)
 59   FORMAT(3X,A5,7X,A5,7X,A5,7X,A5,7X,A5,7X,A5,7X,A5)
 60   FORMAT(1X,7E12.4)
      STOP
      END