function [a,b] = dichotomie(f, a, b, n)
%DICHOTOMIE solve the equation f(x) = 0 for the real variable x, where f 
% is a continuous function defined on an interval [a, b] 
if f(a)*f(b)<= 0
    for i = 1:n
        c = (a+b)/2;
        if f(a)*f(c)<= 0
            b = c;
        else
            a = c;
        end
    end
    fprintf('f(x) = 0 has at least one solution in the interval [%f,%f]\n',a,b)
else
    error('f(x) = 0 does not have a solution in the interval [%f,%f]',a,b)
end
end
