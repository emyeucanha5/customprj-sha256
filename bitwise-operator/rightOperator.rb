require_relative("./modifyBits");


def rightRotate(b, i)
    ret = ((((b >> i) & 2**32-1)|(( b << 32-i) & 2**32-1)) & 2**32-1);
    # puts "Right rotate: " + modifyBits(ret, 32)
    return ret;
end

def rightShift (b,i)
    ret = (b >> i);
    # puts "RightShift: " + modifyBits(ret,32);
    return ret
end
# rightRotate(0b01111111111111111111111111111111,1);




