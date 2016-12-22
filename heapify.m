function heap = heapify(array,d, type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Heapify Algorithm
%   with combined insert and siftdown methods
%
%   The algorithm uses three functions:
%   1. INSERT.m
%   2. SIFTDOWN.m
%   3. SIFTUP.m
%   4. CALCLASTLEVEL.m
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   ARRAY  : is the array of elements that we want to heapify
%   d      : heap -ary
%   TYPE   : SEE BELOW
%   
%       TO USE INSERT METHOD:
%       TYPE = 0
%
%       TO USE SIFTDOWN METHOD:
%       TYPE = 1
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% get the number of elements
heap_length=length(array);
% make an empty heap array
heap= [];
% type 0 is the insert method
if (type == 0)
    % traverse through the elements
    for i=1:heap_length
        % insert all elements by calling the function
        heap= insert(array(i),heap,d);
    end
    % this is the case of siftdown
else
    % put all unordered elements in the heap array
    heap = array;
    
    % calculate how many nodes in last level then
    % calculate the bottom-1 level
    num=calcLastLevel(heap,d);
    levelup=heap_length-num;
    
    % traverse all the elements from bottom-1 to up
    for i=levelup:-1:1
        
        % call the siftdown function
        heap=siftdown(heap(i),i,heap,d);
    end
    
end
end





