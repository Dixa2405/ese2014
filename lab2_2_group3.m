
% answer 2_2_1.1
subplot(2,3,1);
 a=[-2 -1 0 1 2];
  y =repmat(a,[1,5]);
  stem(y)
  
%answer 2_2_1.2
subplot(2,3,2);
n=[0:11];
x3 = sin(0.1*pi*n).*(stepseq(0,0,11)-stepseq(10,0,11));
z= repmat(x3,[1,4]);
stem(z)  


%answer 2_2_2.1

subplot(2,3,3);
n = [-3:3];
x = [2,4,-3,1,-5,4,7];
[x1,n1] = sigshift(x,n,3); #step 1
[x2,n2] = sigshift(x,n,-4); #step2
[x3,n3] = sigadd(2*x1,n1,3*x2,n2); #step 3
[x4,n4] = sigadd(x3,n3,-x,n); #addition
stem(n4,x4);

%answer 2_2_2.2
subplot(2,3,4)
n = [-3:3];
x = [2,4,-3,1,-5,4,7]; 
a = [-10:10];
 b = 2*exp(0.5*a); 
 c = cos(0.1*pi*a);



#answer 2_2_3.2 
#Generate exp(j0.1?n), -100 ? n ? 100
subplot(2,3,5)
n1 = [-100:100]; 
x1 = exp(0.1*j*pi*n1);
stem(n1,real(x1))
