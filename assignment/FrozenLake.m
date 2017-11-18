%rseed=rng
%rseed = 1;
%n = 5;
rng(rseed)
FL=zeros(n,n,4,4);
FLCost=zeros(n,n);
FL(:,:,:,1:4)=betarnd(0.9,0.9,n,n,4,4);
FL(1,:,:,1)=0;
FL(n,:,:,3)=0;
FL(:,1,:,4)=0;
FL(:,n,:,2)=0;
FLCost(:,:)=randi(k,n,n);
FLCost(:,:)=-10000*(FLCost(:,:)==k);
FLCost(n,n)=10000;
for i=1:n, for j=1:n, for m=1:4, FL(i,j,m,1:4)=FL(i,j,m,1:4)/sum(FL(i,j,m,1:4)); end; end; end;
FL(n,n,:,:)=0;
figure;
heatmap(FLCost);


% model Q learning 

Q = zeros(n,n,4);

% for i = 1:1000
%     %starting state = 1,1
%     action = 
%     
%     
% end


