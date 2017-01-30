clc; clear;
[data, txt, raw] = xlsread('DataHW1.xlsx');
grades = {'F', 'D', 'C', 'B', 'A'};
distances = zeros(10);

ids = [3 9 1 2 3 7 5 17 35 40];

for a = 1:10
   for b = 1:10
       distances(a, b) = euclidian(ids(a), ids(b), data);
   end
end

function [distance] = euclidian(id1, id2, data)
    student1 = data(id1, 2:4);
    student2 = data(id2, 2:4);
    
    distance = sqrt(sum((student2 - student1).^2));
end