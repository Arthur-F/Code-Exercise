  1         Open(UNIT=6,File='M6')
            E=1.E-5
            X=1.5
  40         FORMAT(1X,I5,E20.10)
            I=0
  30        I=I+1
            IF(I.GT.100) GOTO 20
            X2=(X+1)**(1./3.)
            WRITE(6,40)I,X2
            IF(ABS((X2-X)/X).LT.E) GOTO 20
            X=X2
            GOTO 30
  20        STOP
            END  
