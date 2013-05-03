      DIMENSION Y(500)
      OPEN (UNIT=1,FILE='M1')
      EE=2.30258509
      AK=1.6D-5
      B1=7.6D0
      B2=30.9D0
      B3=12.3D0
      B4=8.7D0
      X1=0.0D0
 10   FORMAT (1X,I5,2E40.20)
      DO 100 I=1,500
      Y(I)=(2.0D0)*AK*B4*(X1*X1*X1*X1)+(AK*B3+1.0D0)*(X1*X1*X1)
     &-X1*X1*(2.0D-02)-AK*B1*X1-AK*(2.0D0)
      WRITE (1,10)I,X1,Y(I)
      X1=X1+0.001D0
 100  CONTINUE
 20   STOP
      END
