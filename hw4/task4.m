A = input('matrix: ');
b = input('vector: ');

[V,D,W] = eig(A)
vector0([W(1,1),W(2,1)], 'r')
vector0([W(1,2),W(2,2)], 'r')
hold on
x = A\b;
vector0([x(1,1),x(2,1)], 'r')

n = input('n: ');
K = zeros(2,n);
Y = zeros(2,n);
Angle = zeros(1,n);
Angleb = zeros(1,n);
for j = 1:n
    [xi,yi] = ginput(1);
    vector0([xi,yi], 'k')
    k = [xi;yi];
    y = A*k;
    
    vector0([y(1),y(2)], '--')
        ky = k(1)*y(1)+k(2)*y(2);
        lenk = sqrt(k(1)*k(1)+k(2)*k(2));
        leny = sqrt(y(1)*y(1)+y(2)*y(2));
    angle = ky/(lenk*leny);
        by = b(1)*y(1)+b(2)*y(2);
        lenb = sqrt(b(1)*b(1)+b(2)*b(2));
    angleb = by/(lenb*leny); 
   
        K(1:2,j) = k;
        Y(1:2,j) = y;
        Angle(1,j) = angle; 
        Angleb(1,j) = angleb; 
end
angle0 = Angle(1,1);
angleb0 = Angleb(1,1);
for i = 2:j
    if Angle(1,i) < angle0
        angle0 = Angle(1,i);
        ii = i;
    else
        ii = 1;
    end
    
    if Angleb(1,i) < angleb0
        angleb0 = Angleb(1,i);
        iib = i;
    else
        iib = 1;
    end
end
ii
iib
green = K(1:2,ii);
vector0([green(1),green(2)], 'g')
blue = K(1:2,iib);
vector0([blue(1),blue(2)], 'b')