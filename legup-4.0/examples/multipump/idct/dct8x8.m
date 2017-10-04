% from: http://www.mathworks.com/matlabcentral/fileexchange/15494-2-d-dctidct-for-jpeg-compression

function O = DCT_8X8(I)
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
for p = 1 : 8
    for q = 1 : 8
        s = double(0);
        for m = 1 : 8
            for n = 1 : 8
                s = s + (double(I(m,n)) * cosines(p,m) * cosines(q,n));
            end
        end
        O(p,q) = alpha(p,q) * s;
    end
end
return
