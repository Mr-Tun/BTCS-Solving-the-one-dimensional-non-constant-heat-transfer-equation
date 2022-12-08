function [kij] = BTCSM(sigma1,M)
kij=eye(M+2);
for i=1:1:102
    kij(i,i)=-(1+2*sigma1);
end
for j=2:1:102
    kij(j,j-1)=sigma1;
    kij(j-1,j)=sigma1;
end
end

