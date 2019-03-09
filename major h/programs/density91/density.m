
f=[];      
        s=1;
            for i=1:4:36
            for j=1:4:36
                a=0;
                p=0;
                for r=i:i+3
                 for c=j:j+3
                       if(C(r,c)==0)
                       a=a+1;
                end   
               end
           end
        p=a/81;
        f(s)=p;
        s=s+1;
    end
end

