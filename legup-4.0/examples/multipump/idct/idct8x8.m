% from: http://www.mathworks.com/matlabcentral/fileexchange/15494-2-d-dctidct-for-jpeg-compression

% a = int32(255*rand(8,8))   
% a-int32(idct8x8(dct8x8(a)))     
% a-int32(idct2(dct2(a)))
% correct to within a decimal place
% idct2(a)-idct8x8(a)>0.1


function O = IDCT_8X8(I)
cosines = [1.0000  1.0000  1.0000  1.0000  1.0000  1.0000  1.0000  1.0000
           0.9808  0.8315  0.5556  0.1951 -0.1951 -0.5556 -0.8315 -0.9808
           0.9239  0.3827 -0.3827 -0.9239 -0.9239 -0.3827  0.3827  0.9239
           0.8315 -0.1951 -0.9808 -0.5556  0.5556  0.9808  0.1951 -0.8315
           0.7071 -0.7071 -0.7071  0.7071  0.7071 -0.7071 -0.7071  0.7071
           0.5556 -0.9808  0.1951  0.8315 -0.8315 -0.1951  0.9808 -0.5556
           0.3827 -0.9239  0.9239 -0.3827 -0.3827  0.9239 -0.9239  0.3827
           0.1951 -0.5556  0.8315 -0.9808  0.9808 -0.8315  0.5556 -0.1951];

alpha = [0.1250  0.1768  0.1768  0.1768  0.1768  0.1768  0.1768  0.1768
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500
         0.1768  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500  0.2500];
O = double(zeros(8,8));
for m = 1 : 8
    for n = 1 : 8
        s = double(0);
        for p = 1 : 8
            for q = 1 : 8
                s = s + (alpha(p,q) * double(I(p,q)) * cosines(p,m) * cosines(q,n));
            end
        end
        O(m,n) = s;
    end
end
return
