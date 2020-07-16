
 # Lab5_group3
 
 
  
	%QUESTION 1
ws = 0.3*pi;
 wp = 0.4*pi;
 wp1 = 0.5*pi;
 ws1 = 0.6*pi;
 As = 50; 
 Rp=0.5;
  tr_width = min((wp-ws),(ws1-wp1));
 M = ceil(6.6*pi/tr_width);
 M = 2*floor(M/2)+1;
 n=[0:1:M-1];
 wc1 = (ws+wp)/2; 
 wc2 = (wp1+ws1)/2; 
 h2 = ideal_lp(wc2,M) - ideal_lp(wc1,M); 
 h1 =  (hamming(M))'; 
 h = h2 .* h1; 
 [H w] = freqz(h,1);
 m=abs(H);
 d = 20*log10((m+eps)/max(m)); 
 subplot(2,2,1); 
 stem(n,h2);
subplot(2,2,2);
  stem(n,h1);
subplot(2,2,3);
 stem(n,h);
subplot(2,2,4);
 plot(w/pi,d)

 
 
 
%QUESTION 2
ws = 0.4*pi; 
wp = 0.6*pi; 
Rp = 0.004; 
As = 50; 
tr_width = abs(wp-ws); 
M = ceil(6.6*pi/tr_width);
M = 2*floor(M/2)+1;
n = 0:M-1; 
h1 =  (hanning(M))'; 
wc = (ws+wp)/2;
h2 = ideal_lp(pi,M)-ideal_lp(wc,M); 
h = h2 .* h1; 
[H w] = freqz(h,1);
m=abs(H);
 d= 20*log10((m+eps)/max(m)); 
plot(w(300:500)/pi,d(300:500));




 %QUESTION 3
ws = 0.2*pi;
 wp = 0.75*pi;
 wp1 = 0.35*pi;
 ws1 = 0.55*pi;
 As = 40; 
 Rp=0.25;
 tr_width = min((wp-ws),(ws1-wp1));
 M = ceil(6.2*pi/tr_width);
 M = 2*floor(M/2)+1;
  n=[0:1:M-1];
 wc1 = (ws+wp)/2; 
 wc2 = (wp1+ws1)/2; 
 h2 = ideal_lp(wc2,M) - ideal_lp(wc1,M); 
 h1 =  (hanning(M))'; 
 h = h2 .* h1; 
 [H w] = freqz(h,1);
 m=abs(H);
 d= 20*log10((m+eps)/max(m)); 
  subplot(2,2,1); 
 stem(n,h2);
  subplot(2,2,2);
  stem(n,h1);
subplot(2,2,3);
 stem(n,h);
subplot(2,2,4);
 plot(w/pi,d);

 
 
 
%QUESTION 4
wp = 0.3*pi; 
 ws = 0.4*pi; 
 ws1 = 0.6*pi;
 wp1 = 0.7*pi; 
 Rp = 0.2; 
 As = 50; 
 tr_width = abs(min((wp-ws),(ws1-wp1))); 
 M = ceil(6.6*pi/tr_width); 
 M = 2*floor(M/2)+1;
 n = 0:M-1;
 h1 = (hamming(M))'; 
 wc1 = (ws+wp)/2; 
 wc2 = (ws1+wp1)/2; 
 h2 = ideal_lp(pi,M)+ideal_lp(wc1,M)-ideal_lp(wc2,M);
 h = h2 .* h1; 
 [H w] = freqz(h,1);
 m=abs(H);
 d = 20*log10((m+eps)/max(m)); 
 subplot(2,2,1); 
 stem(n,h2);
subplot(2,2,2);
  stem(n,h1);
subplot(2,2,3);
 stem(n,h);
subplot(2,2,4);
 plot(w/pi,d);

 
 
 
%QUESTION 5
wp = 0.25*pi; 
ws = 0.35*pi; 
ws1 = 0.65*pi; 
wp1 = 0.75*pi; 
delta1 = 0.025; 
delta2 = 0.005; 
[Rp,As] = delta2db(delta1,delta2) ;
tr_width = abs(min((wp-ws),(ws1-wp1)));
 M = ceil((As-7.95)/(2.285*tr_width)+1)+1; 
 M = 2*floor(M/2)+1;
 n = [0:1:M-1]; 
 beta = 0.1102*(As-8.7);
 h1 = (kaiser(M,beta))'; 
wc1 = (ws+wp)/2; 
wc2 = (ws1+wp1)/2; 
 h2 = ideal_lp(pi,M)+ideal_lp(wc1,M)-ideal_lp(wc2,M); 
 h = h2 .* h1; 
 [H w]=freqz(h,1);
 m=abs(H);
 d = 20*log10((m+eps)/max(m)); 
 [Hr,w,a,L] = Hr_Type1(h); 
 subplot(2,3,1);
 stem(n,h2);
 subplot(2,3,2);
 stem(n,h);
 subplot(2,3,3)
 stem(n,h1);
 subplot(2,3,4)
 plot(d);
 subplot(2,3,5)
 plot((Hr));

 
 
 
%QUESTION 6
ws = 0.25*pi; 
 wp = 0.35*pi; 
 wp1 = 0.65*pi; 
 ws1 = 0.75*pi; 
 delta1 = 0.05; 
 delta2 = 0.01; 
 [Rp,As] = delta2db(delta1,delta2) ;
 tr_width = abs(min((wp-ws),(ws1-wp1)));
M = ceil((As-7.95)/(2.285*tr_width)+1)+1; 
M = 2*floor(M/2)+1;
n = [0:1:M-1]; 
beta = 0.1102*(As-8.7);
 h1 = (kaiser(M,beta))'; 
 wc1 = (ws+wp)/2; 
 wc2 = (ws1+wp1)/2;
 h2= ideal_lp(wc2,M)-ideal_lp(wc1,M); 
 h = h2 .* h1; 
 [H w]=freqz(h,1);
 m=abs(H);
 d = 20*log10((m+eps)/max(m)); 
 [Hr,w,a,L] = Hr_Type1(h); 
 subplot(2,3,1);
 stem(n,h2);
 subplot(2,3,2);
 stem(n,h);
 subplot(2,3,3)
 stem(n,h1);
 subplot(2,3,4)
 plot(d);
 subplot(2,3,5)
 plot((Hr));
