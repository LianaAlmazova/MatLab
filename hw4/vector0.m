function vector0(p,par)
x0 = 0;
y0 = 0;
x1 = p(1);
y1 = p(2);
plot([x0;x1],[y0;y1], par);

len = 0.1;
wid = 0.1;

hu = [x1-len*(p(1)+wid*(p(2)+eps)); x1; x1-len*(p(1)-wid*(p(2)+eps))];
hv = [y1-len*(p(2)-wid*(p(1)+eps)); y1; y1-len*(p(2)+wid*(p(1)+eps))];

hold on
plot(hu(:),hv(:), par)
grid on
xlabel('x')
ylabel('y')

end
