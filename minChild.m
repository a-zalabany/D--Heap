function indexMin = minChild(position, d, heap)
    heaplength= length(heap);
    % set the return to 1 in case of one element in the heap
    indexMin=1;
    % start is the starting position of the children
    start = d*(position-1)+2;

    % check if there is more than one element
    if (heaplength>=start)
        lastElement=min(heaplength,start+d-1);
        % slice the children
        a=(heap(start:lastElement));
        [~, indexMin]= min(a);
        % This is to convert the index of the minimum on a
        % slice of an array to the actual element order in heap
        indexMin= start+indexMin-1;
    end
end