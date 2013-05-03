            OPEN(UNIT=6,FILE='M7')
            A=0.01
            B1=0.01
            B2=0.01
            AK1=5.8E-10
            AK2=1.7E-8
            AKW=1.E-14
            E=1.E-4
            EE=2.30258509
            H1=1.0
            HH1=-LOG(H1)/EE
            H2=1.E-14
            HH2=-LOG(H2)/EE
            Y1=H1+B1*H1/(AK1+H1)+B2*H1/(AK2+H1)-AKW/H1-A
            WRITE(6,10) HH1,H1,Y1
  10        FORMAT(1X,5X,3E20.10)
  40        FORMAT(1X,I5,3E20.10)
            Y2=H2+B1*H2/(AK1+H2)+B2*H2/(AK2+H2)-AKW/H2-A
            WRITE(6,10) HH2,H2,Y2
            IF(Y1*Y2.GT.0.0) GOTO 20
            I=0
  30        I=I+1
            IF(I.GT.100) GOTO 20
            IF(HH1.GT.HH2) HA=HH2
            IF(HH1.LT.HH2) HA=HH1
            HH3=HA+0.500*ABS(HH1-HH2)
            H3=10**(-HH3)
            Y3=H3+B1*H3/(AK1+H3)+B2*H3/(AK2+H3)-AKW/H3-A
            IF(ABS(HH3-HH1).LT.E) GOTO 20
            WRITE(6,40) I,HH3,H3,Y3
            IF(Y3*Y1.GT.0.0) HH1=HH3
            IF(Y3*Y2.GT.0.0) HH2=HH3
            Y1=H1+B1*H1/(AK1+H1)+B2*H1/(AK2+H1)-AKW/H1-A
            Y2=H2+B1*H2/(AK1+H2)+B2*H2/(AK2+H2)-AKW/H2-A
            GOTO 30
  20        STOP
            END
