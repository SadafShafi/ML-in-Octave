%Cost function
% size of sample,hypothesis, predicted value

function MultiVariateRegression()
 
	data= load("ex1data2.txt");
	testData=load("testData2.txt");
	% test datar
	
	x_test = testData(:,1:2);
	y_test = testData(:,3);
	
	% training data
 
	x = data(:,1:2);
	y = data(:,3);
	
	% plot the learning data in red
	
	plot3(x(:,1),x(:,2),y,"gx");
	hold on;
	plot3(x_test(:,1),x_test(:,2),y_test,"rx");
	
	xlabel("Area");
	ylabel("Bed Rooms");
	zlabel("Costs");
	
	% hypothesis is : h = theta1 * x1   +   theta2 * x2
	
	theta1=y(1)/x(1:1);
	theta2=y(2)/x(2:2);
	
	test_array_y=[];
	% size(y_test);
	
	x_test1=x_test(:,1);
	x_test2=x_test(:,2);
	y_test1=y_test(:,1);
	
	for iter = 1:22
		
		% theta2 * x(iter:2)
		y_test(iter:1);
		
		hypp =  theta1 .* x_test1(iter) + theta2 .* x_test2(iter);

		
		% making array out of each of it
		test_array_y=[test_array_y;hypp;];
		
	end
	% test_array_y
	% y_test1;
	hold off;
	figure;
	% y_test
	% hypp
	plot3(x_test(:,1),x_test(:,2),y_test,"gx");
	hold on;
	plot3(x_test(:,1),x_test(:,2),test_array_y,"rx");
	legend("expected value","predicted value according to hypothesis");
	% hold off;
	
	% ==========================================  Cost Function  ===============================================
	
	errorSqr= (test_array_y - y_test).^2;
	
	m=length(test_array_y);
	
	cost = 1/(2*m)*sum(errorSqr);
	
	fprintf("the outcome of cost function is, cost: %0.2f\n",cost);
	
	% ==========================================================================================================
	
	% ====================================== GRADIENT DESCENT  ===================================================
	
	% lets try to tweak intercept and slope such that cost becomes minimum
	
	% define learning rate
  alpha =  0.0000000000000000000000000000000000000000000000001;
   newTheta1 = theta1;
   newTheta2 = theta2;
  
  
  for i=0:1000
    
    
    newTheta1 = newTheta1 - alpha * (1/m )* sum(errorSqr .* test_array_y) ;
    newTheta2 = newTheta2 - alpha * (1/m )* sum(errorSqr .* test_array_y) ;
  end

	
	
	test_array_y=[];
	for i=1:22
		% hypothesis equation for the relevant data
		new_hypothesis = newTheta1 .* x_test1(iter) + newTheta2 .* x_test2(iter);
		
		% making array out of each of it
		test_array_y=[test_array_y;new_hypothesis;];
		
	end
	% figure;
	plot3(x_test(:,1),x_test(:,2),test_array_y,"bx");
	legend("expected value","predicted value according to hypothesis","newly predicted");
	
	
	
	
	%==========================================================================================================
	%==========================================  Cost Function  ===============================================
	
	errorSqr= (test_array_y - y_test).^2;
	
	m=length(test_array_y);
	
	cost = 1/(2*m)*sum(errorSqr);
	
	fprintf("the outcome of cost function is, cost: %0.2f\n",cost);
	
	% ==========================================================================================================
	
