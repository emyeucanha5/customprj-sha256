require_relative("./rightRotate");
require_relative("./rightShift");
require_relative("./xorThreeBits");
require_relative("./addBits");
require_relative("./modifyBits");
require_relative("./hashString");

def usigma1(x)
    x1 = rightRotate(x,6);
    x2 = rightRotate(x,11);
    x3 = rightRotate(x,25);
    ret = xorThreeBits(x1,x2,x3);
    # puts ("Usigma1: " + modifyBits(ret,32));
    return ret;
end

# usigma1(0b00000000000000000011111111111111);