


test_samples_7;
test_feat_7=[];
file=tfile7;
for sample_no=1:250
    sample_no;
    get_sig_1;
    %skeleton;
 con_main;
    test_feat_7(sample_no,1:54)=feat_con(1,:);
    density;
    test_feat_7(sample_no,55:90)=f(1,:);
end
test_feat_7(:,91)=7;
save test_7 test_feat_7
row_no=8;
test_feat(1751:2000,:)=test_feat_7(1:250,:);



test_samples_8;
test_feat_8=[];
file=tfile8;
for sample_no=1:250
    sample_no;
    get_sig_1;
    %skeleton;
 con_main;
    test_feat_8(sample_no,1:54)=feat_con(1,:);
    density;
    test_feat_8(sample_no,55:90)=f(1,:);
end
test_feat_8(:,91)=8;
save test_8 test_feat_8
row_no=9;
test_feat(2001:2250,:)=test_feat_8(1:250,:);



test_samples_9;
test_feat_9=[];
file=tfile9;
for sample_no=1:250
    sample_no;
    get_sig_1;
    %skeleton;
 con_main;
    test_feat_9(sample_no,1:54)=feat_con(1,:);
    density;
    test_feat_9(sample_no,55:90)=f(1,:);
end
test_feat_9(:,91)=9;
save test_9 test_feat_9
row_no=10;
test_feat(2251:2500,:)=test_feat_9(1:250,:);


save test_feat test_feat

