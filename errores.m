function [abs_error, relative_error] = errores(x, x2)
    abs_error=abs(x-x2)
    relative_error=(abs(x-x2))/abs(x)
end
