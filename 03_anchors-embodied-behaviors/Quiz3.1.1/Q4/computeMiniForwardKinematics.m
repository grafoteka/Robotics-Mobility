function [endeff] = computeMiniForwardKinematics(rads1,rads2)

l1 = 1; l2 = 2;

% alpha_world = (1/2) * (rads1 + rads2) + pi;
% beta_world = (rads1 - rads2);
% 
% alpha_polar = alpha_world;
% r_polar = sqrt(l2^2 - (l1 * sin(beta_world)^2)) - l1 * cos(beta_world);
% 
% x_world = r_polar * cos(alpha_polar);
% y_world = r_polar * sin(alpha_polar);

%%
alpha = (1/2) * (rads1 + rads2) + pi;
beta = (rads1 - rads2);

Y = sqrt(1+1-2*1*1*cos(beta));
Z = sqrt(1-(Y/2)^2);
X = sqrt(4-(Y/2)^2);

l = X-Z;

x_world = l*cos(alpha);
y_world = l*sin(alpha);

endeff = [x_world, y_world];