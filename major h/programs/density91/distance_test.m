

% This Program is designed to test and Analysis the Wrong results
result=[];

row_no=1;
test_feat=test_feat_3;

distance;


cnt=0;
wrong=[];
% this program calculates the distance between features of main database (feature) and 
% test data base of a specific digit i.e. test_feat_x  ( x -> 0,1,2,3,4..9)
% calculated result is the % of recognition which will be stored in the file GA as 37th bit of calling random string.
row =0;
result0=0;
result1=0;
result2=0;
result3=0;
result4=0;
result5=0;
result6=0;
result7=0;
result8=0;
result9=0;

DD=[];

for i1=1:100
D=[];
    for j1=1:1000
       D2=0; 
        for k1=1 :90
                      %  if(ran(k1)==1)
            D1= feature(j1,k1)-test_feat(i1,k1);
            D2=D2+D1*D1;
            %        end
end
D(j1)=D2;
end

[Y,I1]=min(D);

%DD1(i,1)=test_feature(i,37);
%DD1(i,2)=feature(I1,37);

if(feature(I1,91)==1)
    result1=result1+1;
end

if(feature(I1,91)==2)
    result2=result2+1;
end

if(feature(I1,91)==3)
    result3=result3+1;
                else
    cnt=cnt+1;
wrong(cnt,:)=[i1 I1];    

end
if(feature(I1,91)==4)
    result4=result4+1;
end
if(feature(I1,91)==5)
    result5=result5+1;
end
if(feature(I1,91)==6)
    result6=result6+1;

end
if(feature(I1,91)==7)
    result7=result7+1;

end
if(feature(I1,91)==8)
    result8=result8+1;
end
if(feature(I1,91)==9)
    result9=result9+1;
end

if(feature(I1,91)==0)
    result0=result0+1;
end


end

result(row_no,:) = [result0 result1 result2 result3 result4 result5 result6 result7 result8 result9];
