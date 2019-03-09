equal=0;
no_of_samples=100;    % no of each data digit
feature=[]; % This vector will have the caclulated feature of dataset
database_samples_0;   % Call to save Dataset of Zero to a vector <file0>
file=file0;
for sample_no=1:no_of_samples
        sample_no
        get_sig_1;   % Call to Normalise and resize of Image vector 
        %skeleton;
        density;   % Call to feature calculation
        feature(sample_no,1:36)=f(1,:);   % Saving calculated density feature as a row of vector <feature>
        feature(sample_no,37)=0;    % Copy a dummy number 0 at last column of feature vector, for compare purpose.
    end
save feature_vector feature  % Just saving vector <feature> to File <feature_vector>

M=size(feature);  % M variable will be used to increase row of vector <feature>
database_samples_1;
file=file1;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
       feature(M(1)+sample_no,37)=1;    
end
save feature_vector feature
M=size(feature);
database_samples_2;
file=file2;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=2;    
end
save feature_vector feature
M=size(feature);
database_samples_3;
file=file3;
for sample_no=1:no_of_samples
        sample_no;
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=3;    
end
save feature_vector feature
M=size(feature);
database_samples_4;
file=file4;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
       feature(M(1)+sample_no,37)=4;    
end
save feature_vector feature
M=size(feature);
database_samples_5;
file=file5;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=5;    
end

save feature_vector feature
M=size(feature);

database_samples_6;
file=file6;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=6;    
end

save feature_vector feature
M=size(feature);

database_samples_7;
file=file7;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=7;    
end

save feature_vector feature
M=size(feature);

database_samples_8;
file=file8;
for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=8;    
        end

save feature_vector feature
M=size(feature);

database_samples_9;
file=file9;

for sample_no=1:no_of_samples
       M+sample_no
        get_sig_1;
        %skeleton;
        density;
        feature(M(1)+sample_no,1:36)=f(1,:);
        feature(M(1)+sample_no,37)=9;    
end
save feature_vector feature % This <feature Vector will is having complete feature set for Density  as DATASET (Database)

feature_calculation_of_test  % This is call to calculate the features of testdata 
% Below logic is to calculate results from vector <result>
R=0;
for i=1:10
    R=R+result(i,i);
end
R
result
save result result

