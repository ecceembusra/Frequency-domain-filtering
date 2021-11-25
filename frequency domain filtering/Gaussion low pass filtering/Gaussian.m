%Matlab sürümüm eski olduðu için fonksiyonumu ayrý bir script dosyasýnda
%tanýmladým
function gaus = Gaussian(image, d)
 I = double(image);
    boyut = 4;
    [x,y]=meshgrid(-boyut:boyut,-boyut:boyut);
    M = size(x,1)-1;
    N = size(y,1)-1;
    Exp_comp = -(x.^2+y.^2)/((2*d).^2);
    Mask= exp(Exp_comp);
    Output=zeros(size(I));
    I = padarray(I,[boyut boyut]);
    for i = 1:size(I,1)-M
        for j =1:size(I,2)-N
            Temp = I(i:i+M,j:j+M).*Mask;
            Output(i,j)=sum(Temp(:));
        end
    end
    gaus = uint8(Output);
    return
