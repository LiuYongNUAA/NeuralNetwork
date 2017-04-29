load('test3_train_w.mat')
alpha = 0.1;
tor = 0.000001;
inputs = train_inputs';
wtemp = zeros(7,8);
for i = 1:1:100
    for p = inputs
        a = compet(w*p);
        for j = 1:1:7
            if a(j) == 1
                break
            end
        end
        w(j,:) = w(j,:) + alpha*(p'-w(j,:));
    end
    if i ==1 
         w1 = w;
    elseif i ==10
        w10 = w;
    end
    e = wtemp - w;
    E = var(e(:));
    if E < tor
        break
    else
        wtemp = w;
    end
end
test = [0.625,1.75,1.875,0.5,-0.375,-1.5,-13.5,-0.875;1,2.375,1.5,0.375,-0.25,-4.875,-4.125,-0.25]';
for in = test
    a = compet(w*in);
    disp(a);
end
%第三类低温冻化