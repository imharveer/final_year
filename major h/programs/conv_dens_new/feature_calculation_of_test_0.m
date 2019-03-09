
test_samples_0;
test_feat_0=[];
file=tfile0;
for sample_no=1:100
    sample_no
    get_sig_1;
    skeleton;
 con_main;
    test_feat_0(sample_no,1:54)=feat_con(1,:);
end

test_feat_0(:,55)=0;
save test_0 test_feat_0
distance;


