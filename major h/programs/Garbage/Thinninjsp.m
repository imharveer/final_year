[x1,map]=bmpread('d:\major\database\num_0_001.bmp');%reading bmp file
x= x1-1;%convert colour map value into binary
s= sum(x);%col sum
v=sum(x')';%row sum
[r,c]=size(x);%determining values of rows and cols
%serching for block col
a=1;
i=1;
while i~=c
	if s(i)==0
      colo(1,a)=(i);%colo has values of upper and lower limit of a col
      a=a+1;
      while s(i) == 0
            i=i+1;
     	end
      colo(1,a)=(i);
      a=a+1;
   end
   i=i+1;
end		

%serching for block rows
a=1;
i=1;
while i~=r
   if v(i)==0
      rowo(1,a)=(i);%rowo carries top and bottom limit of the dark rows
      a=a+1;
      while v(i) == 0
         i=i+1;
      end
      rowo(1,a)=(i);
      a=a+1;
   end
   i=i+1;
end		

%cutting blocks
col1=2;
col2=3;
row1=6;
row2=7;
i=1;
j=1;
for k= colo(col1):colo(col2)
   for l = rowo(row1):rowo(row2)
     T(i,j)=x(l,k);% T is having the one image of number
 	  j=j+1;
  end
   i=i+1;
   j=1;
end
%Again plotting the histogram for the sum
%Estimation of the bounding box to find the shape of the particular number
aa=0;
t1=sum(T);
t2=sum(T')';
[w,z]=size(T);
for k=1:z
    if aa==0
        if t1(k)~=max(t1)
            aa=aa+1;
            T1=k;
        end
    end
    if aa==1
        if t1(k)==max(t1)
            aa=aa+1;
            T2=k;
        end
    end
end
bb=0;
for l=1:w
    if bb==0
        if t2(l)~=max(t2)
            bb=bb+1;
            T3=l;
        end
    end
    if bb==1
        if t2(l)==max(t2)
            bb=bb+1;
            T4=l;
        end
    end
end
%shiftine limits "cutting"
i1=1;
j1=1;
for k1= T1:T2
   for l1 = T3:T4
     AN(i1,j1)=T(l1,k1);%Actual Number block AN by removing unnecessary area FROM T
 	  i1=i1+1;
  end
   j1=j1+1;
   i1=1;
end
RR= imresize(AN,[40,30]);% RR carries the sttandard 4:3 size of every image
%THINNING
RRsum=sum(RR')';
Ta=1;
Ti=1;
while Ti<41
    if RRsum(Ti,1)<10
        Tb(1,Ta)=Ti;
        Ta=Ta+1;
        while RRsum(Ti,1)<10
            Ti=Ti+1;
        end
        Tb(1,Ta)=(Ti-1);
        Ta=Ta+1;
    end
    Ti=Ti+1;
end
Tb(1,Ta)=0;
%got the values of horizontal rows
Tj=1;
Te=0;%no. of pixcel
Tc=1;%no. of rows
Td=1;%no of cols
while Tc<=40
    if Tc==Tb(Tj)
        Tj=Tj+1;
        while Tc <= Tb(Tj)
            Tc=Tc+1;
        end
        Tj=Tj+1;
    end
    Te=0;%no. of pixcel
    Td=1;
    while Td<=30
        Te=0;
        if RR(Tc,Td)==0
            Tf=Td;%first col where black pikel found
            while RR(Tc,Td)~=1
                Te=Te+1;
                Td=Td+1;
            end
            Tg= floor(Te./2);
            Th=Tf+Tg;
            Td=Tf;
            while RR(Tc,Td)~=1
                if Td==Th
                    Td=Td+1;
                end
                RR(Tc,Td)=1;
                Td=Td+1;
            end
            RR(Tc,Th)=0;
        end
        Td=Td+1;
    end
    Tc=Tc+1;
end
%thinning of horizontal line
[To,Tp]=size(Tb);
if Tb(1)~=0
    Tn=1;
    while Tn<=Tp
        Tk=1;
        Tl=Tb(Tk);
        Tk=Tk+1;
        Tm=Tb(Tk);
        Tq=Tm-Tl;
        Tr=floor(Tq./2);
        Ts=Tl+Tr;
        Tv=Tl;
        while Tv<=Tm
            Tu=1;
              if Tv==Ts
                Tv=Tv+1;
            end
            while Tu<=30
                RR(Tv,Tu)=1;
                Tu=Tu+1;
            end
            Tv=Tv+1;
        end
        Tn=Tn+1;
    end
end