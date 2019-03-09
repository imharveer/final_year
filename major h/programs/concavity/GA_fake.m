% this is a Genetic Algorithm part_1
cl1=clock
target_result=0;
target_string=[];
parent=[];
results=[];
old_result=0;
% Calculation of first 10 random strings of 0 and 1  
for i=1:100
for j=1:36
    if(rand(1)>.5)
    parent(i,j)=1;
    end
end
end
parent(1:100,:)=1;
% for each random string (parent[i0) of size 1x36  calculate performance using distance.m

for i=1:100
result=0;
ran=parent(i,:);
distance;
% after this result is calculated as performance, and it is stored as 37th bit in respective random string which is parent here
parent(i,37)=result;
[i result]
results=parent;
save results results;
end
% transfering the value of target string subject to maximum performance i.e. target_result

[P1,IN]=max(parent(:,37));
target_result=P1;
target_string=parent(IN,1:36);


cl2=clock;
cl2(4:6)-cl1(4:6)





