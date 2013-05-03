! A fortran95 program for G95
! By WQY
 Dimension Y(20)
Open (UNIT = 6,FILE ='M6')
A = 0.01
B1 =0.01
B2 =0.01
AK1 = 5.8E-10
AK2 = 1.7E-8
AKW = 1.E-14
EE = 2.30258509
H = 1.0
Y(1) = H+B1＊H／（AK1+H）+B2＊H／（AK2+H）-AKW／H-A
HH1=-LOG（H）／EE
II=0
Write (6,10) II,HH1,H,Y(1)
 format （1x,I5,3E20.10）
Do 100 I=2,20
    HH1=HH1+1
    H=10.**(-HH1)
    Y(I)=H+B1*H/(AK1+H)+B2*H/(AK2+H)-AKW/H-A
    Write (6,10) I,HH1,H,Y(I)
    IF(Y(I)*Y(I-1).LT.0.0) GOTO 20
100 continue
20  stop
end
