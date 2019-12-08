%inputting 
h = input('Input the initial height of the projectile above the ground (meters): ');
v = input('Input the magnitude of the velocity (m/s): ');    
angle = input('Input the angle with respect to the x-axis at which the projectile is fired (degrees): ');
Ax = input('Input the x-component of the acceleration (meters/s^2): ');

x = true;
while(x==true)
    Ay = input('Input the y-component of the acceleration (meters/s^2): ');
    if (Ay~=0)
        x = false;
    else
        x = true;
        disp('Vertical acceleration cannot be zero!');
    end
end

Vx = v*cosd(angle);
Vy = v*sind(angle);



t_positive = (Vy+sqrt((Vy^2)+2*abs(Ay)*h))/abs(Ay);
t = 0:0.25:(t_positive);

x = Vx.*t + (1/2)*Ax*(t.^2);
y = Vy.*t + (1/2)*Ay*(t.^2)+h;

plot(x,y, '-o', 'markeredgecolor', 'r')
xlabel 'velocity in the x-axis'
ylabel 'velocity in the y-axis'
title 'trajectory of a projectile'
grid on