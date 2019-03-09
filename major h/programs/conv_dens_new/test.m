
result=[];

test_samples_9;
test_feat=[];
file=tfile9;
for sample_no=1:100
    sample_no;
    get_sig_1;
    %skeleton;
 con_main;
    test_feat(sample_no,1:54)=feat_con(1,:);
    density;
    test_feat(sample_no,55:90)=f(1,:);
end
test_feat(:,91)=0;
row_no=1;
distance_test;
wrong


