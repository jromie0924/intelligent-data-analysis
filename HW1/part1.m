clc; clear;
[data, txt, raw] = xlsread('DataHW1.xlsx');
data(:, 5) = sum(data(:, 2:4), 2);
grades = {'F', 'D', 'C', 'B', 'A'};
all_grades = discretize(data(:, 5), 5, grades);
results_all_students = [num2cell(data(:, 1)) all_grades];
numGrades = [grades; cellfun(@(x) sum(ismember(all_grades, x)), grades, 'un', 0)];
