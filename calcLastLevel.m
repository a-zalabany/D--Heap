function last_level = calcLastLevel(heap,d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                    
%   This function calculates the
%   number of nodes in last level in heap
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   heap : the heap
%   d    : the heap -ary
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%calculates heap length
heap_length=length(heap);
% in case the heap is not a 1-ary
if(d~=1)
% calculates the heap height
heap_height= ceil((log(heap_length*d-heap_length+1)/log(d)));
% sum of all nodes
sum=0;
for i=0:heap_height-1
    sum=sum+d^i;   
end
% sum of the missing nodes in the last level
temp= sum-heap_length;
% output is how many nodes in the last level
last_level=d^(heap_height-1)-temp;
else
    last_level=1;
end
end