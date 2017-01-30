clc;
clear;
grades = {'F', 'D', 'C', 'B', 'A'};
load('part2Data.mat');
load('part4Data.mat');

part2_sorted_id = sortrows(part2Data, 1);
part4_sorted_id = sortrows(part4Data, 1);

students_happy_part2 = [part2_sorted_id(:, 1) (part2_sorted_id(:, 3) > part4_sorted_id(:, 2))];
students_happy_part2 = students_happy_part2(students_happy_part2(:, 2) == 1);

students_happy_part4 = [part4_sorted_id(:, 1) ( part4_sorted_id(:, 2) > part2_sorted_id(:, 3))];
students_happy_part4 = students_happy_part4(students_happy_part4(:, 2) == 1);

part2Grades = discretize(part2_sorted_id(:, 3), 5, grades);
part4Grades = discretize(part4_sorted_id(:, 2), 5, grades);

student_grades_part2_part4 = [num2cell(part2_sorted_id(:, 1)) part2Grades part4Grades];