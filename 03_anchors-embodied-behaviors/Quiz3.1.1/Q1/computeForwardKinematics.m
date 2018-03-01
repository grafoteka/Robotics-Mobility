function endeff = computeForwardKinematics(rads)
%rads = 2;
theta = rads;
L1 = 1;

x = L1 * cos(theta);
y = L1 * sin(theta);;


endeff = [x,y];

