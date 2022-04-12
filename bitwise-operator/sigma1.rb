require_relative("./rightRotate");
require_relative("./rightShift");
require_relative("./xorThreeBits");
require_relative("./addBits");
require_relative("./modifyBits");
require_relative("./hashString");

def sigma1(x)
    x1 = rightRotate(x,17);
    x2 = rightRotate(x, 19);
    x3 = rightShift(x, 10);
    ret = xorThreeBits(x1,x2,x3);
    # puts ("Sigma1: " + modifyBits(ret,32));
    return ret;
end

# sigma1(0b00000000000000000011111111111111);