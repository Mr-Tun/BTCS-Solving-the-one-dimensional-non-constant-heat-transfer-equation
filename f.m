function [b] = f(a)
if (a<0.3&&a>0)
    b=0;
elseif (a>=0.3&&a<=0.7)
    b=1;
elseif (a<=1&&a>0.7)
    b=-10/3*a+10/3;
else 
    disp('Space boundary exceeded, program error')
end
end

