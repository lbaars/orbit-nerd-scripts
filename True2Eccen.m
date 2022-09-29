function [ E ] = True2Eccen (f, e)
% True2Eccen - converts true anomaly to eccentric anomaly
%
% Inputs:
%   f - true anomaly (in radians)
%   e - eccentricity (between 0 and 1)
% Outputs:
%   E - eccentric anomaly (in radians)
%==============================================================================

    E = atan2(sin(f)*sqrt(1-e^2), e+cos(f));
end
