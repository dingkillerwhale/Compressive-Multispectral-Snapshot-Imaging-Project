function n = NSF10(lambda)

% N-BK7 refractive index

a1 = 1.62153902;
a2 = 0.256287842;
a3 = 1.64447552;

b1 = 0.0122241457;
b2 = 0.0595736775;
b3 = 147.468793;


n = sqrt(1 + a1*lambda.^2./(lambda.^2 - b1) + a2*lambda.^2./(lambda.^2 - b2) + a3*lambda.^2./(lambda.^2 - b3));