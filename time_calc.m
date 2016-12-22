function [] = time_calc(n,d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Performance Calculation function
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   n    : the number of elements in the heap
%   d    : the heap -ary
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%generate random integers from 1 to 1000
testarray= randi([1,1000],1,n);

% testing method: siftdown
% begin counting
begin= tic;
% executing the function
heapify(testarray,d,1);
% end counting
stop1=toc(begin);
fprintf('The siftdown took %f seconds \n' ,stop1);
% testing method: insert
% begin counting
begin= tic;
% executing the function
heapify(testarray,d,0);
% end tcounting
stop2=toc(begin);
fprintf('The insert took %f seconds \n' ,stop2);
fprintf('The speed factor is %f \n' ,stop1/stop2);



end