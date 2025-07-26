%% THE GENERAL STATIC EQUILIBRIUM CALCULATOR FOR A DRONE
clear, clc   % This clears the command and workspace window

% THESE ARE OUR ACTUAL VALUES!!!

% The given parameters of our drone
P = 1.225;   % The density of the air in kgs
Cd = 1;      % The approximate drag coefficent of our drone arm
V = 0;       % The speed of the drone in m/s
d = 0.031;   % The width of our drone arm
L = 0.19825; % The length of our drone arm
Fm = 9.81;   % The force due to one motor in Newtons
mArm = 0.13; % The mass of one arm in kg
g = 9.81;    % The acceleration due to gravity

w = (1/2)*P*Cd*(V^2)*d;   % The load applied on the arm due to drag

Fy = Fm-(mArm*g)-w*L;     % The reaction force due to the fixed connection

Ma = (w*L*L/2) + (mArm*g*L/2) - (Fm*L); % The reaction moment due to fixed connection

syms V1(X)  % Initializing the first shear function

syms M1(X)  % Initializing the first moment function

syms V2(X)  % Initializing the second shear function

syms M2(X)  % Initializing the second moment function

V1(X) = -w*X - Fy;  % Defining the first shear function

M1(X) = (-(w*X^2)/2) - Fy*X - Ma;  % Defining the first moment function

V2(X) = -(w*X + Fy + mArm*g);      % Defining the second shear function

M2(X) = (-(w*X^2)/2) -(Fy+mArm*g)*X + ((mArm*g*L)/2) - Ma; % Defining the second moment functiom

% The Graphing Segment 

x_range1 = [0, L/2];     % The first cuts range
x_range2 = [L/2, L];     % The second cuts range

% The Shear Diagram
figure(1)                                 % Allocates figure 1 for shear functions
hold on                                   % Allows the figure to hold both shear functions
yline(0, 'Color', 'k', 'LineWidth', 2);   % Draw line for x axis.
set(groot, 'defaultLineLineWidth', 1.5)   % Sets the vertical lines to a higher thicknes
fplot(V1,x_range1, 'k', 'LineWidth', 1.5) % Plots the first shear function and sets a higher thickness
fplot(V2,x_range2, 'k', 'LineWidth', 1.5) % Plots the second shear function and sets a higher thickness
line([0, 0], [0, V1(0)],'Color', 'black') % Draws a vertical line from the origin to the first shear cut function line
line([L/2, L/2], [V1(L/2), V2(L/2)],'Color', 'black')  % Draws the vertical line to continue the first shear function to the second shear function
line([L, L], [V2(L), 0],'Color', 'black') % The Draws a vertical line from the end of the second shear function to the x-axis
title("Shear Diagram")                    % Titles the graph
xlabel("Distance (Meters)")               % Labels the X axis
ylabel("Shear (Newtons)")                 % Labels the Y axis
grid on                                   % Turning on the grid
area(x_range1, subs(V1,X,x_range1), 0, 'FaceColor', 'b', 'FaceAlpha', 0.3)  % Shading the first shear function
area(x_range2, subs(V2,X,x_range2), 0, 'FaceColor', 'b', 'FaceAlpha', 0.3)  % Shading the second shear function
hold off                                  % Turns off the sharing ability of this figure
text(L*0.20,V1(L/4)/2, "First Cut")              % Adding text to the graph
text(L*0.65,V2(L/4)/2, "Second Cut")             % Adding text to the graph

% The Moment Diagram
figure(2);                                % Allocates figure 2 for moment functions
hold on                                   % Allows the figure to hold both moment functions
yline(0, 'Color', 'k', 'LineWidth', 2);   % Draw line for x axis.
set(groot, 'defaultLineLineWidth', 1.5)   % Sets the vertical lines to a higher thicknes
fplot(M1,x_range1, 'k', 'LineWidth', 1.5) % Plots the first moment function and sets a higher thickness
fplot(M2,x_range2, 'k', 'LineWidth', 1.5) % Plots the second moment function and sets a higher thickness
line([0, 0], [0, M1(0)],'Color', 'black') % Draws a vertical line from the origin to the first moment function
title("Moment Diagram")                   % Titles the graph
xlabel("Distance (Meters)")               % Labels the X axis
ylabel("Moment (Newtons*Meters)")         % Labels the Y axis
grid on                                   % Turning on the grid
area(x_range1, subs(M1,X,x_range1), 0, 'FaceColor', 'r', 'FaceAlpha', 0.3)  % Shading the first moment function
area(x_range2, subs(M2,X,x_range2), 0, 'FaceColor', 'r', 'FaceAlpha', 0.3)  % Shading the first moment function
text(L*0.20,M1(L/4)/2, "First Cut")              % Adding text to the graph
text(L*0.60,M2(L/4)/4, "Second Cut")             % Adding text to the graph
hold off                                  % Turns off the sharing ability of this figure


ShearMax = double(V2(L))     % The max shear on the arm
BendingMax = double(M1(0))   % The max bending moment on the arm









 








