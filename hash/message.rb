require_relative "./initHash";
require_relative "../bitwise-operator/index";
require_relative "../cubeRoots/cubeRootOfPrime"
require_relative "../function/divideToSixteenwords"


# function



def message1 i, w
    p1 = usigma1($compressArray[4])
    p2 = makeDecision($compressArray[4],$compressArray[5],$compressArray[6])
    p3 = $compressArray[7];
    p4 = $randNum[i];
    p5 = w[i];
    # puts changeBitsToDecimal(p5)
    tmp1 = addBit(p1, p2);
    tmp2 = addBit(p3, p4);
    tmp3 = addBit(tmp1, tmp2);
    m1 = addBit(tmp3, p5);
    # puts modifyBits(m1,32);
    return m1;
end

def message2
    p1 = usigma0($compressArray[0]);
    p2 = majority($compressArray[0], $compressArray[1],$compressArray[2]);
    m2 = addBit(p1,p2);
    # puts modifyBits(m2,32);
    return m2;
end

# message1 0