data  = load('ex1data2.txt');
X = [data(:,1),data(:,2)]; y = data(:,3);
m = length(y);
X = [ones(m,1),X];
alpha = 0.01;
iterations = 1500;


  plot(X, y, 'rx', 'MarkerSize', 10);   
  ylabel('Profit in $10,000s');      
  xlabel('Population of City in 10,000s');
  

J = 0;  
theta = [0;0];
for val = 1:m
  J = J + (((X(val,:)*theta) - y(val))^2); 
   
endfor
J = J/(2*m)



J_vals = zeros(iterations,1);

for iter = 1:iterations
  theta = theta - (((alpha/m)*((X*theta)-y)')*X)';
  for val = 1:m
  J_vals = J_vals + (((X(val,:)*theta) - y(val))^2); 
   
endfor
J_vals = J_vals/(2*m);
  
endfor

hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure

