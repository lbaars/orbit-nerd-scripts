function [ M ] = True2Mean (f, e)
% True2Mean - converts true anomaly to mean anomaly
%
% Inputs:
%   f - true anomaly (in radians)
%   e - eccentricity (between 0 and 1)
% Outputs:
%   M - mean anomaly (in radians)
%==============================================================================

    E = True2Eccen(f, e);
    M = Eccen2Mean(E, e);
end
