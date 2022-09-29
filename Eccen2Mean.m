function [ M ] = Eccen2Mean (E, e)
% Eccen2Mean - converts eccentric anomaly to mean anomaly
%
% Inputs:
%   E - eccentric anomaly (in radians)
%   e - eccentricity (between 0 and 1)
% Outputs:
%   M - mean anomaly (in radians)
%==============================================================================

    M = E - e * sin(E);
    M = mod(M, 2*pi);
    if (M < 0)
        M = M + 2*pi;
    end
end
