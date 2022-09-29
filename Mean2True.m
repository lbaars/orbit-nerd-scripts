function [ f ] = Mean2True (M, e)
% Mean2True - Converts mean anomaly to true anomaly
%
% Inputs:
%   M = mean anomaly (in radians)
%   e = eccentricity (between 0 and 1)
% Outputs:
%   f = true anomaly (in radians)
%==============================================================================

    E = Mean2Eccen(M, e);
    f = Eccen2True(E, e);
end
