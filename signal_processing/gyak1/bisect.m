function [o] = bisect(ss, ee fun, mmax)
sy = fun(ss)
sx = ss
ex = ee
ey = fun(ee)
o = nan
c = 0
while c < mmax

    if sy * ey < 0
        if fun((sx + ex)/2) > 0
            ex = (sx + ex)/2
        else
            sy = (ex + sx) / 2

        end
    else
        if sy * ey = 0
            o =  ex
        else
            o = nan 
        end


end


outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

