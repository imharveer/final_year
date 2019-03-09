
f=[];

RR =~edge(RR,'canny');
n=0;

%contour=[];

%for k=1:144
 %   f(k)=0;
 %end

k=0;
for i=1:6:36
    for j=1:6:36
        Xa=0;
        Xb=0;
        Xc=0;
        Xd=0;
        for i1=i:i+5;
            for j1=j:j+5
                
                if(i1>1 & i1<26)
                    
                if(RR(i1-1,j1)==1 & RR(i1,j1)==1 & RR(i1+1,j1)==1)
                    Xa=Xa+1;
                end
                
            end
            
            if(j1>1 & j1<36)
                if(RR(i1,j1-1)==1 & RR(i1,j1)==1 & RR(i1,j1+1)==1)
                    Xb=Xb+1;
                end
                
            end
            
            if (i1>1 & j1>1 & i1<36 & j1<36)
                if(RR(i1-1,j1-1)==1 & RR(i1,j1)==1 & RR(i1+1,j1+1)==1)
                    Xc=Xc+1;
                end
            end
            
                
            if(i1<36 & j1>1 & i1>1 & j1<36)    
                if(RR(i1+1,j1-1)==1 & RR(i1,j1)==1 & RR(i1-1,j1+1)==1)
                    Xd=Xd+1;
                end
            end
            
                
                
            end
        end
        
f=[f Xa Xb Xc Xd];       
    end
end

