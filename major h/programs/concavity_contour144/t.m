
database_samples_8;
file=file8;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
%        skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
            feature(M(1)+sample_no,55)=8;
        end

save feature_vector feature
M=size(feature);

database_samples_9;
file=file9;

for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
     %   skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        feature(M(1)+sample_no,55)=9;
end
save feature_vector feature