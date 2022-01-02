%Monobloc Barrel
a=.13 %Inner Radius
b=.7 %Outer Radius
p_i=600.*10^6 %Gas Pressure
r=(a:.01:b)

sigma_r=a.^2*p_i./(b.^2-a.^2)*(1-b.^2./r.^2); %Radial Stress
sigma_t=a.^2*p_i./(b.^2-a.^2)*(1+b.^2./r.^2); %Hoop Stress

plot(r,sigma_r,r,sigma_t) %Plots stress versus radius