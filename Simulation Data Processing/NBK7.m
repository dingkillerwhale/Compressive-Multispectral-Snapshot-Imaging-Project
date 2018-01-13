function n = NBK7(lambda)

% N-BK7 refractive index

a1 = 1.03961212;
a2 = 0.231792344;
a3 = 1.01046945;

b1 = 0.00600069867;
b2 = 0.0200179144;
b3 = 103.560653;


n = sqrt(1 + a1*lambda.^2./(lambda.^2 - b1) + a2*lambda.^2./(lambda.^2 - b2) + a3*lambda.^2./(lambda.^2 - b3));