
test_samples_2;
test_feat_2=[];
file=tfile2;
for sample_no=1:100
    sample_no
    get_sig_1;
    skeleton;
 con_main;
    test_feat_2(sample_no,1:54)=feat_con(1,:);
end

test_feat_2(:,55)=2;
save test_2 test_feat_2
distance;


