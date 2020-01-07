function k = OR(X1,X2);
% OR gate
% 2 layers  --> Input and output layer
answer=[];
fprintf("\n\t----OR gate----\n\nx1		x2		x1 or x2\n\n");
for iter=1:4

	x1=X1(iter);
	x2=X2(iter);

	inputs = [1 x1 x2];
	
	% NOTE : we changed theta0 only
	theta =[-10 10 10];

	product = theta*inputs';
	hypothesis =  1/(1+ exp(-product)) ;

	x1_or_x2 = hypothesis>=0.5;


	fprintf("%d		%d		%d\n",x1,x2,x1_or_x2);
	answer=[answer;x1_or_x2];

end

	k=answer;
	
end