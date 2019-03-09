
no_of_samples=15;    % no of each data digit

database_samples_0;

file=file0;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(sample_no,:)=f;
        feature(sample_no,37)=0;    
    end
save feature_vector feature
M=size(feature);

database_samples_1;
file=file1;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M(1)+sample_no,:)=f;
        feature(M(1)+sample_no,37)=1;    
end

save feature_vector feature
M=size(feature);

database_samples_2;
file=file2;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M(1)+sample_no,:)=f;
        feature(M(1)+sample_no,37)=2;
    end

save feature_vector feature
M=size(feature);

database_samples_3;
file=file3;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M(1)+sample_no,:)=f;
            feature(M(1)+sample_no,37)=3;
end

save feature_vector feature
M=size(feature);

database_samples_4;
file=file4;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M+sample_no,:)=f;
            feature(M+sample_no,37)=4;
end

save feature_vector feature
M=size(feature);

database_samples_5;
file=file5;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M+sample_no,:)=f;
            feature(M+sample_no,37)=5;
end

save feature_vector feature
M=size(feature);

database_samples_6;
file=file6;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M+sample_no,:)=f;
            feature(M+sample_no,37)=6;
end

save feature_vector feature
M=size(feature);

database_samples_7;
file=file7;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M+sample_no,:)=f;
            feature(M(1)+sample_no,37)=7;
end

save feature_vector feature
M=size(feature);

database_samples_8;
file=file8;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M(1)+sample_no,:)=f;
            feature(M(1)+sample_no,37)=8;
        end

save feature_vector feature
M=size(feature);

database_samples_9;
file=file9;

for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        skeleton;
        density;
        feature(M(1)+sample_no,:)=f;
        feature(M(1)+sample_no,37)=9;
end