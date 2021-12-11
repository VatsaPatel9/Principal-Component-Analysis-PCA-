function [PC,V] = pca(data)

%data - Mxn martix of i/p
%(M dimensions, N trials 

[M,N] = size(data); 

mn= mean(data,2);
data = data - repmat(mn,1,N);

%matrix 
Y = data' / sqrt(N-1);

[u,S,PC] = svd(Y);

S = diag(S);
V = S .* S; 


end