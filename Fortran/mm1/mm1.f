            DIMENSION Y(20)
            OPEN(UNIT=6,FILE='M6')
            A=0.01
            B1=0.01
            B2=0.01
            AK1=5.8E-10
            AK2=1.7E-8
            AKW=1.E-14
            H=1.0
            Y(1)=H+B1*H/(AK1+H)+B2*H/(AK2+H)-AKW/H-A
            II=0
            WRITE(6,10) II,H,Y(1)
  10        FORMAT(1X,I5,2E20.10)
            DO 100 I=1,20
            H=H*0.1
            Y(I)=H+B1*H/(AK1+H)+B2*H/(AK2+H)-AKW/H-A
            WRITE(6,10) I,H,Y(I)
            IF(Y(I)*Y(I-1).LT.0.0) GOTO 20
  100       CONTINUE
  20        STOP
            END
