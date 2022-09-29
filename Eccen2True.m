function [ f ] = Eccen2True (E, e)
% Eccen2Truc - converts eccentric anomaly to true anomaly
%
% Inputs:
%   E = eccentric anomaly (in radians)
%   e = eccentricity (between 0 and 1)
% Outputs:
%   f = true anomaly (in radians)
%==============================================================================

    f = atan2(sin(E)*sqrt(1-e^2), cos(E)-e);
    f = mod(f, 2*pi);
    if (f < 0)
        f = f + 2*pi;
    end
end
