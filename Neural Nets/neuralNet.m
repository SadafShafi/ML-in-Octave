% Neural net solving logic gates


X1=[0 1 0 1];
X2=[0 0 1 1];


p = AND(X1,X2);
p = NAND(X1,X2);
p = OR(X1,X2);
p = NOT(X1);

% ==============================================================================================
% XNOR using other neural nets
% AND + OR + NOT
% (X1+ !X2).(!X1+ X2)


ANSWER= (AND(OR(X1,NOT(X2)),OR(NOT(X1),X2) ));

fprintf("\n\t-----XNOR gate----\n\nx1		x2		x1 XNOR x2\n\n");

for i=1:4
	
	fprintf("%d		%d		%d\n",X1(i),X2(i),ANSWER(i));

end

% ===============================================================================================


% ================================ XNOR using its own neural nets ======================================================
fprintf("\n\t-----XNOR gate----\n\nx1		x2		x1 XNOR x2\n\n");
for iter=1:4

x1=X1(iter);
x2=X2(iter);


X=[1 x1 x2];

theta1 = [-30 20 20]; % AND
theta2= [10 -20 -20]; %NOR
theta3=[-10 20 20]; %OR

a1 = theta1*X';
a2 = theta2*X';

a1=sigmoid(a1);
a2=sigmoid(a2);

% --------------------------------------- you forgot sigmoid thing ok? -----------------------------

a3 = theta3*[1 a1 a2]';

a3=sigmoid(a3);
ans = a3>=0.9;

fprintf("%d		%d		%d\n",X1(iter),X2(iter),ans);

end
% a3

% ==========================================================






