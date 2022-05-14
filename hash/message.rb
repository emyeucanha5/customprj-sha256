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
    # puts changeBitsToDecimal(p5)
    m1 = addBit(addBit(addBit(p1, p2), addBit(p3, p4)), p5);
    # puts modifyBits(m1,32);
    return m1;
end

def temporary2
    p1 = sigma($compressArray[0],0,true);
    p2 = majority($compressArray[0], $compressArray[1],$compressArray[2]);
    m2 = addBit(p1,p2);
    # puts modifyBits(m2,32);
    return m2;
end

# temporary1 0