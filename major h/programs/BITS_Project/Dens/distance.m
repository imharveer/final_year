% this program calculates the distance between features of main database (feature) and 
% test data base of a specific digit i.e. test_feat_x  ( x -> 0,1,2,3,4..9)
% calculated result is the % of recognition which will be stored in the file GA as 37th bit of calling random string.


result0=0; % result0 will have the count - how many testdata matches with 0
result1=0; % result1 will have the count - how many testdata matches with 1
result2=0;
result3=0;
result4=0;
result5=0;
result6=0;
result7=0;
result8=0;
result9=0;

DD=[];

for i1=1:100  % Loop to call each testdata
D=[];
    for j1=1:1000   % loop to call each Dataset
       D2=0; 
        for k1=1 :36  % loop to call each column of feaure vector
                      %  if(ran(k1)==1) % this is for GA use
            D1= feature(j1,k1)-test_feat(i1,k1); % Distance formula 
            D2=D2+D1*D1;
            %        end
end
D(j1)=D2;
end
% Logic to find Row number which as minimum distance - Start
[Y,I1]=min(D); % Subscript <I1> will returned as row number of testdata for which it has minimum distance
if(Y==0)
    equal=equal+1;
    eq_mat(equal,:)=[i1 j1];
end

% Logic End

%DD1(i,1)=test_feature(i,37);
%DD1(i,2)=feature(I1,37);

% Logic to compare last digit of feature with  returned disgit and stores
% in respective vector 
if(feature(I1,37)==1)
    result1=result1+1;
end
if(feature(I1,37)==2)
    result2=result2+1;
end
if(feature(I1,37)==3)
    result3=result3+1;
end
if(feature(I1,37)==4)
    result4=result4+1;
end
if(feature(I1,37)==5)
    result5=result5+1;
end
if(feature(I1,37)==6)
    result6=result6+1;
end
if(feature(I1,37)==7)
    result7=result7+1;
end
if(feature(I1,37)==8)
    result8=result8+1;
end
if(feature(I1,37)==9)
    result9=result9+1;
end

if(feature(I1,37)==0)
    result0=result0+1;
end

end
% result vector then have row added for each digit. Finally it will have 10
% rows
result(row_no,:) = [result0 result1 result2 result3 result4 result5 result6 result7 result8 result9]