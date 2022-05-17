require_relative "./initHash";
require_relative "../bitwise-operator/index";
require_relative "../function/cubeRootOfPrime"
require_relative "../function/messageSchedule"


# function

def temporary1 i, w
    p1 = sigma($compressArray[4],1,true)
    p2 = choice($compressArray[4],$compressArray[5],$compressArray[6])
    p3 = $compressArray[7];
    p4 = $randNum[i];
    p5 = w[i];
    m1 = addBit(addBit(addBit(p1, p2), addBit(p3, p4)), p5);
    return m1;
end

def temporary2
    p1 = sigma($compressArray[0],0,true);
    p2 = majority($compressArray[0], $compressArray[1],$compressArray[2]);
    m2 = addBit(p1,p2);
    return m2;
end
