function n = NSF11(lambda)

% N-SF11 refractive index

a1 = 1.73759695;
a2 = 0.313747346;
a3 = 1.89878101;

b1 = 0.013188707;
b2 = 0.0623068142;
b3 = 155.23629;


n = sqrt(1 + a1*lambda.^2./(lambda.^2 - b1) + a2*lambda.^2./(lambda.^2 - b2) + a3*lambda.^2./(lambda.^2 - b3));
