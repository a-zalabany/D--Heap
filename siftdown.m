function heap = siftdown(item, position, heap, d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Siftdown algorithm
%
%   The algorithm uses these functions:
%   1. minChild (a nested function that returns
%   the minimum child index)
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   ITEM    : the item value that you want to siftdown
%   POSITION: the position of the item
%   HEAP    : the heap
%   d       : the heap -ary
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% c is an integer which i the index of minimum child
c = minChild(position, d, heap);
% the siftdown algorithm
% while the c is not a parent and its value is smaller than the item
    while(c~=1 && heap(c) < item)
        heap(position) = heap(c);
        position = c;
        % c is an integer which i the index of minimum child
        c = minChild(c, d, heap);
    end
heap(position)=item;
end
