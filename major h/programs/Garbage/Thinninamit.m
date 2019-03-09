get_sig_1
RRsum=sum(RR')';
Ta=1;
Ti=1;
while Ti<37
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
while Tc<=36
    if Tc==Tb(Tj)
        Tj=Tj+1;
        while Tc <= Tb(Tj)
            Tc=Tc+1;
        end
        Tj=Tj+1;
    end
    Te=0;%no. of pixcel
    Td=1;
    while Td<=36
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
            while Tu<=36
                RR(Tv,Tu)=1;
                Tu=Tu+1;
            end
            Tv=Tv+1;
        end
        Tn=Tn+1;
    end
end