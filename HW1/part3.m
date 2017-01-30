clc; clear;
[data, txt, raw] = xlsread('DataHW1.xlsx');
data(:, 5) = sum(data(:, 2:4), 2);

% From part 1:
all_grades = discretize(data(:, 5), 5);

% Data from part 2 (part2ManualData is "relevant_data")
load('part2Data.mat')
sorted_ID = sortrows(part2Data, 1); % sorting data by student ID

% Part 3
students_changed_grades = [sorted_ID(:, 1) (sorted_ID(:, 3) ~= all_grades(:, 1))];
students_changed_grades = students_changed_grades(students_changed_grades(:, 2) == 1);
