require_relative("./rightRotate");
require_relative("./rightShift");
require_relative("./xorThreeBits");
require_relative("./addBits");
require_relative("./modifyBits");
require_relative("./hashString");

def makeDecision(x,y,z)
    left = (x & y);
    right = (~(x) & z);
    ret = left ^ right;
    # puts ("Make decision: " + modifyBits(ret,32));
    return ret;
end

# makeDecision(0b00000000111111110000000011111111,0b00000000000000001111111111111111,0b11111111111111110000000000000000);