function [elbow,endeff] = computeRrForwardKinematics(rads1,rads2)
%%GIVEN THE ANGLES OF THE MOTORS, return an array of arrays for the
%%position of the elbow [x1,y1], and endeffector [x2,y2]

%rads1 = 1; rads2 = 0.72;

l1 = 1; l2 = 1;

joint_1_x = l1 * cos(rads1);
joint_1_y = l1 * sin(rads1);

effector_x = joint_1_x + l2 * cos(rads1 + rads2);
effector_y = joint_1_y + l2 * sin(rads1 + rads2);

elbow = [joint_1_x, joint_1_y]
endeff =[effector_x, effector_y]
