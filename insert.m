function heap = insert(item, heap, d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Insert algorithm
%
%   The algorithm uses this function:
%   1. SIFTUP.m
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   ITEM: the item value that you want to insert
%   HEAP: the heap to insert in
%   d   : the heap -ary
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% add the item at the end
heap=[heap, item];
% form the heap by the siftdown
heap= siftup(item,length(heap),heap, d);
end
