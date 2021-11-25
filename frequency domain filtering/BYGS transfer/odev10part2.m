I = imread('cameraman.tif');
[x,y] = size(I);
FT_img = fft2(double(I));
t = 1; 
D0 = 0.1; 
D1 = 0.2;
D2 = 0.3;
D3 = 0.5;
D4 = 0.7;
u = 0:(x-1);
v = 0:(y-1);
idx = find(u > x/2);
u(idx) = u(idx) - x;
idy = find(v > y/2);
v(idy) = v(idy) - y;
[z, v] = meshgrid(v, u);
D = sqrt(v.^2 + z.^2);
  H0 = 1./(1 + ((414*D0)./D).^(2*t));
  H1 = 1./(1 + ((414*D1./D).^(2*t)));
  H2 = 1./(1 + ((414*D2./D).^(2*t)));
  H3 = 1./(1 + ((414*D3./D).^(2*t)));
  H4 = 1./(1 + ((414*D4./D).^(2*t)));
  G0 = H0.*FT_img;
  G1 = H1.*FT_img;
  G2 = H2.*FT_img;
  G3 = H3.*FT_img;
  G4 = H4.*FT_img;
subplot(231), imshow(I), title('Asýl görüntü')
W0= real(ifft2(double(G0))); 
subplot(232), imshow ((abs(W0)),[]); title('D0 = 0.1 , n=1')
W1= real(ifft2(double(G0))); 
subplot(233), imshow((abs(W1)), [ ]); title('D1 = 0.2 , n=1')
W2= real(ifft2(double(G0))); 
subplot(234), imshow((abs(W2)), [ ]),impixelinfo; title('D2 = 0.3 , n=1')
W3= real(ifft2(double(G0))); 
subplot(235), imshow((abs(W3)), [ ]); title('D3 = 0.5 , n=1')
W4= real(ifft2(double(G0))); 
subplot(236), imshow((abs(W4)), [ ]); title('D4 = 0.7 , n=1')