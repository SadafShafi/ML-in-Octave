function k = NAND(X1,X2);
% NAND gate
% 2 layers  --> Input and output layer

% AND and NOT neural net
% ================================================================================================
answer1=[];
fprintf("\n\t----NAND gate----\n\nx1		x2	   x1 nand x2\n\n");
for iter=1:4

	x1=X1(iter);
	x2=X2(iter);

	inputs = [1 x1 x2];

	theta =[-20 10 10];

	product = theta*inputs';
	hypothesis =  1/(1+ exp(-product)) ;

	x1_and_x2 = hypothesis>=0.5;
	
	answer1=[answer1; x1_and_x2];


end
not_X=[];
for iter=1:4

	x=answer1(iter);


	inputs = [x];
	
	% NOTE : we changed theta0 only
	theta =[-1];

	product = theta*inputs;
	hypothesis =  1/(1+ exp(-product)) ;

	notX = hypothesis>=0.5;
	not_X=[not_X;notX];


end

for i=1:4

fprintf("%d		%d		%d\n",X1(i),X2(i),not_X(i));
end

% ===============================================================================

	k=not_X;
	
end