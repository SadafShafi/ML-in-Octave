function k = NOT(X1);
% NOT gate
% 2 layers  --> Input and output layer

fprintf("\n\t----NOT gate----\n\nX			not X\n\n");
answer=[];
for iter=1:length(X1)

	x=X1(iter);


	inputs = [x];
	
	% NOTE : we changed theta0 only
	theta =[-1];

	product = theta*inputs;
	hypothesis =  1/(1+ exp(-product)) ;

	notX = hypothesis>=0.5;

	answer=[answer;notX];
	fprintf("%d			%d\n",x,notX);

end

	k=answer;
	
end