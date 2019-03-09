
RR = C;
f=[];

%RR =~edge(RR,'canny');
n=0;

%contour=[];

for k=1:81
    f(k)=0;
end

k=0;
for i=1:4:36
    for j=1:4:36
BL=0;
for i1=i:i+3;
            for j1=j:j+3
                
                if(RR(i1,j1)==1)
                    BL=BL+1;
                end
                
            end
        end
    k=k+1;
    f(k)=BL;
    end
end

