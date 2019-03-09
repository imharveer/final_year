j=0;


load feature_vector;
ga_feature=feature;
    j=0;

       for i=1:100
       j=j+1;
    load test_0;
    test=test_feat_0;
    ga_test(j,:)=test(i,:);
end

    for i=1:100
       j=j+1;
    load test_1;
    test=test_feat_1;
    ga_test(j,:)=test(i,:);
end


   for i=1:100
       j=j+1;
    load test_2;
    test=test_feat_2;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_3;
    test=test_feat_3;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_4;
    test=test_feat_4;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_5;
    test=test_feat_5;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_6;
    test=test_feat_6;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_7;
    test=test_feat_7;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_8;
    test=test_feat_8;
    ga_test(j,:)=test(i,:);
end
   for i=1:100
       j=j+1;
    load test_9;
    test=test_feat_9;
    ga_test(j,:)=test(i,:);
end



save file_c ga_feature ga_test


