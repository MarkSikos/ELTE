fs = 8000;
len = 1;
t = linspace(0,len,len*fs+ 1);
t(end) = [];
s1 = sin(pi*2*440 * t);
s2 = sin(t *550*pi*2);
s3 = sin(pi*t*660*2);
ss = s1 + s2 + s3;
sound(ss,fs);



