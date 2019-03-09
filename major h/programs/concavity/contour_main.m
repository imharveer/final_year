
f=[];

RR =~edge(RR,'canny');
n=0;

%contour=[];

%for k=1:144
 %   f(k)=0;
 %end

        X0=0;
        X1=0;
        X2=0;
        X3=0;
        X4=0;
        X5=0;
        X6=0;
        X7=0;
        Xb=0;
        

        for i1=i_min:i_max
            for j1=j_min:j_max
                
                if(i1>1 & i1<36)
                if(RR(i1-1,j1)==1 & RR(i1,j1)==1)
                    X0=X0+1;
                end
            end
            

               if(i1<36 & j1>1)
                if(RR(i1+1,j1-1)==1 & RR(i1,j1)==1)
                    X1=X1+1;
                end
            end
                if(i1<36)
                if(RR(i1+1,j1)==1 & RR(i1,j1)==1)
                    X2=X2+1;
                end
            end
                if(j1<36 & i1<36)
                if(RR(i1+1,j1+1)==1 & RR(i1,j1)==1)
                    X3=X3+1;
                end
            end
                if(j1<36)
                if(RR(i1,j1+1)==1 & RR(i1,j1)==1)
                    X4=X4+1;
                end
            end
                if(i1>1 & j1<36)
                if(RR(i1-1,j1+1)==1 & RR(i1,j1)==1)
                    X5=X5+1;
                end
            end
                if(i1>1)
                if(RR(i1-1,j1)==1 & RR(i1,j1)==1)
                    X6=X6+1;
                end
            end
            
            if(i1>1 & j1>1)
                if(RR(i1-1,j1-1)==1 & RR(i1,j1)==1)
                    X7=X7+1;
                end
            end
if(RR(i1,j1)==1)
    Xb=Xb+1;
end

            end
        end

        
feat_con=[feat_con X0 X1 X2 X3 X4 X5 X6 X7 Xb] ;
