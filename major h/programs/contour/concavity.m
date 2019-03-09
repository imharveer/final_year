
flag_0=0;
flag_1=0;
flag_2=0;
flag_3=0;
four=0;
count=0;
for i=i_min:i_max
    for j=j_min:j_max

        if (RR(i,j)==1)
flag_0=0;
flag_1=0;
flag_2=0;
flag_3=0;

            i1=i-1;
            j1=j;
        count=count+1;

        while(i1>0)
             if(RR(i1,j1)==0)
                 flag_3=1;
             break;    
             end
         i1=i1-1;    
         end
         
         i1=i+1;
         
         while(i1<36)
             if(RR(i1,j1)==0)
                 flag_1=1;

                 break;
             end
             i1=i1+1;
         end
         
         i1=i;
         j1=j-1;

         while(j1>0)
             if(RR(i1,j1)==0)
                 flag_0=1;
                 break;
             end
             j1=j1-1;
         end
         j1=j+1;
         
         while(j1<36)
             if(RR(i1,j1)==0)
                 flag_2=1;
                 break;
             end
             j1=j1+1;
         end
 
% 9th column
 
 if(flag_0 ==1 & flag_1==1 & flag_2==1 & flag_3==1)
feat_con(r+9)=feat_con(r+9)+1;
 end

 % 8th column
 
 if(flag_0 ==1 & flag_1==1 & flag_2==1 & flag_3==0)
feat_con(r+8)=feat_con(r+8)+1;
 end

 % 7th column
 
if(flag_0 ==1 & flag_1==1 & flag_2==0 & flag_3==1)
feat_con(r+7)=feat_con(r+7)+1;
 end

 % 6th column
 
if(flag_0 ==1 & flag_1==0 & flag_2==1 & flag_3==1)
feat_con(r+6)=feat_con(r+6)+1;
 end

 % 5th column
 
if(flag_0 ==0 & flag_1==1 & flag_2==1 & flag_3==1)
feat_con(r+5)=feat_con(r+5)+1;
 end

 % 4th column
 
 if(flag_0 ==0 & flag_1==1 & flag_2==1 & flag_3==0)
feat_con(r+4)=feat_con(r+4)+1;
 end
 
% 3th column
 
if(flag_0 ==1 & flag_1==1 & flag_2==0 & flag_3==0)
feat_con(r+3)=feat_con(r+3)+1;
 end
 
% 2th column
 if(flag_0 ==1 & flag_1==0 & flag_2==0 & flag_3==1)
feat_con(r+2)=feat_con(r+2)+1;
 end
 
% 1th column
 if(flag_0 ==0 & flag_1==0 & flag_2==1 & flag_3==1)
feat_con(r+1)=feat_con(r+1)+1;
 end
  
end
end
end

r=r+9;

