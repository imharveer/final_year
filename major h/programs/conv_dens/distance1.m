% this program calculates the distance between features of main database (feature) and 
% test data base of a specific digit i.e. test_feat_x  ( x -> 0,1,2,3,4..9)
% calculated result is the % of recognition which will be stored in the file GA as 37th bit of calling random string.

result=0;
row=0;
r=0;
dup=[];
DD=[];
error=[];

for i1=1:2500
    i1
D=[];
    for j1=1:5000
       D2=0; 
        for k1=1 :90
           %if(ran(k1)==1)
            D1= feature(j1,k1)-test_feat(i1,k1);
            D2=D2+D1*D1;
            %end
end
D(j1)=D2;
end

[Y,I1]=min(D);

if(feature(I1,91)==test_feat(i1,91))
if(Y==0)
    r=r+1;
    dup(r,:)=[feature(I1,91),I1,i1]
   
end

    result=result+1;
    
else
    row=row+1;
error(row,:)=[feature(I1,91), I1, i1]
end

end


save analysis error dup
