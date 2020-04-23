I = imread('pic.jpg');

redChanel = I(:,:,1);
greenChanel = I(:,:,2);
blueChanel = I(:,:,3);

subplot(4,1,1); imshow(I)
subplot(4,1,2); histogram(redChanel); title('red')
subplot(4,1,3); histogram(blueChanel); title('blue')
subplot(4,1,4); histogram(greenChanel); title('green')