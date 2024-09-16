% centralized decision-making
% globe efficiency
clc
clear
x1=[7.7123 	12.0528 	37.7129 	6.9786 	10.7206 	6.9446 	11.3100 	11.4392 	8.0122 	59.0738 	37.3411 	35.7406 	31.1919 	26.7942 	52.7538 	51.9493 	39.6676 	38.7058 	46.4423 	24.8935 	3.3722 	19.8155 	38.1795 	18.1330 	22.9288 	26.9540 	5.9701 	4.3754 	2.7357 	9.2687 
0.4772 	5.8764 	56.0730 	46.1063 	82.0044 	28.9274 	15.3953 	35.8967 	5.1557 	33.9431 	21.1239 	36.1180 	22.7355 	25.1613 	66.0520 	39.6153 	41.1692 	55.5688 	36.5977 	22.6972 	2.4469 	20.6268 	35.0182 	38.8396 	37.3310 	33.9228 	11.7320 	5.0735 	27.9401 	26.3543 
12.9673 	12.5006 	9.8084 	7.7473 	10.2075 	38.7864 	8.9887 	11.2224 	32.1202 	25.6329 	20.0845 	11.9156 	18.3561 	10.1343 	29.0223 	19.1067 	25.0709 	16.3517 	45.7218 	9.9640 	4.0030 	8.0725 	19.3696 	11.1765 	12.6867 	7.8494 	5.8744 	2.8350 	3.8134 	13.4541 
49.5100 	44.1700 	97.5200 	48.4300 	43.6600 	56.9500 	23.6700 	31.0000 	45.6500 	118.4200 	78.4600 	34.8300 	36.0300 	18.8400 	144.5700 	63.2400 	40.3000 	24.8900 	63.6300 	13.6100 	37.1700 	79.4900 	177.3600 	22.1800 	12.7700 	68.0800 	24.3700 	44.3800 	16.5200 	97.2500]; %以行的形态
x2=[21.5360 	15.6183 	75.9197 	37.2900 	25.3956 	43.5170 	26.9073 	37.5130 	24.2814 	80.7000 	58.5000 	63.6590 	39.7300 	46.6613 	100.7021 	96.3975 	59.2700 	69.1838 	115.2100 	49.6000 	9.4472 	31.2432 	83.7500 	36.2295 	48.5800 	38.7621 	26.4743 	6.0782 	6.9466 	25.2322 
0.2094 	0.2521 	0.2367 	0.2767 	0.2963 	0.2306 	0.3354 	0.3682 	0.2144 	0.1262 	0.1612 	0.1992 	0.1198 	0.2580 	0.1511 	0.1873 	0.1739 	0.2021 	0.1607 	0.2755 	0.3501 	0.2054 	0.2220 	0.3547 	0.2915 	0.2217 	0.4533 	0.6284 	0.3837 	0.3909];
z1=[35.3713 	14.1043 	35.1045 	17.0267 	17.2125 	24.9095 	11.7268 	13.6127 	38.1553 	99.6315 	62.3517 	37.1140 	42.3950 	24.7575 	71.0675 	54.2592 	45.8283 	39.7521 	107.6711 	21.2371 	5.3089 	23.6058 	46.6158 	16.7693 	23.2238 	25.7932 	8.7183 	2.9660 	3.7485 	13.5971];
z2=[19.7877 	4.9582 	19.9002 	11.3433 	9.0041 	15.3772 	10.9504 	8.8931 	22.7248 	48.5832 	37.6619 	21.5219 	23.1794 	15.4869 	48.2722 	28.5068 	25.6468 	16.4617 	71.3306 	14.3407 	3.4417 	17.5020 	21.1818 	11.4649 	12.8692 	15.3430 	7.6883 	1.9011 	2.1619 	7.9823 
0.5049 	0.2887 	0.1132 	0.1515 	0.2055 	0.1715 	0.1294 	0.1437 	0.3073 	0.1756 	0.1645 	0.1220 	0.1121 	0.1214 	0.1340 	0.1074 	0.1470 	0.1321 	0.1439 	0.0946 	0.1470 	0.1542 	0.1414 	0.0832 	0.1128 	0.1371 	0.1193 	0.1375 	0.1414 	0.1488];
y11=[8.9184 	15.8466 	91.4209 	56.4863 	79.4279 	53.3388 	20.3662 	27.8211 	19.2912 	80.0804 	38.1407 	40.8064 	27.8109 	24.2308 	93.7117 	46.0631 	35.4752 	31.0642 	56.9120 	24.6717 	4.3067 	15.6255 	31.5163 	26.1129 	22.3279 	29.6273 	16.4488 	5.1752 	21.2414 	45.5275];
y22=[0.4345 	0.3630 	0.4201 	0.3666 	0.4560 	0.3988 	0.4055 	0.3609 	0.4767 	0.3885 	0.4223 	0.4798 	0.3992 	0.5053 	0.3588 	0.5014 	0.3578 	0.4699 	0.4633 	0.4138 	0.3665 	0.4032 	0.4596 	0.4213 	0.4209 	0.4333 	0.3666 	0.4678 	0.4297 	0.4817];
y1=1./y11;
y2=1./y22;
n=size(x1',1) ;  m1=size(x1,1) ;  m2=size(x2,1); p=size(z1,1);  q=size(z2,1);  s1=size(y1,1); s2=size(y2,1);
epsilon=10^-6; 
eps=10^-7;
for i=1:n
f=-[zeros(1,m1) zeros(1,m2)  z1(:,i)'  z2(:,i)' y1(:,i)'  y2(:,i)'];
A=[-x1' zeros(n,m2) z1' -z2' y1' zeros(n,s2);
    zeros(n,m1) -x2' -z1' z2' zeros(n,s1) y2';
    (eps-1)*x1(:,i)' eps*x2(:,i)' eps*z1(:,i)' (eps-1)*z2(:,i)' zeros(1,s1) zeros(1,s2);
    eps*x1(:,i)' (eps-1)*x2(:,i)' (eps-1)*z1(:,i)' eps*z2(:,i)' zeros(1,s1) zeros(1,s2)];
b=zeros(2*n+2,1);
Aeq=[x1(:,i)' x2(:,i)' z1(:,i)' z2(:,i)' zeros(1,s1) zeros(1,s2)];
beq=[1];
lb=epsilon.*ones(1,m1+m2+p+q+s1+s2); 
ub=[];
[w(i,:),fval(:,i)]=linprog(f,A,b,Aeq,beq,lb,ub); 
 eii=w(i,m1+m2+1:m1+m2+p)*z1(:,i)+w(i,m1+m2+p+1:m1+m2+p+q)*z2(:,i)+w(i,m1+m2+p+q+1:m1+m2+p+q+s1)*y1(:,i)+w(i,m1+m2+p+q++s1+1:m1+m2+p+q+s1+s2)*y2(:,i);
 for k=1:n %social protection
 f=-[zeros(1,m1) zeros(1,m2) zeros(1,p) zeros(1,q) zeros(1,s1) zeros(1,s2) 1];
 A=[zeros(q,m1) zeros(q,m2) zeros(q,p) diag(-z2(:,k)') zeros(q,s1) zeros(q,s2) ones(q,1);
    zeros(s2,m1) zeros(s2,m2) zeros(s2,p) zeros(s2,q) zeros(s2,s1) diag(-y2(:,k)') ones(s2,1);
     -x1' zeros(n,m2) z1' -z2' y1' zeros(n,s2) zeros(n,1);
    zeros(n,m1) -x2' -z1' z2' zeros(n,s1) y2' zeros(n,1);
     (eps-1)*x1(:,i)' eps*x2(:,i)' eps*z1(:,i)' (eps-1)*z2(:,i)' zeros(1,s1) zeros(1,s2) 0;
    eps*x1(:,i)' (eps-1)*x2(:,i)' (eps-1)*z1(:,i)' eps*z2(:,i)' zeros(1,s1) zeros(1,s2) 0];
 b=zeros(2*n+q+s2+2,1);
 Aeq=[x1(:,i)' x2(:,i)' z1(:,i)' z2(:,i)' zeros(1,s1) zeros(1,s2) 0;
     -eii*x1(:,i)' -eii*x2(:,i)' (1-eii)*z1(:,i)' (1-eii)*z2(:,i)' y1(:,i)' y2(:,i)' 0];
 beq=[1;0];
 lb=epsilon.*ones(1,m1+m2+p+q+s1+s2+1); 
 ub=[];
 v=linprog(f,A,b,Aeq,beq,lb,ub);
 e(k,i)=(z1(:,k)'*v(m1+m2+1:m1+m2+p)+z2(:,k)'*v(m1+m2+p+1:m1+m2+p+q)+y1(:,k)'*v(m1+m2+p+q+1:m1+m2+p+q+s1)+y2(:,k)'*v(m1+m2+p+q+s1+1:m1+m2+p+q+s1+s2))./(x1(:,k)'*v(1:m1)+x2(:,k)'*v(m1+1:m1+m2)+z1(:,k)'*v(m1+m2+1:m1+m2+p)+z2(:,k)'*v(m1+m2+p+1:m1+m2+p+q));
 e1(k,i)=(z1(:,k)'*v(m1+m2+1:m1+m2+p)+y1(:,k)'*v(m1+m2+p+q+1:m1+m2+p+q+s1))./(x1(:,k)'*v(1:m1)+z2(:,k)'*v(m1+m2+p+1:m1+m2+p+q));
 e2(k,i)=(z2(:,k)'*v(m1+m2+p+1:m1+m2+p+q)+y2(:,k)'*v(m1+m2+p+q+s1+1:m1+m2+p+q+s1+s2))./(x2(:,k)'*v(m1+1:m1+m2)+z1(:,k)'*v(m1+m2+1:m1+m2+p));
 end
end
e
a=mean(e,2)
e1
a1=mean(e1,2)
e2
a2=mean(e2,2)




    


