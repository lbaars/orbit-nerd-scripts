function [ E ] = Mean2Eccen (M, e)
% Mean2Eccen - converts mean anomaly to eccentric anomaly
%
% Inputs:
%   M = mean anomaly (in radians)
%   e = eccentricity (between 0 and 1)
% Outputs:
%   E = eccentric anomaly (in radians)
%==============================================================================

    Enew = M + e;
    if (M > pi);
        Enew = M - e;
    end
    Eold = Enew + 0.001;
    while (abs(Enew - Eold) > 1e-8)
        Eold = Enew;
        Enew = Eold + (M - Eold + e*sin(Eold))/(1 - e*cos(Eold));
    end
    E = Enew;
end
