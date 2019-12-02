clc

clear
close all
I= imread('test.png');
figure(1);
imshow(I);
I=imbinarize(I);
[L, num] = bwlabel(I);
STATS1=regionprops(L,'Perimeter');
ahe=size(STATS1);
figure(2);
imshow(I);
m1=ahe(1,1);
m=zeros(2,m1);
for i=1:m1
    % ����Ŀ���������ģ�������ʾ��ŵ�λ��
    [p,q]=find(L==i);
    temp=[p,q];
    [x,y]=size(temp);
    m(1,i)=sum(p)/x;
    m(2,i)=sum(q)/x;
end
for i=1:m1
    figure(2);
    text(m(2,i),m(1,i),int2str(i),'color','red')
end
L(L~=3&L~=2)=0;   %%��߽��������ѡ������ֻ����2��3.
figure(3);
imshow(L);
