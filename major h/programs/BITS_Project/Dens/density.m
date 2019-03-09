
f=[];      
        s=1;
            for i=1:6:36
            for j=1:6:36
                a=0;
                p=0;
                for r=i:i+5
                 for c=j:j+5
                       if(C(r,c)==0)
                       a=a+1;
                end   
               end
           end
        p=a/36;
        f(s)=p;
        s=s+1;
    end
end

