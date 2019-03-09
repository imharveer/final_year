C=[];
C=SCALED_SIG;
S1=C;
step=0;

 for i=1:36
    for j = 1:36
        if(C(i,j)==1)
            C(i,j)=0;
        else
            C(i,j)=1;
        end
    end
end

x=0;
y=0;
FLAG=[];
FLAG2=[];
 for i=2:35
    
    for j = 2:35
   
N= sum([C(i-1,j-1),C(i,j-1),C(i+1,j-1),C(i-1,j),C(i,j),C(i+1,j),C(i-1,j+1),C(i,j+1),C(i+1,j+1)]);  
T=0;

if (C(i+1,j+1)>C(i,j+1))    
    T=T+1;
end

if (C(i+1,j)>C(i+1,j+1))    
    T=T+1;
end
if (C(i+1,j-1)>C(i+1,j))    
    T=T+1;
end
if (C(i,j-1)>C(i+1,j-1))    
    T=T+1;
end
if (C(i-1,j-1)>C(i,j-1))    
    T=T+1;
end
if (C(i-1,j)>C(i-1,j-1))    
    T=T+1;
end
if (C(i-1,j-1)>C(i-1,j))    
    T=T+1;
end
if (C(i,j+1)>C(i-1,j+1))    
    T=T+1;
end

P1=1;

if(C(i,j+1)==0) 
    P1=0;
end
    if(C(i+1,j)==0)
        P1=0;
    end
if (C(i,j-1)==0)

    P1=0;
end

P2=1;

if(C(i-1,j)==0) 
    P2=0;
end
    if(C(i+1,j)==0)
        P2=0;
    end
if (C(i,j-1)==0)
P2=0;
end

if(N>1 & N<7)
    if(T==1)
        if(P1 ==0)
            if (P2==0)
                x=x+1;
                FLAG(x,:)=[i j];
            end
        end
    end
end
               
end
end

% end of step 1

[M1,N1]=size(FLAG);

for i=1:M1
        L1=FLAG(i,1);
        L2=FLAG(i,2);
        C(L1,L2)=0;
end

% begin of step 2


for i=2:35
    
    for j = 2:35
N=0;   
N= sum([C(i-1,j-1),C(i,j-1),C(i+1,j-1),C(i-1,j),C(i,j),C(i+1,j),C(i-1,j+1),C(i,j+1),C(i+1,j+1)]);  
T=0;

if (C(i+1,j+1)>C(i,j+1))    
    T=T+1;
end

if (C(i+1,j)>C(i+1,j+1))    
    T=T+1;
end
if (C(i+1,j-1)>C(i+1,j))    
    T=T+1;
end
if (C(i,j-1)>C(i+1,j-1))    
    T=T+1;
end
if (C(i-1,j-1)>C(i,j-1))    
    T=T+1;
end
if (C(i-1,j)>C(i-1,j-1))    
    T=T+1;
end
if (C(i-1,j-1)>C(i-1,j))    
    T=T+1;
end
if (C(i,j+1)>C(i-1,j+1))    
    T=T+1;
end



P3=1;

if(C(i,j+1)==0) 
    P3=0;
end
    if(C(i+1,j)==0)
        P3=0;
    end
if (C(i-1,j)==0)

    P3=0;
end

P4=1;

if(C(i,j+1)==0) 
    P4=0;
end
    if(C(i,j-1)==0)
        P4=0;
    end
if (C(i-1,j)==0)
P4=0;
end

if(N>1 & N<7)
    if(T==1)
        if(P3 ==0)
            if (P4==0)
                y=y+1;
                FLAG2(y,:)=[i j];
            end
        end
    end
end

end
end

[M2,N2]=size(FLAG2);

for i=1:M2
        L1=FLAG2(i,1);
        L2=FLAG2(i,2);
        C(L1,L2)=0;
end
 count=[step M1 M2];


for i=1:36
    for j = 1:36
        if(C(i,j)==1)
            C(i,j)=0;
        else
            C(i,j)=1;
        end
    end
end

imshow(C)