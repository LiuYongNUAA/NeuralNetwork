%������������
num0 = [-1,1,1,1,1,1,1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,-1,1,1,1,1,1,1,-1]';
num1 = [-1,1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]';
num2 = [-1,1,1,-1,-1,-1,1,1,1,-1,-1,-1,-1,1,-1,1,1,-1,-1,-1,1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,-1,1,1,-1,-1,-1,-1,1]';
num3 = [-1,1,-1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,-1,1,1,-1,1,1,1,-1]';
num4 = [-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,1,-1,1,-1,-1,-1,1,-1,-1,-1,1,-1,-1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,1,-1,1]';
num5 = [1,1,1,1,-1,-1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,-1,1,1,1,-1]';
num6 = [-1,1,1,1,1,1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,1,1,-1,1,-1,-1,-1,1,-1,-1,-1,-1,1,1,1,-1]';
num7 = [1,1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1]';
num8 = [-1,1,1,-1,1,1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,1,-1,-1,1,-1,-1,-1,1,-1,1,1,-1,1,1,1,-1]';
num9 = [-1,1,1,1,-1,-1,-1,-1,1,-1,-1,-1,1,-1,1,1,1,-1,-1,-1,1,-1,-1,1,1,-1,-1,-1,1,-1,-1,1,-1,1,1,1,1,1,1,-1]';
%��Ȩ����
p = [num0,num1,num2,num3,num4,num5,num6,num7,num8,num9];
w = p*inv(p'*p)*p';
input1 = [-1,1,1,-1,-1,-1,1,1,1,-1,-1,-1,-1,1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,-1,1,1,-1,-1,-1,-1,1]';
input2 = [-1,1,1,-1,-1,1,1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,1,-1]';
input3 = [1,1,1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,1,1,-1]';
input4 = [-1,1,-1,-1,-1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,-1,1,1,-1,-1,1,1,-1]';
input5 = [-1,1,1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1,1,1,1,-1,-1,-1,-1,-1,-1,1,1,-1,-1,-1,-1,-1,-1,1,-1,1,1,-1,-1,1,1,-1]';
input = [input1,input2,input3,input4,input5];
for test = input
    a = hardlims(w*test);
    %disp(a');
    if a == num0
        disp(0)
    elseif a == num1
        disp(1)
    elseif a == num2
        disp(2)
    elseif a == num3
        disp(3)
    elseif a == num4
        disp(4)
    elseif a == num5
        disp(5)    
    elseif a == num6
        disp(6)    
    elseif a == num7
        disp(7)    
    elseif a == num8
        disp(8)    
    elseif a == num9
        disp(9)    
    else
        disp('�޷�ʶ��')
    end
end

%2,6,5,?(0,3,8),9
    