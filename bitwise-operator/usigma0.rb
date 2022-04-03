require_relative("./rightRotate");
require_relative("./rightShift");
require_relative("./xorThreeBits");
require_relative("./addBits");
require_relative("./modifyBits");
require_relative("./hashString");

def usigma0(x)
    x1 = rightRotate(x,2);
    x2 = rightRotate(x,13);
    x3 = rightRotate(x,22);
    ret = xorThreeBits(x1,x2,x3);
    # puts ("Usigma0: " + modifyBits(ret,32));
    return ret;
end

# usigma0(0b00000000000000000011111111111111);