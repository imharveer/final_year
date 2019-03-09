SCALED_SIG=[];
FIN_SIG=[];
SIG=[];
%[x1,map]=imread('num_5.bmp');%reading bmp file

SIG=imread(file(sample_no,:));
%SIG=x1;
[X,Y]=size(SIG);
MINROW=-1;
MINCOL=-1;
MAXROW=-1;
MAXCOL=-1;

for i=1:X
    for j=1:Y
        if (SIG(i,j)==0)
            MINROW=i;
            break
        end
    end
    if(MINROW>-1)
        break
    end
    
end

for j=1:Y
    for i=1:X
        if (SIG(i,j)==0)
            MINCOL=j;
            break
        end
    end
        if(MINCOL>-1)
        break
    end
    
end

for i=X:-1:1
    for j=Y:-1:1
        if (SIG(i,j)==0)
            MAXROW=i;
            break
        end
    end
        if(MAXROW>-1)
        break
    end
    
end
for j=Y:-1:1
    for i=X:-1:1
        if (SIG(i,j)==0)
            MAXCOL=j;
            break
        end
    end
        if(MAXCOL>-1)
        break
    end
    
end

m=0;
n=0;
for i=MINROW :1: MAXROW-1
    m=m+1;
   n=0;
    for j=MINCOL :1: MAXCOL-1
        n=n+1;
        FIN_SIG(m,n)=SIG(i,j);
    end
end
SCALED_SIG=imresize(FIN_SIG,[36,36]);
RR=SCALED_SIG;
imshow(RR)