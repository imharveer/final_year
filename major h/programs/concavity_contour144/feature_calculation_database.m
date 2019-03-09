
no_of_samples=100;    % no of each data digit
feature=[];

database_samples_0;

file=file0;
for sample_no=1:no_of_samples
        sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(sample_no,55:198)=f(1,:);
        feature(sample_no,199)=0;    
    end
save feature_vector feature
M=size(feature);

database_samples_1;
file=file1;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=1;    
end

save feature_vector feature
M=size(feature);

database_samples_2;
file=file2;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=2;    

    end

save feature_vector feature
M=size(feature);

database_samples_3;
file=file3;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=3;    
end

save feature_vector feature
M=size(feature);

database_samples_4;
file=file4;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=4;    
end

save feature_vector feature
M=size(feature);

database_samples_5;
file=file5;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=5;    
end

save feature_vector feature
M=size(feature);

database_samples_6;
file=file6;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=6;    
end

save feature_vector feature
M=size(feature);

database_samples_7;
file=file7;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
                feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=7;    
end

save feature_vector feature
M=size(feature);

database_samples_8;
file=file8;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=8;    
        end

save feature_vector feature
M=size(feature);

database_samples_9;
file=file9;

for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        con_main;
        feature(M(1)+sample_no,1:54)=feat_con(1,:);
        contour_main;
        feature(M(1)+sample_no,55:198)=f(1,:);
        feature(M(1)+sample_no,199)=9;    
end
save feature_vector feature


feature_calculation_of_test

R=0;
for i=1:10
    R=R+result(i,i);
end

R


save result result
