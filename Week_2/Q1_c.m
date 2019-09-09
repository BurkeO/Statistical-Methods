inc = 0;
lim = 10000;
atLeast1Two = 0;
while(inc <= lim)
    roll = randi([1,6],1,3);
    for i=1:length(roll)
        if(roll(i) == 2)
            atLeast1Two = atLeast1Two + 1;
            break;
        end
    end
    inc = inc + 1;
end
pos = atLeast1Two/lim;
fprintf("pos = %f", pos);