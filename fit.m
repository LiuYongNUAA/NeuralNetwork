MnO2 = 1:0.2:4.4;
Time = [1.5000 0.5376 -0.0429 -0.3569 -0.4920 -0.5125 -0.4649 -0.3814 -0.2840 -0.1871 0.1000 -0.0287 0.0227 0.0515 0.0564 0.0375 -0.0020 -0.0547];
% ��ʼ��������
Inputnum = 1;    %�����ڵ���
Hiddennum = 10; %������ڵ���
Outputnum = 1;   %�����ڵ���
%��ʼ��Ȩֵ����ֵ
w1 = 2 * rand(Hiddennum,Inputnum) - 1;
b1  = 2 * rand(Hiddennum, 1) - 1;
w2 = 2 * rand(Outputnum,Hiddennum) - 1;
b2 = 2 * rand(Outputnum,1) - 1;
maxepochs = 10000;  %����������
alpha = 0.1;    %ѧϰ��


for epoch = 1:1:maxepochs
    i = 1;
    w1_change = [];
    b1_change = [];
    w2_change = [];
    b2_change = [];
    for p = MnO2    
        t = Time(i);
        %ǰ�����
        a1 = logsig(w1*p + b1);
        a2 = purelin(w2*a1 + b2);
        %�������
        s2 = -2*(t - a2);
        fn = zeros(Hiddennum,Hiddennum);
        for j = 1:1:Hiddennum
            ai = a1(j);
            fn(j,j) = ai*(1-ai);
        end
        s1 = fn*w2'*s2;
        %������
        w1_change = [w1_change,s1*p'];
        b1_change = [b1_change,s1];
        w2_change = [w2_change;s2*a1'];
        b2_change = [b2_change,s2];
        i = i+1;
    end
    %���Ȩֵ����ֵ������
    w1_chan = mean(w1_change')';
    b1_chan = mean(b1_change')';
    w2_chan = mean(w2_change);
    b2_chan = mean(b2_change);
    %����Ȩֵ����ֵ
    w1 = w1 - alpha*w1_chan;
    b1 = b1 - alpha*b1_chan;
    w2 = w2 - alpha*w2_chan;
    b2 = b2 - alpha*b2_chan;
end
result =[];
for p = MnO2
    a1 = logsig(w1*p+b1);
    a2 = purelin(w2*a1+b2);
    result = [result,a2];
end
%��ͼ
plot(MnO2,Time,'r',MnO2,result,'b--')
title('BP��������Ⱦ�����������')
legend('��������','�������')
xlabel('MnO2/g')
ylabel('�߻�ʱ��/h')
%Ԥ��
test = 4.6:0.2:5.6;
testresult =[];
for ptest = test
    a1 = logsig(w1*ptest+b1);
    a2 = purelin(w2*a1+b2);
    testresult = [testresult,a2];
end
disp(testresult);

    
        
    
        
        
        




