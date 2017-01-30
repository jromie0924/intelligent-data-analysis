clc; clear;
[data, txt, raw] = xlsread('DataHW1.xlsx');
grades = {'F', 'D', 'C', 'B', 'A'};

data(:, 5) = zscore(data(:, 2)); % Physics
data(:, 6) = zscore(data(:, 3)); % Math
data(:, 7) = zscore(data(:, 4)); % English
data(:, 8) = sum(data(:, 5:7), 2); % Sum of all subjects' z-scores
data = sortrows(data, 8);

% Manually applied the equal-frequency partitioning on relevant_data.
% then...

relevant_data = [data(:, 1) data(:, 9)];
sorted = sortrows(relevant_data, 1);
student_grades =[num2cell(sorted(:, 1)) discretize(sorted(:, 2), 5, {'A', 'B', 'C', 'D', 'F'})];