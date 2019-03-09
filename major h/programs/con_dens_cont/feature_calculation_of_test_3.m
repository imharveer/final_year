
test_samples_3;
test_feat_3=[];
file=tfile3;
for sample_no=1:100
    sample_no
    get_sig_1;
    skeleton;
 con_main;
    test_feat_3(sample_no,1:54)=feat_con(1,:);
end

test_feat_3(:,55)=3;
save test_3 test_feat_3
distance;


