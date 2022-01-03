%Built Up Barrel
a=.12/2; %Inner Radius
b=.21/2; %Interface Radius
c=.25/2; %Outer Radius

ar7=(a:.01:c);
r1=(a:.01:b);
r2=(b:.01:c);

p_i=600.*10.^6; %Gas Pressure
d=.9./1000; %Displacement
E=206.*10.^9; %Modulus of Elasticity

p=E.*d.*(c.^2.-b.^2).*(b.^2.-a.^2)./(b.*2.*b.^2.*(c.^2.-a.^2)); %Interface Pressure

sigmaro=a.^2.*p./(b.^2.-a.^2).*(1-b.^2./r2.^2); %Radial Stress Outer
sigmato=a.^2.*p./(b.^2-a.^2).*(1+b.^2./r2.^2); %Hoop Stress Outer
sigamri=-p.*b.^2./(b.^2.-a.^2).*(1-a.^2./r1.^2); %Radial Stress Innter
sigmati=-p.*b.^2./(b.^2.-a.^2).*(1+a.^2./r1.^2); %Hoop Stress Innter
sigmarpi=a.^2.*p_i./(c.^2.-a.^2).*(1-c.^2./ar7.^2);
sigmatp_i1=a.^2.*p_i./(c.^2.-a.^2).*(1+c.^2./r1.^2);
sigmatp_i2=a.^2.*p_i./(c.^2.-a.^2).*(1+c.^2./r2.^2);
sigmat_res1=sigmatp_i1+sigmati;
sigmat_res2=sigmatp_i2+sigmato;
plot(r1,sigmatp_i1,r2,sigmatp_i2,r1,sigmat_res1,r1,sigmati,r2,sigmat_res2,r2,sigmato)