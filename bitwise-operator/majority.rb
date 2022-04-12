require_relative("./rightRotate");
require_relative("./rightShift");
require_relative("./xorThreeBits");
require_relative("./addBits");
require_relative("./modifyBits");
require_relative("./hashString");

def majority(x,y,z)
    x1= (x & y);
    x2 = (x & z);
    x3 = (y & z);
    ret = xorThreeBits(x1,x2,x3)
    # puts ("Majority: " + modifyBits(ret,32));
    return ret;
end

# majority(0b00000000111111110000000011111111,0b00000000000000001111111111111111,0b11111111111111110000000000000000);