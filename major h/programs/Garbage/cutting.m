[x,map]=imread('tnum_1_016.bmp');
%x= x1-1;
s= sum(x);
v=sum(x')';
[r,c]=size(x);
colo=[];
rowo=[];
%serching for block col
a=1;
i=1;
while i~=c
	if s(i)==0
      colo(1,a)=(i);
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
      rowo(1,a)=(i);
      a=a+1;
      while v(i) == 0
         i=i+1;
      end
      rowo(1,a)=(i);
      a=a+1;
   end
   i=i+1;
end		
[r11,c11]=size(colo);
[r22,c22]=size(rowo);

%cutting blocks
col1=6;
col2=7;
row1=2;
row2=3;
m1=1;
   	i=1;
		j=1;
		for k= colo(col1):colo(col2)
		   for l = rowo(row1):rowo(row2)
		     T(i,j)=x(l,k);
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
		     AN(i1,j1)=T(l1,k1);
		 	  i1=i1+1;
		  end
		   j1=j1+1;
		   i1=1;
		end
                     