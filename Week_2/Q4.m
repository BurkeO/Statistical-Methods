location = [0.05 0.1 0.05 0.05; 0.05 0.1 0.05 0.05; 0.05 0.05 0.1 0.05; 0.05 0.05 0.1 0.05];
barsGivenLoc = [0.75 0.95 0.75 0.05; 0.05 0.75 0.95 0.75; 0.01 0.05 0.75 0.95; 0.01 0.01 0.05 0.75];
p_b = 0;
for i = 1:numel(location)
    p_b = p_b + (location(i) * barsGivenLoc(i));
end
%disp(p_b);
locGivenBars = zeros(4,4);
for i = 1:numel(locGivenBars)
   locGivenBars(i) = (barsGivenLoc(i) * location(i))/p_b;
end
disp(locGivenBars);