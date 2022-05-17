require_relative("./rightOperator.rb");
require_relative("./add_and_xor.rb");
require_relative("./modifyBits");

def majority(x,y,z)
    ret = xorThreeBits((x & y),(x & z),(y & z))
    return ret;
end


def choice(x,y,z)
    ret = (x & y) ^ (~(x) & z);
    return ret;
end

