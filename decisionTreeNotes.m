% Generating a decision tree
% data1 = data(:,1:4) --> first four columns, all rows
% Labels1 = data(:5) --> column 5 = labels
% tree = fitctree(data1, labels1, 'MinleafSize', 50); -->   help fitctree
%                                                           split the
%                                                           database and
%                                                           create a
%                                                           decision tree
%
% view(tree, 'Mode', 'graph') --> will graphically display the tree
% tree = fitctree(data1, labels1, 'MinleafSize', 10); --> larger tree
% view(tree, "Mode', 'graph') --> each leaf contains at least 10 elements
%
% test = data1(100:125,:)
% testlabels = predict(tree, test)
% 