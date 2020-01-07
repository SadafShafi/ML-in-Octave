function k = AND(X1,X2);
% AND gate
% 2 layers -->  Input layer and output layer

	fprintf("\n\t-----AND gate----\n\nx1		x2		x1&x2\n\n");
	answer=[];
	for iter=1:length(X1)

		x1=X1(iter);
		x2=X2(iter);

		inputs = [1 x1 x2];

		theta =[-20 10 10];

		product = theta*inputs';
		hypothesis =  1/(1+ exp(-product)) ;

		x1_and_x2 = hypothesis>=0.5;
		
		answer=[answer;x1_and_x2];


		fprintf("%d		%d		%d\n",x1,x2,x1_and_x2);

	end

	k=answer;
	
end