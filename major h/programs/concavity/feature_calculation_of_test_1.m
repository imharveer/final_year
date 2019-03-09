
test_samples_1;
test_feat_1=[];
file=tfile1;
for sample_no=1:100
    sample_no
    get_sig_1;
    skeleton;
 con_main;
    test_feat_1(sample_no,1:54)=feat_con(1,:);
end

test_feat_1(:,55)=1;
save test_1 test_feat_1
distance;


