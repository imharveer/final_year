
% proceeding of creating childs of array parent which is size of 10 x 37
% first calculate the distribution on the basis of performance
child=[];
ch=0;

while ch<100
    %'Child No. ',ch
        [Y,I]=sort(parent(:,38));
        
        parent_1=parent(I(10),1:36);  % Index 10 will ahve the maximum no. of childs
        parent_2=parent(I(9),1:36);    % index 9 would have next maximum no. of childs
    
        col1=ceil(rand(1)*25)+1;
        col2=col1+10;
        
        for col=col1:col2
            temp1=parent_1(col);
            parent_1(col)=parent_2(col);
            parent_1(col)=temp1;
        end
    
    

        ch=ch+1;
        child(ch,:)=parent_1;
        parent(I(10),38)=parent(I(10),38)-1;
    
        ch=ch+1;
        child(ch,:)=parent_2;
        parent(I(9),38)=parent(I(9),38)-1;
    
end

    % total of <ch> created using this algorithm
%    now calculte performance of each child
    
for i3=1:ch
result=0;
ran=child(i3,:);
distance;
%'Result for this string is ',result
% after this result is calculated as performance, and it is stored as 37th bit in respective random string which is parent here
child(i3,37)=result;
[i3 child(i3,1:10) result]
end
% transfering the value of target string subject to maximum performance i.e. target_result

[P1,IN]=max(child(:,37));

if(P1>target_result)
target_result=P1;
target_string=child(IN,1:36)
end

'target result ',target_result

