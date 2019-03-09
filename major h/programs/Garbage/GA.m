% this is a Genetic Algorithm part_1
cl1=clock
target_result=0;
target_string=[];
parent=[];

old_result=0;
% Calculation of first 10 random strings of 0 and 1  
for i=1:10
for j=1:36
    if(rand(1)>.5)
    parent(i,j)=1;
    end
end
end

% for each random string (parent[i0) of size 1x36  calculate performance using distance.m
for i=1:10
result=0;
ran=parent(i,:);
distance;
% after this result is calculated as performance, and it is stored as 37th bit in respective random string which is parent here
parent(i,37)=result;
end
% transfering the value of target string subject to maximum performance i.e. target_result

[P1,IN]=max(parent(:,37));
target_result=P1;
target_string=parent(IN,1:36);

% proceeding of creating childs of array parent which is size of 10 x 37
% first calculate the distribution on the basis of performance

total=0;
for c1=1:10
total=total+parent(c1,37);
end

for c1=1:10
t1=0;
t1=ceil(parent(c1,37)*100/total);
parent(c1,38)=t1;
end

%parent

% running the GA algorithm for 10 times 
'target result ',target_result

for turn=1:2
'running GA algorithm for ',turn

GA_1;
[X1,I1]=sort(child(:,37));
% copying 10 childern with maximum performance to parent
I12=0;

parent=[];
no=0;
for i=100:-1:91
    no=no+1;
    parent(no,:)=child(I1(i),:);
end


total=0;
for c1=1:10
total=total+parent(c1,37);
end
total

for c1=1:10
t1=0;
t1=ceil(parent(c1,37)*100/total);
parent(c1,38)=t1;
end


end

% proceed 
cl2=clock;
cl2(4:6)-cl1(4:6)





