function heap = siftup(item, position, heap, d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Siftup algorithm
%
%   #################
%   ### ARGUMENTS ###
%   #################
%
%   ITEM    : the item value that you want to siftup
%   POSITION: the position of the item
%   HEAP    : the entire heap
%   d       : the heap ary
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calculate parent position
parent = floor((position-2)/d)+1;
% the siftup algorithm that checks whether parent
% is larger than the item
while(position ~=1 && heap(parent)>item)
    heap(position)= heap(parent);
    position= parent;
    % calculate parent position again before while
    parent = floor((position-2)/d)+1;
end
% swap
heap(position)=item;


end