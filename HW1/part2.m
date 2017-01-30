clc; clear;
[data, txt, raw] = xlsread('DataHW1.xlsx');
data(:, 5) = sum(data(:, 2:4), 2);
grades = {'F', 'D', 'C', 'B', 'A'};
relevant_data = sortrows([data(:, 1) data(:, 5)], 2);

% Manually applied the equal-frequency partitioning on relevant_data.
% then...

numGrades = [grades; num2cell(histcount(relevant_data(:, 3), 5))];

sorted_ID = sortrows(relevant_data, 1)
equal_width_binning = discretize(sorted_ID(:, 2), 5);
angry_students = [sorted_ID(:, 1) (sorted_ID(:, 3) < equal_width_binning)];
happy_students = [sorted_ID(:, 1) (sorted_ID(:, 3) > equal_width_binning)];
onlyAngryStudents = angry_students(angry_students(:, 2) == 1);
onlyHappyStudents = happy_students(happy_students(:, 2) == 1);