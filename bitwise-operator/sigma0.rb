require_relative("./rightRotate");
require_relative("./rightShift");
require_relative("./xorThreeBits");
require_relative("./addBits");
require_relative("./modifyBits");
require_relative("./hashString");


def sigma0(x)
    x1 = rightRotate(x, 7)
    x2 = rightRotate(x, 18)
    x3 = rightShift(x,3)
    ret = xorThreeBits(x1,x2,x3);
    # puts "Sigma0: " + changeDecimaltoBits(ret);
    return ret
end

# sigma0(12)