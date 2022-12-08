M=input('please input the number of grid,Mx= ');
sigma1=input('please input sigma,sigma= ');
tlim=input('please input Time limit, tlim= ');%%Enter Time boundaries
t1=input('please input t1= ');%%Enter the initial parameters
t2=input('please input t2= ');
t3=input('please input t3= ');
t4=input('please input t4= ');
%%compute the uk with initial condition of time is n=0
deltax=1/M;
deltat=deltax.*deltax.*sigma1;
T=tlim/deltat;
%%Initialization uk
uk=rand(M+2,1);
%%compute the uk and save it to matrix
uk(1,1)=0;
uk(M+2,1)=0;
for i=2:1:M+1
uk(i,1)=f((i-1)*deltax);
end
%%Initialization grid
T=round(T);
grid=rand(M+2,T+2);
grid(:,1)=zeros(M+2,1);
grid(:,2)=uk;
%%Assigning values to the grid
kij=BTCSM(sigma1,M);
for j=1:1:T-1
grid(:,2+j)=chase_method(kij,uk);
uk=grid(:,2+j);
end
%%Due to computer data rounding problems, rounding of p
p1=round(t1./deltat+1);
p2=round(t2./deltat+1);
p3=round(t3./deltat+1);
p4=round(t4./deltat+1);
% disp(grid(:,p));
nodes=0:0.01:1.01;
plot(nodes,grid(:,p1),'r',nodes,grid(:,p2),'b',nodes,grid(:,p3),'y',nodes,grid(:,p4),'g')
% title('sigma=0.5');
xlabel('x');
ylabel('u');
